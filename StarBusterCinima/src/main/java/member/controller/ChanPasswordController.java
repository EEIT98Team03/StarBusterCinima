package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.model.MemberService;

@Controller
@RequestMapping("/member/changepassword.controller")
public class ChanPasswordController {
	@Autowired
	MemberService memberService;
	
	@RequestMapping(method= {RequestMethod.POST})
	public String method(String password1,String password2,int memberId) {
		
			
		String password = password1;
		
		
		
		memberService.updateChangePassword(memberId, password);
		
		return "login.success";
		
	}
}
