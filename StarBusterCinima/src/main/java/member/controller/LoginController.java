package member.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import member.model.MemberBean;
import member.model.MemberService;

@Controller
@RequestMapping("/member/login.controller")
@SessionAttributes("user")
public class LoginController {
	@Autowired
	MemberService memberService;

	@RequestMapping(method= {RequestMethod.POST})
	public String method(String email,String password,Model model) {
		//讀取使用者資料
		//進行資料型態轉換
		//檢查使用者輸入資料
		Map<String,String> errors = new HashMap<String,String>();
		model.addAttribute("errors",errors);
		if(email==null || email.trim().length()==0) {
			errors.put("email", "請輸入email");
		}
		if(password==null||password.trim().length()==0) {
			errors.put("password", "請輸入密碼");
		}
		
		if(errors!=null && !errors.isEmpty()) {
			return "login.error";
		}
		//進行商業服務
		MemberBean result = memberService.checkLogin(email, password);
		//依照執行結果選擇適當的view
		if(result!=null) {
			model.addAttribute("user",result);
			return "login.success";
		}else {
			errors.put("login","登入失敗");
			return "login.error";
		}
	}
}
