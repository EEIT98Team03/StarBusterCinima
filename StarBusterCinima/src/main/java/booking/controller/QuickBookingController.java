package booking.controller;

import java.util.List;


import javax.servlet.http.HttpServletRequest;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import com.google.gson.Gson;

import org.springframework.web.context.annotation.RequestScope;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.nimbusds.oauth2.sdk.Request;

import booking.model.QuickBookingService;
import films.model.FilmBean;



import spring.PrimitiveNumberEditor;


@ResponseBody
@Controller
@RequestMapping(value="/booking/controller/quickBooking.controller")
public class QuickBookingController {

	
	
	@Autowired
	QuickBookingService quickBookingService;
	
	@RequestMapping(method=RequestMethod.GET,produces = "text/html;charset=UTF-8")


	public String method( Model model,HttpServletRequest request ) {
//		System.out.println("test quick booking");
//		session.removeAttribute("filmBean");
//		request.getSession().removeAttribute("filmBean");
		List<FilmBean> result = quickBookingService.selectAllfilms();


		Gson gson = new Gson();
		String str = gson.toJson(result);
		
//		System.out.println(str);
		return str;
		
		
////		System.out.println("test quick booking");
//		List<FilmBean> filmResult = quickBookingService.selectAllfilms();
//		List<FilmSectionBean> sectionResult = quickBookingService.selectAllSestions();
////		System.out.println((result.get(0)).getClass().getName());
////		System.out.println(result.get(0).getUdate());
//		Gson gson = new Gson();
//		String filmResultStr = gson.toJson(filmResult);
////		System.out.println(filmResultStr);
//		String sectionResultStr = gson.toJson(sectionResult);
//		String arr[] = {filmResultStr, sectionResultStr};
//		String arrayString = Arrays.toString(arr);
//		System.out.println(arrayString);
		
		
//		JSONObject jobj = new JSONObject();
//		for(int i = 0; i<result.size();i++) {
//			jobj.put("bean"+i, result.get(i));
//			System.out.println(jobj.get("bean"+i));
//		}
//		System.out.println("jobj= "+jobj);
		
//		System.out.println(result.get(0));
//		JSONObject.form
//		JSONArray arr =JSONArray.fromObject((Object)result);
//		JSONObject obj =JSONObject.fromObject((Object)result);
//		String jsonString = JSONValue.toJSONString(result);
//		System.out.println(arr);
//		System.out.println(jsonString);
//		model.addAttribute("jsonFilmsData",jsonString);
		

	}
}
