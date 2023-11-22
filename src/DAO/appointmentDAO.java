package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;



import Model.Appointment;



public class appointmentDAO implements InterfaceAppoint {

	
	public List<Appointment> getAll() {
	    try {
	        Connection maconnexion = dbc.createConnection();
	        java.sql.PreparedStatement ps = maconnexion.prepareStatement("SELECT * FROM appointment ORDER BY id DESC");
	        ResultSet rs = ps.executeQuery();

	        ArrayList<Appointment> appointments = new ArrayList<>();
	        while (rs.next()) {
	            int id = rs.getInt(1);
	            String date = rs.getString(2);
	            String field3 = rs.getString(3);
	            String field4 = rs.getString(4);
	            String field5 = rs.getString(5);
	            String field6 = rs.getString(6);

	            Appointment appointment = new Appointment(id, date, field3, field4, field5, field6);
	            appointments.add(appointment);
	        }

	        return appointments;
	    } catch (Exception e) {
	        e.printStackTrace();
	        return null;
	    }
	}




	
	
	public int addAppointment(Appointment appointment) {
	    String selectQuery = "SELECT * FROM appointment WHERE date = ? AND service = ?";
	    String insertQuery = "INSERT INTO appointment (name, email, service, date, time) VALUES (?, ?, ?, ?, ?)";

	    try (Connection maconnexion = dbc.createConnection();
	         PreparedStatement selectStatement = maconnexion.prepareStatement(selectQuery);
	         PreparedStatement insertStatement = maconnexion.prepareStatement(insertQuery)) {

	        // Set the values for the select statement placeholders
	        selectStatement.setString(1, appointment.getDate());
	        selectStatement.setString(2, appointment.getService());

	        ResultSet resultSet = selectStatement.executeQuery();

	        while (resultSet.next()) {
	            String existingTime = resultSet.getString("time");

	            if (isTimeGapLessThan30Minutes(existingTime, appointment.getTime())) {
	                // A conflicting appointment with a time gap less than 30 minutes already exists in the database
	                // Return a specific value or throw an exception to indicate the conflict
	                System.out.println("An appointment with the same date, time, and service already exists within a 30-minute gap.");
	                return 0; // Conflict value
	            }
	        }

	        // Check if the appointment time has already passed
	        LocalDate currentTime = LocalDate.now();
	        LocalDate newAppointmentDate = LocalDate.parse(appointment.getDate(), DateTimeFormatter.ofPattern("MM/dd/yyyy"));


	        if (newAppointmentDate.isBefore(currentTime)) {
	            // The appointment time has already passed
	            System.out.println("Cannot add an appointment with a time that has already passed.");
	            return 1; // Time passed value
	        } else {
	            // No conflicting record found and the appointment time has not passed, proceed with the insertion
	            insertStatement.setString(1, appointment.getName());
	            insertStatement.setString(2, appointment.getEmail());
	            insertStatement.setString(3, appointment.getService());
	            insertStatement.setString(4, appointment.getDate());
	            insertStatement.setString(5, appointment.getTime());

	            insertStatement.executeUpdate();
	            System.out.println("Appointment added successfully.");
	            return -1; // Success value
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	        // Handle any exceptions here
	    }

	    return -2; // Error value
	}


		


	private boolean isTimeGapLessThan30Minutes(String existingTime, String newTime) {
	    // Convert existing time and new time to LocalTime objects
	    LocalTime existing = LocalTime.parse(existingTime, DateTimeFormatter.ofPattern("h:mm a"));
	    LocalTime newAppointment = LocalTime.parse(newTime, DateTimeFormatter.ofPattern("h:mm a"));

	    // Calculate the time difference in minutes
	    long minutes = ChronoUnit.MINUTES.between(existing, newAppointment);

	    // Check if the time gap is less than 30 minutes
	    return Math.abs(minutes) < 30;
	}


	
	public Appointment findAppointment(int id) {
		try {
	        Connection db = dbc.createConnection();
	        java.sql.PreparedStatement ps = db.prepareStatement("SELECT * FROM appointment WHERE id=?");
	        ps.setInt(1, id);
	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {
	            int Idu = rs.getInt("id");
	            String name = rs.getString("name");
	            String email = rs.getString("email");
	            String pswd = rs.getString("email");
	            String pswd1 = rs.getString("email");
	            String pswd2 = rs.getString("email");
	            return new Appointment(Idu, name, email, pswd1, pswd1, pswd1);
	        } 
	        else
	        {
	            return null; 
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return null; 
	    }
	}

	
	public boolean deleteAppointment(int id) {
		 try {
		        Connection db = dbc.createConnection();
		        java.sql.PreparedStatement ps = db.prepareStatement("DELETE FROM appointment WHERE id=?");
		        ps.setInt(1, id);
		        int rowsDeleted = ps.executeUpdate();
		        return (rowsDeleted > 0);
		    } 
		 catch (SQLException e)
		 {
		        e.printStackTrace();
		        return false;
		 }
	}


	public boolean editAppointment(Appointment appointment) {
		try {
	        Connection db = dbc.createConnection();
	        java.sql.PreparedStatement ps = db.prepareStatement("update appointment set name=?, email=?, service=?, date=?, time=?  WHERE id=?");
	        ps.setString(1, appointment.getName());
	        ps.setString(2, appointment.getEmail());
	        ps.setString(3, appointment.getService());
	        ps.setString(4, appointment.getDate());
	        ps.setString(5, appointment.getTime());
	        ps.setInt(6, appointment.getId());
	        int rowsUpdated = ps.executeUpdate();
	        return (rowsUpdated > 0);
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return false;
	    }
	}
	
	
	

}
