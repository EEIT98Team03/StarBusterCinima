package booking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value = "/booking/controller/ticketorder.controller")
public class TicketOrderController {
	
	
	@RequestMapping(method=RequestMethod.GET, produces = "application/json")
	public String method(String filmId,
			String ticketOrderDate,
			String filmSectionDate,
			String filmSectionTime,
			String ticketCount,
			String seatNumber,
			String ticketType,
			String ticketOrderPrice, 
			Model model) 
	{
		System.out.println( filmId
				+" / "+ ticketOrderDate
				+" / "+ filmSectionDate
				+" / "+ filmSectionTime
				+" / "+ ticketCount
				+" / "+ seatNumber
				+" / "+ ticketOrderPrice );
		
		
		
		
		
		
		
		
		return "";
	}
}
