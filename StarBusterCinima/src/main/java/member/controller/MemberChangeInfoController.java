package member.controller;

import java.io.IOException;
import java.io.InputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import member.model.MemberBean;
import member.model.MemberService;

@Controller
@RequestMapping("/member/registerMemberChange.controller")
@SessionAttributes("loginUserInfo")
public class MemberChangeInfoController {

	@Autowired
	MemberService service;

	@RequestMapping(method = { RequestMethod.POST })
	public String method(MemberBean bean,Model model, @RequestPart("file_nm") MultipartFile file)
			throws IllegalStateException, IOException {
		InputStream is = null;
		byte[] sizeInBytes = null;
		if (file != null) {

			sizeInBytes = file.getBytes();
			is = file.getInputStream();

		}
		MemberBean result = service.updateChangeInfo(bean, is, sizeInBytes);
		model.addAttribute("loginUserInfo", result);
		return "memberChangeInfo.result";
	}
}
