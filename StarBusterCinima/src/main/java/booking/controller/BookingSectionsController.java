package booking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import booking.model.QuickBookingService;

@RestController
@RequestMapping(value = "/booking/controller/bookingSections.controller")
public class BookingSectionsController {

	
	@Autowired
	QuickBookingService quickBookingService;
	
	@RequestMapping(method = RequestMethod.GET, value = { "/{selectedDate}" }, produces = "text/html;charset=UTF-8")
	public String method(@PathVariable String selectedDate, Model model) {
		

//			System.out.println("(BookingSectionsController)"+selectedDate);
		
			//比對傳進來的日期 送出符合日期的時間
			List<String> timesResult = quickBookingService.toTimes(selectedDate);
//			System.out.println("(BookingSectionsController)"+timesResult);
//			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create(); 
			Gson gson = new Gson();
			String str = gson.toJson(timesResult);
			System.out.println("(BookingSectionsController)"+"傳進日期後回傳時間="+str);
			return str;
//		}
//		return "controllerError";
	}
}