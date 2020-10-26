package mvctwo;

public class Student {

	 private String firstname;
	 private String lastname;
	 private String emil;
	 
	public Student(String firstname, String lastname, String emil) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.emil = emil;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmil() {
		return emil;
	}

	public void setEmil(String emil) {
		this.emil = emil;
	}
	 
	 
}
