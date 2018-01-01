package booking.controller;


import java.sql.Timestamp;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

import booking.model.BookingService;

@RestController
@RequestMapping(value = "/booking/controller/processingseats.controller")
public class ProcessingSeatsController {

	@Autowired
	BookingService bookingService;

	
	@RequestMapping(method=RequestMethod.GET, produces = "text/html;charset=UTF-8",  value = { "/{param}" })
	public String method(@PathVariable String param, Model model){
//		2018-01-06 10:30:00.0                         	            1月9日(星期二       ,     16:00
//		Timestamp timestamp = bookingService.orderFilmsectiontime(filmSectionDate,filmSectionTime);
//		System.out.println("test: "+param);
//		param.split(",");
//		System.out.println(param.split(",")[0]);
		
		Timestamp timestamp = bookingService.orderFilmsectiontime(param.split(",")[0],param.split(",")[1]);
		int filmId = Integer.parseInt(param.split(",")[2]);
		System.out.println("(ProcessingSeatsController)  ->"+timestamp);
		
//		System.out.println("timestamp.toString() =>"+timestamp.toString());
		
		int filmSectionId = bookingService.makeSectionId(filmId, timestamp);
		Map<String,String> result = bookingService.pickSeats(filmSectionId);
//		result.put("roomSeats", rs.getString("roomSeats"));
//		result.put("unavailableSeats", rs.getString("unavailableSeats"));
		System.out.println("(ProcessingSeatsController)->"+result);
		
		
		Gson gson = new Gson();
		String str = gson.toJson(result);
		
		
		return str;
	}
}
