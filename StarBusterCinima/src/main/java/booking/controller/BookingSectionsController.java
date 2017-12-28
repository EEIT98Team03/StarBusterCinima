package booking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

import booking.model.QuickBookingService;

@RestController
@RequestMapping(value = "/booking/controller/bookingSections.controller")
public class BookingSectionsController {

	
	@Autowired
	QuickBookingService quickBookingService;
	
	@RequestMapping(method = RequestMethod.GET, value = { "/{selectedDate}" }, produces = "text/html;charset=UTF-8")
	public String method(@PathVariable String selectedDate, Model model) {
		 selectedDate = selectedDate.replace(" ", "")+")";
		 System.out.println(selectedDate);
		 
		//如果傳進來的是日期
//		if (param.indexOf("日") > 0 && "filmname"!=param) {
//			System.out.println("傳來的是日期  param是= "+param);
			
			//比對傳進來的日期 送出符合日期的時間
			List<String> timesResult = quickBookingService.toTimes(selectedDate);
			Gson gson = new Gson();
			String str = gson.toJson(timesResult);
//			System.out.println("傳進日期後回傳時間="+str);
			return str;
//		}
//		return "controllerError";
	}
}