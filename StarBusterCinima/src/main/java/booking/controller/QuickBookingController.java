package booking.controller;

import java.util.List;

import org.json.simple.JSONValue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import booking.model.QuickBookingService;
import films.model.FilmBean;
import spring.PrimitiveNumberEditor;


@Controller
@RequestMapping(value="/booking/controller/quickBooking.controller")
public class QuickBookingController {

//	@InitBinder
//	public void initialize(WebDataBinder webDataBinder) {
//		webDataBinder.registerCustomEditor(int.class,new PrimitiveNumberEditor(java.lang.Integer.class, true));
//	}
	
	@Autowired
	QuickBookingService quickBookingService;
	
	@RequestMapping(method=RequestMethod.GET)
	public String method( Model model ) {
		System.out.println("test quick booking");
		List<FilmBean> result = quickBookingService.selectAllfilms();
		String jsonString = JSONValue.toJSONString(result);
//		System.out.println(jsonString);
		model.addAttribute("jsonFilmsData",result);
		return "quickBooking";
	}
}
//net.sf.json.JSONObject jo =JSONObject.fromObject((Object)result); 
//JSONObject jsonObject = JSONObject.fromObject(new FilmBean());
