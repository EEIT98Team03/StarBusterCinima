package member.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import member.model.MemberBean;
import member.model.MemberService;
import misc.EmailUtil;

@Controller
@RequestMapping("/member/register.controller")
@SessionAttributes(value = { "userEmail", "userName", "autoEmailAddress" })
public class RegisterController {

	@Autowired
	MemberService service;

	// @InitBinder
	// public void inititial(WebDataBinder binder) {
	// }
	@RequestMapping(method = { RequestMethod.POST })
	public String method(MemberBean bean, Model model,@RequestPart("file_nm") MultipartFile file )
			throws IllegalStateException, IOException {
		InputStream is = null;
		byte[] bytes = null;
//		// 將當前上下文初始化給 CommonsMutipartResolver （多部分解析器）
//		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
//				request.getServletContext());
//		// 檢查form中是否有enctype="multipart/form-data"
//		if (multipartResolver.isMultipart(request)) {
//			// 將request變成多部分request
//			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
//			// 獲取multiRequest 中所有的檔案名
//			Iterator<String> iter = multiRequest.getFileNames();
//
//			while (iter.hasNext()) {
//
//				MultipartFile file = multiRequest.getFile(iter.next().toString());
				if (file != null) {
					// 一次遍歷所有檔案 上傳至某路徑的方法
					// String path="E:/"+file.getOriginalFilename();
					// System.out.println(path);
					// //上傳
					// file.transferTo(new File(path));
					bytes = file.getBytes();
					is = file.getInputStream();

				}
//			}
//		}

		// 讀取使用者資料
//		System.out.println("讀取register的資料" + bean);
		// 進行資料型態轉換Spring
		// 進行資料檢查
		String autoEmailAddress = "";
		// 進行商業邏輯
		MemberBean result = service.addNewMember(bean, is, bytes);
			
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
		return "reginset.fail";
	}
}
