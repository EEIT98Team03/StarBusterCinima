package films.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import films.model.FilmBean;
import films.model.FilmModelService;
import films.model.FilmService;

@Controller
@RequestMapping("/films/controller/filminsert.controller")
public class FilmInsertController {

	@Autowired
	FilmModelService filmModelService;
	
	@RequestMapping(method = RequestMethod.POST )
	public String method(FilmBean bean, Model model ) throws IllegalStateException, IOException {
	
		System.out.println("(FilmInsertController ) 測試呼叫");
		System.out.println(bean);
		System.out.println(bean.getUpstatus());
		
		boolean boo = filmModelService.insertFilm(bean);
	
		if(boo==false) {
			return "insertfilm.fail";
		}
	return "insertfilm.success";
	}
}
