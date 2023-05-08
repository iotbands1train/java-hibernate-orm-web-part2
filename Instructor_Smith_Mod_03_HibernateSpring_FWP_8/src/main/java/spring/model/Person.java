package spring.model;

public class Person {
	private Long id;
	private String fname;
	private String lname;
	private String street;
	private String city;
	private String state;
	private String zip;
	private String phone;
	public Person(Long id,String fname, String lname, 
			String street, String city, String state, String zip,String phone) {
		super();
		this.id=id;
		this.fname = fname;
		this.lname = lname;
		this.street = street;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.phone = phone;
	}
	public Person() {
		// TODO Auto-generated constructor stub
	}
	 
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	} 
	@Override
	public String toString() {
		return "Person [id=" + id + ", fname=" + fname + ", lname=" + lname + ", street=" + street + ", city=" + city
				+ ", state=" + state + ", zip=" + zip + ", type=" + phone + "]";
	}
	
	public String toPerson() {
		return "Person [id=" + id + ", fname=" + fname + ", lname=" + lname + ", street=" + street + ", city=" + city
				+ ", state=" + state + ", zip=" + zip + ", type=" + phone + "]";
	}
	 
	
	
	
	

}
