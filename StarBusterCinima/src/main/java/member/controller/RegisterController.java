package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import member.model.MemberBean;
import member.model.MemberService;
import misc.EmailUtil;

@Controller
@RequestMapping("/member/register.controller")
@SessionAttributes(value = { "userEmail", "userName","autoEmailAddress"})
public class RegisterController {
	@Autowired
	MemberService service;

	// @InitBinder
	// public void inititial(WebDataBinder binder) {
	// }
	@RequestMapping(method = { RequestMethod.POST })
	public String method(MemberBean bean, Model model) {
		// 讀取使用者資料
		System.out.println(bean);
		// 進行資料型態轉換Spring
		// 進行資料檢查
		String autoEmailAddress = "";
		// 進行商業邏輯
		MemberBean result = service.addNewMember(bean);

		if (result != null) {
			String userEmail = bean.getEmail();
			if (userEmail != null) {
				autoEmailAddress = EmailUtil.autoLookupEmailAddress(userEmail);
			}
			model.addAttribute("autoEmailAddress", autoEmailAddress);
			model.addAttribute("userEmail", userEmail);
			model.addAttribute("userName", bean.getName());
			return "register.success";
		}
		// 依執行結果選擇適當的view
		System.out.println(result);
		return "reginset.fail";
	}
}
