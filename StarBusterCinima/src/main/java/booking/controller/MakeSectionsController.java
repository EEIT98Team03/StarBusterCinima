package booking.controller;

import java.sql.Timestamp;
import java.util.List;

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
import com.google.gson.GsonBuilder;

import booking.model.QuickBookingService;
import films.model.FilmBean;
import films.model.FilmSectionBean;
import films.model.FilmService;

//@RestController
@ResponseBody
@Controller
@RequestMapping(value="booking/controller/makeSections.controller")
public class MakeSectionsController {
	
	@Autowired
	SectionsGetController sectionsGetController;
	
	@Autowired
	QuickBookingService quickBookingService;

	@Autowired
	FilmService filmService;
	
	
	
	@RequestMapping(method = RequestMethod.GET, produces = "application/json",value="produceDate")
	public String method( String paramFilmId, Model model ,HttpServletRequest request) {
		
		//點擊訂票鈕之後接這裡
		
		
		System.out.println("(MakeSectionsController) get the film's id -> : "+paramFilmId);
//		System.out.println("123");
		String str="";
		if(paramFilmId!=null && paramFilmId!="") {
			int filmId = Integer.parseInt(paramFilmId);
			FilmBean filmBean = filmService.selectById(filmId);
			request.getSession().setAttribute("bookingFilmBean", filmBean);
			
//			List<Timestamp> result = quickBookingService.selectFilmSectionTimeByFilmId(filmId);
//			List<Timestamp> dates = quickBookingService.selectThisFilmsSections(filmBean.getFilmName());
			
			List<String> datesResult = quickBookingService.toDates(String.valueOf(filmBean.getFilmId()));
			System.out.println("0104test: 日期controller"+datesResult);
			
//			System.out.println("filmBean -> "+filmBean);
//			System.out.println("datesResult -> "+datesResult);
//			request.getSession().setAttribute("datesResult", datesResult);
			request.getSession().setAttribute("datesResult", datesResult);
			
			
//			request.getSession().setAttribute("", arg1);
			
//			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create(); 
//			str = gson.toJson(result);
			return "booking";
		}
		return null;
//		sectionsGetController.setParamFilmId(paramFilmId);
	}
	
	
	
	
//	@RequestMapping(method = RequestMethod.GET, produces = "application/json",value="produceTime")
//	public String produceTime( String paramDate, Model model ,HttpServletRequest request) {

//			System.out.println("AAA"+paramDate);
//			String s = "1111111";
//			if (param.indexOf("日") > 0 && "filmname"!=param) {
//	//		System.out.println("傳來的是日期  param是= "+param);
//			
//			//比對傳進來的日期 送出符合日期的時間
//			List<String> timesResult = quickBookingService.toTimes(param);
//			Gson gson = new Gson();
//			String str = gson.toJson(timesResult);
//			String str = gson.toJson(s);
	//		System.out.println("傳進日期後回傳時間="+str);
//			return str;
//			return "123";
	
//	}
	
	
	
}
