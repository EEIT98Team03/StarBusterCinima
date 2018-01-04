package films.controller;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import films.model.FilmBean;
import films.model.FilmSectionBean;
import films.model.filmsService;

@Controller
@RequestMapping("/film/filmMgmt.controller")
@SessionAttributes()
@ResponseBody
public class FilmMgmtController {

	@Autowired
	filmsService filmsservice;	
	// @InitBinder
	// public void initialize(WebDataBinder webDataBinder) {
	// webDataBinder.registerCustomEditor(java.sql.Date.class, "udate",
	// new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
	//
	// webDataBinder.registerCustomEditor(java.sql.Date.class, "ddate",
	// new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));

	// webDataBinder.registerCustomEditor(int.class,
	// new PrimitiveNumberEditor(java.lang.Integer.class, true));

	// }
	// @InitBinder
	// public void initialize(WebDataBinder webDataBinder) {
	//// webDataBinder.registerCustomEditor(java.util.Date.class, "udate",
	//// new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), ));
	////
	//// webDataBinder.registerCustomEditor(int.class,
	//// new PrimitiveNumberEditor(java.lang.Integer.class, true));
	////
	//// webDataBinder.registerCustomEditor(double.class, "price",
	//// new PrimitiveNumberEditor(java.lang.Double.class, true));
	// SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	//// webDataBinder.PrimitiveNumberEditor(Date.class, new
	// CustomDateEditor(dateFormat, true),2);
	// }

	@RequestMapping(method = RequestMethod.GET, value = "aaa")
	public String method(FilmBean bean, BindingResult bindingResult, Model model) {
		// @RequestParam("FilmID") String posterLarge,
		// @RequestParam("FilmID") byte[] posterMedium,
		//System.out.println("test");
		// System.out.println(bean.getFilmId()+"test");
		// System.out.println(filmName+"test");
		//System.out.println(bean.getEngName() + "test");
		//System.out.println(bean.getUdate() + "test");
		// FilmBean insert(FilmBean bean)
		return "insert.success";
	}

	@RequestMapping(method = RequestMethod.GET, value = "SelectAllSectionAndFilm", produces = "text/html;charset=UTF-8")
	public String method2(Model model) {

		List<Object[]> list = filmsservice.SelectAllSection();

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd-HH:mm:ss").create();
		String str = gson.toJson(list);

		return str;

	}

	@RequestMapping(method = RequestMethod.GET, value = "InsertSection", produces = "text/html;charset=UTF-8")
	public boolean InsertSection(Model model, @RequestParam("filmId") int filmId,
			@RequestParam("filmsectiontime") String filmsectiontime, @RequestParam("roomSeats") String roomSeats,
			@RequestParam("sectionroom") String sectionroom) throws ParseException {
		String Seat1 = "'oo__oooooooooo__oo','oo_oooooooooooo_oo','oo_oooooooooooo_oo','oo_oooooooooooo_oo','oo_oooooooooooo_oo','_oo_oooooooooo_oo_','_oo_oooooooooo_oo_','_oo_oooooooooo_oo_'";
		String Seat2 = "'oooo_oooooooooo_oooo','oooo_oooooooooo_oooo','oooo_oooooooooo_oooo','oooo_oooooooooo_oooo','oooo_oooooooooo_oooo','_ooo_oooooooooo_ooo_','__oo_oooooooooo_oo__'";
		FilmSectionBean bean = new FilmSectionBean();

		bean.setFilmId(filmId);		

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		java.util.Date parsedDate = dateFormat.parse(filmsectiontime);
		Timestamp timestamp = new java.sql.Timestamp(parsedDate.getTime());
		bean.setFilmSectionTime(timestamp);

		if (roomSeats.equals("a") || roomSeats.equals("c"))
			bean.setRoomSeats(Seat1);
		else
			bean.setRoomSeats(Seat2);
		bean.setUnavailableSeats(" ");

		bean.setSectionroom(sectionroom.toUpperCase());

		boolean result = filmsservice.InsertFilmSection(bean);
		return result;
	}

	@RequestMapping(method = RequestMethod.GET, value = "DeleteSection", produces = "text/html;charset=UTF-8")
	public boolean DeleteSection(Model model, @RequestParam("filmsectionId") int filmsectionId) throws ParseException {
		
		filmsservice.DeleteFilmSection(filmsectionId);
		return false;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "UpdateSection", produces = "text/html;charset=UTF-8")
	public boolean UpdateSection(Model model, @RequestParam("filmsectionId") int filmsectionId,@RequestParam("filmsectiontime") String filmsectiontime) throws ParseException {
		//System.out.println(filmsectiontime);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		java.util.Date parsedDate = dateFormat.parse(filmsectiontime);
		Timestamp timestamp = new java.sql.Timestamp(parsedDate.getTime());
		System.out.println(timestamp);
		filmsservice.UpdateFilmSection(filmsectionId, timestamp);
		return false;
	}
	
	
	@RequestMapping(method = RequestMethod.GET, value = "SelectSectionCount", produces = "text/html;charset=UTF-8")
	public String SelectSectionCount(Model model) throws ParseException {
		
		List<Object[]> list = filmsservice.SelectSectionCount();
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd-HH:mm:ss").create();
		String str = gson.toJson(list);

		return str;
	}
	
	@RequestMapping(value = "SelectMovieCanUp", method = { RequestMethod.GET }, produces = "text/html;charset=UTF-8")
	public String SelectMovieCanUp(Model model) {
		

		//System.out.println("a");
		//List<FilmBean> result = quickBookingService.selectAllfilms();

		System.out.println("a");
		List<FilmBean> result = filmsservice.selectAllfilms();


		Gson gson = new Gson();
		String str = gson.toJson(result);
		
//		System.out.println(str);
		return str;
	}
}
