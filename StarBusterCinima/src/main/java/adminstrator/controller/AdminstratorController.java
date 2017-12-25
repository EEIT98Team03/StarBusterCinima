package adminstrator.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import adminstrator.model.AdministratorBean;
import adminstrator.model.AdminstratorService;

@Controller
@RequestMapping("/adminstrator/login.controller")
@SessionAttributes("AdministratorInfo")
public class AdminstratorController {
	@Autowired
	AdminstratorService adminstratorService;
	
	@RequestMapping(method={RequestMethod.POST})
	public String method(String email,String password,Model model) {
		//讀取使用者輸入資料
		//進行資料型態轉換
		//進行資料型態檢查
		Map<String,String> errors=new HashMap<String,String>();
		model.addAttribute("error", errors);
		if(email==null || email.trim().length()==0) {
			errors.put("email","email未輸入");
		}
		if(password==null || password.trim().length()==0) {
			errors.put("password","password未輸入");
		}
		if(errors!=null && !errors.isEmpty()) {
			return "adminstrator.error";
		}
		
		//進行商業服務
		AdministratorBean result = adminstratorService.checkAdminIdentity(email, password);
		//依照執行結果選擇適當的view
		if(result!=null) {
			model.addAttribute("AdministratorInfo", result);
			return "adminstrator.success";
			
		}else {
			errors.put("adminstrator","帳號或密碼輸入錯誤");
			return "adminstrator.error";
		}
	}
	
}
