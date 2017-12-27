package booking.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONValue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.annotation.RequestScope;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.nimbusds.oauth2.sdk.Request;

import booking.model.QuickBookingService;
import films.model.FilmBean;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
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

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create(); 
//		Gson gson = new Gson();
		String str = gson.toJson(result);
		
//		System.out.println(str);
		return str;
		
	}
}
