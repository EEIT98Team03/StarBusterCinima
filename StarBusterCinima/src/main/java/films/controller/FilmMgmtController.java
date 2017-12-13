package films.controller;



import java.sql.Date;
import java.text.SimpleDateFormat;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import films.model.FilmBean;
import spring.PrimitiveNumberEditor;

@Controller
@RequestMapping("/film/filmMgmt.controller")
@SessionAttributes()
public class FilmMgmtController {

	@InitBinder
	public void initialize(WebDataBinder webDataBinder) {
//		webDataBinder.registerCustomEditor(java.util.Date.class, "make",
//				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), ));
//		
//		webDataBinder.registerCustomEditor(int.class,
//				new PrimitiveNumberEditor(java.lang.Integer.class, true));
//		
//		webDataBinder.registerCustomEditor(double.class, "price",
//				new PrimitiveNumberEditor(java.lang.Double.class, true));
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//		webDataBinder.PrimitiveNumberEditor(Date.class, new CustomDateEditor(dateFormat, true),2);
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String method(
		@RequestParam("FilmID") String filmId,
		@RequestParam("FilmName") String filmName,
		@RequestParam("EngName") String engName,
		@RequestParam("LengthOfFilm") String lengthOfFilm,
		@RequestParam("Genre") String genre,
		@RequestParam("FilmLevel") String filmLevel,
		@RequestParam("Udate") java.sql.Date udate,
		@RequestParam("Ddate") java.sql.Date ddate,
		@RequestParam("Director") String director,
		@RequestParam("Actor") String actor,
		@RequestParam("Language") String language,
		@RequestParam("Trailer") String trailer,
		@RequestParam("ShortIntro") String shortIntro,
		@RequestParam("LongIntro") String longIntro
	){
//		@RequestParam("FilmID") String posterLarge,
//		@RequestParam("FilmID") byte[] posterMedium,
		System.out.println(filmId+"test");
		System.out.println(filmName+"test");
		System.out.println(engName+"test");
//		System.out.println(udate+"test");
//		FilmBean insert(FilmBean bean)

		
		
		
		return "insert.success";
	}

}
