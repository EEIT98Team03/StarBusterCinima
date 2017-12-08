package member.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.model.MemberBean;
import member.model.MemberService;

@Controller
@RequestMapping("/member/EmailVerify.controller")
public class EmailVerifyController {
	
	@Autowired
	MemberService memberservice;
	
	@RequestMapping(method= {RequestMethod.GET})
	public String method(String userEmail,String emailEncryption) {
		//讀取使用者資料
		System.out.println(userEmail);
		System.out.println(emailEncryption);
		//進行資料型態轉換
		//進行資料的檢查
		//不會有以下問題
//		Map<String,String> errors = new HashMap<String,String>();
//		
//		if(userEmail==null || userEmail.trim().length()==0) {
//			errors.put("userEmail", "userEmail未輸入");
//		}
//		if(emailEncryption==null|| emailEncryption.trim().length()==0) {
//		errors.put("emailEncryption", "emailEncryption未輸入");
//		}
		//進行商業服務
		  MemberBean result = memberservice.EmailExistsGetMemberBean(userEmail);
		  //依照執行結果選擇適當的view
		if(result!=null) {
			String dbcode = result.getIdentityCode();
			if(dbcode.equals(emailEncryption)) {
				result.setIdentityStatus("formal");
				MemberBean updateBean = memberservice.updateMemberInfo(result);
				System.out.println("驗證成功"+updateBean);
				return "identity.success";
			}
		}
		return "identity.error";
	}
}
