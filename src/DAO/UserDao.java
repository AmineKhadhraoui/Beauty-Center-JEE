package DAO;

import java.sql.*;

import java.util.ArrayList;
import java.util.List;

import Model.Appointment;
import Model.Contact;
import Model.User;
import Model.reclamation;
import Model.Service;

public class UserDao  {

	
	public static void addUser(User user)
	{
		String sql="INSERT INTO user(name , email , password) Values (?,?,?)";
		try (
			Connection maconnexion=dbc.createConnection();
			PreparedStatement stmt = maconnexion.prepareStatement(sql)){
			stmt.setString(1, user.getName());
			stmt.setString(2, user.getEmail());
			stmt.setInt(3, user.getPassword());
			stmt.executeUpdate();
			}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		
	}


	public List<User> getAll() {
		try {
			Connection maconnexion = dbc.createConnection();
			java.sql.PreparedStatement ps=maconnexion.prepareStatement("Select * from user");
			ResultSet rs = ps.executeQuery();
			
			ArrayList<User> users = new ArrayList();
			while (rs.next())
			{
				User user = new User (rs.getInt(1), rs.getString(2),rs.getString(3),rs.getInt(4));
				users.add(user);
			}
			return users;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	
	public User findUser(int id) {
		try {
			Connection maconnexion =dbc.createConnection();
			java.sql.PreparedStatement ps=maconnexion.prepareStatement("Select From user  where idUser = :id");
			ResultSet rs = ps.executeQuery();
		}
		catch (SQLException e){
			e.printStackTrace();
		}
		return null;
	}


	public boolean deleteUser(int id) {
		try {
			Connection maconnexion = dbc.createConnection();
			java.sql.PreparedStatement ps=maconnexion.prepareStatement("Delete FROM user where idUser=:id");
			ResultSet rs = ps.executeQuery();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public void addContact(Contact cont) {
		String sql = "INSERT INTO contact(name,email,subject,message) VALUES (?, ?, ?, ?)";
		try(
				Connection cnx = dbc.createConnection();
				PreparedStatement stmt = cnx.prepareStatement(sql);
				)
		{
			stmt.setString(1, cont.getName());
			stmt.setString(2, cont.getEmail());
			stmt.setString(3, cont.getSubject());
			stmt.setString(4, cont.getMessage());


			
			stmt.executeUpdate();
				}
		catch(SQLException e)
		{
			e.printStackTrace();
		}	
	}
	
	public void addReclamation(reclamation rec) {
		String sql = "INSERT INTO reclamation(name,email,services,subject,message) VALUES (?, ?, ?, ?, ?)";
		try(
				Connection cnx = dbc.createConnection();
				PreparedStatement stmt = cnx.prepareStatement(sql);
				)
		{
			stmt.setString(1, rec.getName());
			stmt.setString(2, rec.getEmail());
			stmt.setString(3, rec.getServices());			
			stmt.setString(4, rec.getSubject());
			stmt.setString(5, rec.getMessage());


			
			stmt.executeUpdate();
				}
		catch(SQLException e)
		{
			e.printStackTrace();
		}	
	}
	public boolean DeleteReclamation(int id) {
		 try {
		        Connection db = dbc.createConnection();
		        java.sql.PreparedStatement ps = db.prepareStatement("DELETE FROM reclamation WHERE id=?");
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
	
	public List<reclamation> getReclamation() {
	    try {
	        Connection maconnexion = dbc.createConnection();
	        java.sql.PreparedStatement ps = maconnexion.prepareStatement("SELECT * FROM reclamation ORDER BY id DESC");
	        ResultSet rs = ps.executeQuery();

	        ArrayList<reclamation> recs = new ArrayList<>();
	        while (rs.next()) {
	            int id = rs.getInt(1);
	            String name = rs.getString(2);
	            String email = rs.getString(3);
	            String services = rs.getString(4);
	            String subject = rs.getString(5);
	            String message = rs.getString(6);

	            reclamation rec = new reclamation(id, name, email, services, subject, message);
	            recs.add(rec);
	        }

	        return recs;
	    } catch (Exception e) {
	        e.printStackTrace();
	        return null;
	    }
	}
	
	public static void addService(Service ser) {
		String sql = "INSERT INTO service(name,photo) VALUES (?, ?)";
		try(
				Connection cnx = dbc.createConnection();
				PreparedStatement stmt = cnx.prepareStatement(sql);
				)
		{
			
			stmt.setString(1, ser.getName());
			stmt.setString(2, ser.getPhoto());

			
			stmt.executeUpdate();
				}
		catch(SQLException e)
		{
			e.printStackTrace();
		}	
	}
	
}
