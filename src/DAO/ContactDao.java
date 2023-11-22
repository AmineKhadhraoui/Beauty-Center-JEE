package DAO;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import Model.Contact;
import Model.User;
public class ContactDao {
	
	public List<Contact> getAll() {
		try {
			Connection maconnexion = dbc.createConnection();
			java.sql.PreparedStatement ps=maconnexion.prepareStatement("Select * from contact");
			ResultSet rs = ps.executeQuery();
			
			ArrayList<Contact> contacts = new ArrayList();
			while (rs.next())
			{
				Contact contact = new Contact (rs.getInt(1), rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
				contacts.add(contact);
			}
			return contacts;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	
	

	public boolean deleteContact(int id) {
		try {
			Connection maconnexion = dbc.createConnection();
			java.sql.PreparedStatement ps=maconnexion.prepareStatement("Delete FROM contact where idU=:id");
			ResultSet rs = ps.executeQuery();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return false;
	}

}
