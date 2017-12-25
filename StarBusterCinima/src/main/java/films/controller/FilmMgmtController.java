package films.controller;



import java.sql.Date;
import java.text.SimpleDateFormat;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import films.model.FilmBean;

@Controller
@RequestMapping("/film/filmMgmt.controller")
@SessionAttributes()
public class FilmMgmtController {

//	@InitBinder
//	public void initialize(WebDataBinder webDataBinder) {
//		webDataBinder.registerCustomEditor(java.sql.Date.class, "udate",
//				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
//
//		webDataBinder.registerCustomEditor(java.sql.Date.class, "ddate",
//				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
		
//		webDataBinder.registerCustomEditor(int.class,
//				new PrimitiveNumberEditor(java.lang.Integer.class, true));
		
//	}
//	@InitBinder
//	public void initialize(WebDataBinder webDataBinder) {
////		webDataBinder.registerCustomEditor(java.util.Date.class, "udate",
////				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), ));
////		
////		webDataBinder.registerCustomEditor(int.class,
////				new PrimitiveNumberEditor(java.lang.Integer.class, true));
////		
////		webDataBinder.registerCustomEditor(double.class, "price",
////				new PrimitiveNumberEditor(java.lang.Double.class, true));
//		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
////		webDataBinder.PrimitiveNumberEditor(Date.class, new CustomDateEditor(dateFormat, true),2);
//	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String method(FilmBean bean, BindingResult bindingResult,Model model){
//		@RequestParam("FilmID") String posterLarge,
//		@RequestParam("FilmID") byte[] posterMedium,
		System.out.println("test");
//		System.out.println(bean.getFilmId()+"test");
//		System.out.println(filmName+"test");
		System.out.println(bean.getEngName()+"test");
		System.out.println(bean.getUdate()+"test");
//		FilmBean insert(FilmBean bean)

		
		
		
		return "insert.success";
	}

}
