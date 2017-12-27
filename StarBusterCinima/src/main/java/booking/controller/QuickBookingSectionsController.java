package booking.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

import booking.model.QuickBookingDAO;
import booking.model.QuickBookingService;
import films.model.FilmSectionBean;
import javassist.tools.framedump;

@RestController
@RequestMapping(value = "/booking/controller/quickBookingSections.controller")

public class QuickBookingSectionsController {

	@Autowired
	QuickBookingService quickBookingService;
	
	@RequestMapping(method = RequestMethod.GET, value = { "/{param}" }, produces = "text/html;charset=UTF-8")
	public String method(@PathVariable String param, Model model) {
		 System.out.println(param+"123");

		//如果傳進來的是日期
		if (param.indexOf("日") > 0 && "filmname"!=param) {
//			System.out.println("傳來的是日期  param是= "+param);
			
			//比對傳進來的日期 送出符合日期的時間
			List<String> timesResult = quickBookingService.toTimes(param);
			Gson gson = new Gson();
			String str = gson.toJson(timesResult);
//			System.out.println("傳進日期後回傳時間="+str);
			return str;
			
			
			
		//如果傳進來的是電影名稱
		} else if("filmname"!=param){
//			System.out.println("傳來的是電影名稱  param是= "+param);
			
			//此方法用傳來的電影名稱找出電影ID再用用電影ID找出該電影的場次
			List<String> datesResult = quickBookingService.toDates(param);
			
			Gson gson = new Gson();
			String str = gson.toJson(datesResult);
//			System.out.println("傳進電影名稱後回傳日期="+str);
			return str;
		}
		return "controllerError";
	}

}
