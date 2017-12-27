package member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import member.model.MemberBean;
import member.model.MemberService;
import misc.CipherUtils;

@Controller
@RequestMapping("/member/login.controller")
@SessionAttributes({"loginUserInfo","lan"})
public class LoginController {
	@Autowired
	MemberService memberService;

	@RequestMapping(method = { RequestMethod.POST })
	public String method(String email, String password,String changeLanguage, String remember, Model model, HttpServletRequest request,
			HttpServletResponse response, @SessionAttribute(name="requestURI",required=false) String requestURI) throws IOException {
		if(changeLanguage!="") {//判斷是否有選
			System.out.println(changeLanguage);
			model.addAttribute("lan","controller.language_"+changeLanguage);
		}else {
			Locale locale = LocaleContextHolder.getLocale();
			model.addAttribute("lan","controller.language_en_US");
			
		}
		// 讀取使用者資料
		// 進行資料型態轉換
		// 檢查使用者輸入資料
		Map<String, String> errors = new HashMap<String, String>();
		model.addAttribute("errors", errors);
		if (email == null || email.trim().length() == 0) {
			errors.put("email", "請輸入email");
		}
		if (password == null || password.trim().length() == 0) {
			errors.put("password", "請輸入密碼");
		}

		// cookie process begin--------------------------------------------------------
		Cookie cookieUserEmail = null;
		Cookie cookiePassword = null;
		Cookie cookieRememberMe = null;

		if (remember != null) {// 表示他有勾選remeber
			cookieUserEmail = new Cookie("user", email);
			cookieUserEmail.setMaxAge(30 * 60);// 30分
			// requestURI=contextPath + servletPath + pathInfo
			cookieUserEmail.setPath(request.getContextPath());// /StauBusterCinima
			cookiePassword = new Cookie("password", CipherUtils.encryptString(CipherUtils.DEFAULTKEY, password));
			cookiePassword.setMaxAge(30 * 60);
			cookiePassword.setPath(request.getContextPath());//
			cookieRememberMe = new Cookie("rm", "true");
			cookieRememberMe.setMaxAge(30 * 60);
			cookieRememberMe.setPath(request.getContextPath());
		} else {
			cookieUserEmail = new Cookie("user", email);
			cookieUserEmail.setMaxAge(0);
			cookieUserEmail.setPath(request.getContextPath());
			cookiePassword = new Cookie("password", CipherUtils.encryptString(CipherUtils.DEFAULTKEY, password));
			cookiePassword.setMaxAge(0);
			cookiePassword.setPath(request.getContextPath());//
			cookieRememberMe = new Cookie("rm", "true");
			cookieRememberMe.setMaxAge(0);// 一樣要設時間
			cookieRememberMe.setPath(request.getContextPath());
		}
		response.addCookie(cookieUserEmail);
		response.addCookie(cookiePassword);
		response.addCookie(cookieRememberMe);
		// cookie process end-------------------------------------------------------

		if (errors != null && !errors.isEmpty()) {
			return "login.error";
		}
		// 進行商業服務
		MemberBean result = memberService.checkLogin(email, password);

		// 依照執行結果選擇適當的view
		if (result != null) {
			String identityStatus = result.getIdentityStatus();
			if (identityStatus.equals("formal")) {
				model.addAttribute("loginUserInfo", result);
				if (requestURI != null) {
					/// StarBusterCinima/shopping/index.jsp(!=0) or /StarBusterCinima/ (==0)
					String servletPath = requestURI.substring(request.getContextPath().length());
					System.out.println(servletPath);
					if (requestURI.length() == 0) {

						return "login.success";
					} else {
						if (requestURI.contains("shopping")) {
							return "shopping.success";
						} else if (requestURI.contains("film")) {
							return "fileView的邏輯名稱";
						}
					}
				}
				return "login.success";
			} else {
				errors.put("login", "登入失敗，未完成信箱驗證");
				errors.put("resendEmailMember",String.valueOf(result.getMemberId()));
				
				
				return "login.error";
			}
		} else {
			errors.put("login", "登入失敗,該帳號不存在或密碼錯誤");
			return "login.error";
		}
	}
}
