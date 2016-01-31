package gr.hua.springmvc.controller.models;

import javax.validation.constraints.Size;

public class Event {
	private int id;
	@Size(min=2, max=45) 
	private String date;
	@Size(min=2, max=45) 
	private String name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
    public String toString(){
        return "{ID="+id+",Name="+name+",Date="+date+"}";
    }
	
}