package films.controller;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import films.model.FilmBean;
import films.model.FilmService;

//@RestController



@Scope("session")
@Controller
@RequestMapping(value="films/controller/thisFilm.controller")
public class thisFilmController {

	@Autowired
	FilmService filmService;
	
	@Autowired
	SessionFactory sessionFactory;
	
//	public Session session() {
//		return sessionFactory.getCurrentSession();
//	}
	
		@RequestMapping(method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
		public String method(String filmId, Model model ,HttpServletRequest request) {
			
			//System.out.println("controller: "+filmId);
			if(filmId!=null) {
				int aa = Integer.parseInt(filmId);
				FilmBean result = filmService.selectById(aa);
//				request.getSession().removeAttribute("filmBean");
				model.addAttribute("filmBean", result);
				//request.getSession().setAttribute("filmBean", result);
//				request.setAttribute("filmBean", result);
//				Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create(); 
//				String str = gson.toJson(list);
				System.out.println("(thisFilmController) controller thisFilm->>  "+result);
				
				return "thisfilm";
			}
			
			return "thisfilm";
		}

	}
	
	//request
	
//@RequestMapping(method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
//public String method(String paramFilmId, Model model ) {
////	
//	System.out.println("controller: "+paramFilmId);
//	if(paramFilmId!=null) {
//		int filmId = Integer.parseInt(paramFilmId);
//		FilmBean result = filmService.selectById(filmId);
////		List<FilmBean> list = new ArrayList<FilmBean>();
////		list.add(result);
//		model.addAttribute("filmBean", result);
////		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create(); 
////		String str = gson.toJson(list);
//		System.out.println("thisFilm->>  "+result);
////		System.out.println("list"+list);
//		return "thisFilm";
//	}
//	
//	return null;
//}

	
	
	
	//restful
	
//	@RequestMapping(method = RequestMethod.GET, produces = "application/json")
//	public List<FilmBean> method(String paramFilmId, Model model ) {
//		
//		System.out.println("controller: "+paramFilmId);
//		if(paramFilmId!=null) {
//			int filmId = Integer.parseInt(paramFilmId);
//			FilmBean result = filmService.selectById(filmId);
//			List<FilmBean> list = new ArrayList<FilmBean>();
//			list.add(result);
////			model.addAttribute("filmBean", result);
//			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create(); 
//			String str = gson.toJson(list);
//			System.out.println("thisFilm->>  "+list);
//			System.out.println("list"+list);
//			return list;
//		}
//		
//		return null;
//	}



//@RequestMapping(method = RequestMethod.GET, value = { "/{paramFilmId}" }, produces = "text/html;charset=UTF-8")
//public String method(@PathVariable String paramFilmId, Model model) {
////	System.out.println("test");
////	System.out.println(paramFilmId);
//	
//	if(paramFilmId!=null) {
//		
//		int filmId = Integer.parseInt(paramFilmId);
//		FilmBean result = filmService.selectById(filmId);
//	
//		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create(); 
//		String str = gson.toJson(result);
//		System.out.println("thisFilm->>  "+str);
//		return str;
//	}
//
//return null;
//}
