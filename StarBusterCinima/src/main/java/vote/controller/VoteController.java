package vote.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import member.model.MemberBean;
import vote.model.VoteBean;
import vote.model.VoteService;
import vote.model.VotemgmtService;

@Controller
@RequestMapping("/wishpool/vote.controller")
@ResponseBody
public class VoteController {
	@Autowired
	VoteService voteService;
	VotemgmtService votemgmtservice;
	@RequestMapping(value="selectall",method = {RequestMethod.GET},produces = "text/html;charset=UTF-8")
	public String method1(Model model) {

		List<Object[]> BL = voteService.selectall();
		Gson J = new Gson();		
		String jbl = J.toJson(BL);		
		return jbl;
	}

	@RequestMapping(value="VoteAMovie",method = { RequestMethod.POST })
	public VoteBean method2(Model model, int FilmID ,HttpServletRequest request) {

		VoteBean bean = new VoteBean();
		bean.setFilmID(FilmID);	
		
		MemberBean bean2 = (MemberBean)request.getSession().getAttribute("loginUserInfo");		
		
		System.out.println(FilmID   + "" +bean2.getMemberId());
		
		VoteBean result = voteService.VoteAMovie(FilmID,bean2.getMemberId());
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
