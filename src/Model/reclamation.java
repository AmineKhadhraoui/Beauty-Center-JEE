package Model;

public class reclamation {
	public int id;
	public String name;
	public String email;
	public String services;
	public String subject;
	public String message;
	
	
	
	public reclamation(int id, String name, String email, String services, String subject, String message) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.services = services;
		this.subject = subject;
		this.message = message;
	}
	public reclamation(String name, String email, String services, String subject, String message) {
		super();
		this.name = name;
		this.email = email;
		this.services = services;
		this.subject = subject;
		this.message = message;
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
	public String getServices() {
		return services;
	}
	public void setServices(String services) {
		this.services = services;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}
