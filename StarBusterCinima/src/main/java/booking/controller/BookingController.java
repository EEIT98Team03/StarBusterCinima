package booking.controller;


import java.text.SimpleDateFormat;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.ui.Model;

import booking.model.BookingService;
import booking.model.TicketOrderBean;

@Controller
@RequestMapping("/booking/booking.controller")
@SessionAttributes()
public class BookingController {

	@InitBinder
	public void initialize(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(java.util.Date.class, "udate",
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
		}
	
	@Autowired
	BookingService service;
	
	@RequestMapping(method=RequestMethod.GET)
	public String method(TicketOrderBean bean,Model model) {
//		System.out.println(bean);
		String number;
//		String ticketOrderID= bean.getTicketOrderID();
		
		

		
		
		TicketOrderBean result = service.insertOrder(bean);
		
		
		return "booking.success";
	}

	
}
