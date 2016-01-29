package gr.hua.springmvc.controller;



import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.http.HttpStatus;

@ResponseStatus(value = HttpStatus.NOT_FOUND, reason = "This employee is not found in the system")
public class AppointNotFoundException extends RuntimeException {
	private static final long serialVersionUID = 100L;
}