package booking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import booking.model.StartBookingDAO;
import booking.model.StartBookingService;
import films.model.FilmBean;

@Controller
@RequestMapping("/booking/startbooking.controller")
public class StartBookingController {
	
	@Autowired
	StartBookingService starBookingService;
	@Autowired
	StartBookingDAO startBookingDAO;
	
	@RequestMapping(method=RequestMethod.GET)
	public String method(int filmId,Model model) {
//		System.out.println("test");
//		System.out.println(filmId);
		System.out.println("000");
		if(filmId!=0) {
//			FilmBean result = starBookingService.selectFilm(filmId);
//			System.out.println(result);
			
			
			
//			if(result!=null && result.getFilmId()!=0) {
//				System.out.println("222");
//				model.addAttribute("getFilmId",result.getFilmId());
//				return "booking";
//			}
		
		}
		
		return "booking";
		
	}
}
