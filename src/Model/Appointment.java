package Model;

public class Appointment {
	private int id;
	private String name;
	private String email;
	private String service;
	private String date;
	private String time;
	

	
public Appointment(String name, String email) {
		super();
		this.name = name;
		this.email = email;
	}
public Appointment(String name, String email, String service, String date, String time) {
	super();	
	this.name = name;
		this.email = email;
		this.service = service;
		this.date = date;
		this.time = time;
	}
public Appointment(int id, String name, String email, String service, String date, String time) {
	super();
	this.id = id;
	this.name = name;
	this.email = email;
	this.service = service;
	this.date = date;
	this.time = time;
}
	public Appointment() {
	super();	
	}

	public int getId() {
		return id;
	}
	public void setId(int id_user) {
		this.id = id_user;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getService() {
		return service;
	}
	public void setService(String pswd) {
		this.service = pswd;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
}
