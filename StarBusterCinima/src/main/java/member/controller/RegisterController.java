package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.model.MemberBean;
import member.model.MemberService;
@Controller
@RequestMapping("/member/register.controller")
public class RegisterController {
	@Autowired
	MemberService service;
	@RequestMapping(method= {RequestMethod.POST})
	public void method(MemberBean bean) {
		System.out.println(bean);
		MemberBean result = service.addNewMember(bean);
		System.out.println(result);
	}
}
