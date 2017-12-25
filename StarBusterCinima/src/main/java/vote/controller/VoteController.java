package vote.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import vote.model.VoteBean;
import vote.model.VoteService;

@Controller
@RequestMapping("/wishpool/vote.controller")
@SessionAttributes("vote")
public class VoteController {
	@Autowired
	VoteService voteService;

	@RequestMapping(method = { RequestMethod.GET })
	public String method1(Model model,String FilmID) {
		
		int result = voteService.VoteAMovie(FilmID);
		System.out.println("123123");
		if(result == 1)
			model.addAttribute("vote","success");
		else
			model.addAttribute("vote","f");		
		
		return"vote.success";
	}

}
