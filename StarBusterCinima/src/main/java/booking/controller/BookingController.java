package booking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/booking/booking.controller")
@SessionAttributes()
public class BookingController {

	
	@RequestMapping(method=RequestMethod.GET)
	public void method() {
		System.out.println("booking");
	}

}
