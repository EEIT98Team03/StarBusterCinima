package booking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="booking/controller/sectionsGet.controller")
public class SectionsGetController {
	
	public String paramFilmId;
	
	
	@RequestMapping(method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
	public String method( String passParamFilmId) {
		System.out.println("SectionsGetController GET (ajax) : "+passParamFilmId);
		System.out.println("SectionsGetController GET (method): "+paramFilmId);
//		System.out.println(paramFilmId);
		return "booking";
	}


	public String getParamFilmId() {
		return paramFilmId;
	}


	public void setParamFilmId(String paramFilmId) {
		this.paramFilmId = paramFilmId;
	}

	
	
	
}
