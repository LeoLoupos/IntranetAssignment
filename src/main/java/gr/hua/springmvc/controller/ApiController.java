package gr.hua.springmvc.controller;

import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.http.HttpStatus;

import gr.hua.springmvc.controller.models.Appointment;
import gr.hua.springmvc.controller.models.AppointmentDao;
import gr.hua.springmvc.controller.models.Email;
import gr.hua.springmvc.controller.models.EmailDao;
import gr.hua.springmvc.controller.models.Event;
import gr.hua.springmvc.controller.models.EventDao;
import gr.hua.springmvc.controller.models.ReqAppoint;
import gr.hua.springmvc.controller.models.ReqAppointDao;
import gr.hua.springmvc.controller.models.Request;
import gr.hua.springmvc.controller.models.RequestDao;

@Controller
public class ApiController {
	
	ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring-data.xml");
	AppointmentDao appDao = ctx.getBean("AppointmentDao", AppointmentDao.class);
	ReqAppointDao reqDao = ctx.getBean("ReqAppointDao", ReqAppointDao.class);
	EventDao eventDao = ctx.getBean("EventDao", EventDao.class);
	EmailDao emailDao = ctx.getBean("EmailDao", EmailDao.class);
	RequestDao requestDao = ctx.getBean("RequestDao", RequestDao.class);

	//Api controller to handle requests in/outside the website
	@RequestMapping(value = "/allevents", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody List<Event> getEventInJSON() {
	List<Event> evts = eventDao.getAll();
   	 return evts;
    }
	
	
	
	@RequestMapping(value = "/req_appointment/{amka}", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody Appointment getReqAppointInJSON(@PathVariable Integer amka) throws AppointNotFoundException {
		Appointment req = appDao.getByAmka(amka);

    if (req == null) {
            throw new AppointNotFoundException();
    }
     return req;
	}
	
	@RequestMapping(value = "/req_appointment/add", method = RequestMethod.POST, produces = "application/json")
	@ResponseStatus(HttpStatus.CREATED) 
	public @ResponseBody ReqAppoint insertReqAppointInJSON(@RequestBody ReqAppoint req)  {
	reqDao.save(req);
   	 return req;
    }
	
	
	
	@RequestMapping(value = "/emails/add", method = RequestMethod.POST, produces = "application/json")
	@ResponseStatus(HttpStatus.CREATED) 
	public @ResponseBody Email insertEmailInJSON(@RequestBody Email eml)  {
		emailDao.save(eml);
   	 return eml;
    }
	
	///////two types of adding
	@RequestMapping(value = "/request_user/add", method = RequestMethod.POST, produces = "application/json")
	@ResponseStatus(HttpStatus.CREATED) 
	public @ResponseBody Request insertRequestInJSON(@RequestBody Request req)  {
		requestDao.save(req);
   	 return req;
    }
	

	@RequestMapping(value = "/emails/addparam", method = RequestMethod.POST, produces = "application/json")
	@ResponseStatus(HttpStatus.CREATED) 
	public @ResponseBody Email paraminsertemailInJSON(@RequestParam("name") String name,@RequestParam("email") String email )  {
	Email eml=new Email();
	eml.setName(name);
	eml.setEmail(email);
	emailDao.save(eml);
			
   	 return eml;
    }
	
	@RequestMapping(value = "/request/addparam", method = RequestMethod.POST, produces = "application/json")
	@ResponseStatus(HttpStatus.CREATED) 
	public @ResponseBody Request paraminsertreqInJSON(@RequestParam("amka") String amka,@RequestParam("name") String name,@RequestParam("surname") String surname,@RequestParam("tameio") String tameio,@RequestParam("email") String email )  {
	
	Request req = new Request();
	int amka1 = Integer.parseInt(amka);
	req.setAmka(amka1);
	req.setName(name);
	req.setSurname(surname);
	req.setTameio(tameio);
	req.setEmail(email);
	requestDao.save(req);
   	 return req;
    }
	
	@RequestMapping(value = "/req_appoinement/addparam", method = RequestMethod.POST, produces = "application/json")
	@ResponseStatus(HttpStatus.CREATED) 
	public @ResponseBody ReqAppoint paraminsertappInJSON(@RequestParam("amka") String amka,@RequestParam("name") String name,@RequestParam("surname") String surname,@RequestParam("tameio") String tameio,@RequestParam("ejetash") String ejetash,@RequestParam("emergency") String eme )  {
	
		ReqAppoint req = new ReqAppoint();
	int amka1 = Integer.parseInt(amka);
	req.setAmka(amka1);
	req.setName(name);
	req.setSurname(surname);
	req.setTameio(tameio);
	req.setEjetash(ejetash);
	int eme1 = Integer.parseInt(eme);

	req.setEmergency(eme1);
	reqDao.save(req);
   	 return req;
    }
}


