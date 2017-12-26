package vote.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.google.gson.Gson;

import vote.model.VoteBean;
import vote.model.VoteService;

@Controller
@RequestMapping("/wishpool/vote.controller")
@ResponseBody
public class VoteController {
	@Autowired
	VoteService voteService;

	@RequestMapping(value="selectall",method = {RequestMethod.GET},produces = "text/html;charset=UTF-8")
	public String method1(Model model) {

		List<Object[]> BL = voteService.selectall();
		Gson J = new Gson();		
		String jbl = J.toJson(BL);		
		return jbl;
	}

	@RequestMapping(value="VoteAMovie",method = { RequestMethod.POST })
	public VoteBean method2(Model model, int FilmID) {

		VoteBean bean = new VoteBean();
		bean.setFilmID(FilmID);

		VoteBean result = voteService.VoteAMovie(FilmID);
		if(result!=null) {			
			
//			System.out.println(result);			
		}
		return result;
	}
	
	@RequestMapping(value="SelectMemberDataSelected",method = {RequestMethod.GET},produces = "text/html;charset=UTF-8")
	public String method3(Model model,@RequestParam("id") int id) {

		int[] BL = voteService.selectmemberdata(id);
		
		Gson J = new Gson();		
		String jbl = J.toJson(BL);	
		
		return jbl;				
		
	}

}
