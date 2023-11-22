package Model;

public class User {
	private int idUser;
	private String name;
	private String email;
	private int password;
	

	public User(String email, int password) {
		super();
		this.email = email;
		this.password = password;
	}
	

	public User(String name, String email, int password) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
	}


	public User(int idUser, String name, String email) {
		super();
		this.idUser = idUser;
		this.name = name;
		this.email = email;
	}
	
	public User( String name, String email) {
		super();
		this.name = name;
		this.email = email;
	}
	

	public User(int idUser, String name, String email, int password) {
		super();
		this.idUser = idUser;
		this.name = name;
		this.email = email;
		this.password = password;
	}


	public User() {
		super();
	}

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
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


	public int getPassword() {
		return password;
	}


	public void setPassword(int password) {
		this.password = password;
	}

}
