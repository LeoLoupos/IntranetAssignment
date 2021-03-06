package gr.hua.springmvc.controller.models;

import javax.validation.constraints.Size;

public class Request {
	private int id;
	private int amka;
	@Size(min=2, max=45) 
	private String name;
	@Size(min=2, max=45) 
	private String surname;
	@Size(min=2, max=45) 
	private String tameio;
	@Size(min=2, max=45) 
	private String email;
	private String username;
	private String password;
	private String approve;
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAmka() {
		return amka;
	}
	public void setAmka(int amka) {
		this.amka = amka;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public String getTameio() {
		return tameio;
	}
	public void setTameio(String tameio) {
		this.tameio = tameio;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getApprove() {
		return approve;
	}
	public void setApprove(String approve) {
		this.approve = approve;
	}
	

	@Override
    public String toString(){
        return "{ID="+id+",Name="+name+",SurName="+surname+"Tameio="+tameio+"email="+email+"approve"+approve+"}";
    }
	
	
}