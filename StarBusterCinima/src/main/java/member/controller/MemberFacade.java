package member.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import member.model.MemberBean;
import member.model.MemberService;
import misc.EmailUtil;

@RestController
@RequestMapping(path = "/members")
public class MemberFacade {
	// Restauful API user guide
	// select
	// -----------------------------------------------------------------1.boolean2.MemberBean3.List<MemberBean>
	// method => get
	// http://localhost:8080/StarBusterCinima/members/biea326hu@hotmail/detail
	// http://localhost:8080/StarBusterCinima/members/biea326hu@hotmail
	// http://localhost:8080/StarBusterCinima/members/allMember
	// insert
	// -----------------------------------------------------------------MemberBean
	// method => put , header => Content-Type = application/json
	// http://localhost:8080/StarBusterCinima/members
	// data example
	// {
	// "email": "biea326hu@hotmail.com",
	// "password": "123",
	// "name": "1233",
	// "address": "123",
	// "phoneNumber": "123",
	// "gender": "Male"
	// }
	// update
	// -----------------------------------------------------------------MemberBean
	// method => put , header => Content-Type = application/json
	// http://localhost:8080/StarBusterCinima/members
	// delete
	// -----------------------------------------------------------------boolean
	// method => delete
	// http://localhost:8080/StarBusterCinima/members/19
	@Autowired
	MemberService memberService;

	// 透過email收尋會員使否存在
	@RequestMapping(method = { RequestMethod.GET }, value = { "/{email}" })
	public boolean selectUserEmailExist(@PathVariable("email") String userEmail) {
		System.out.println(userEmail);
		boolean status = memberService.EmailExists(userEmail + ".com");
		System.out.println(status);
		return status;
	}

	// 透過email收尋會員資料
	@RequestMapping(method = { RequestMethod.GET }, value = { "/{email}/detail" }, produces = { "application/json",
			"application/xml" })
	public MemberBean selectUserEmailInfo(@PathVariable("email") String userEmail) {
		MemberBean bean = memberService.EmailExistsGetMemberBean(userEmail + ".com");
		return bean;
	}

	// 收尋全部會員
	@RequestMapping(method = { RequestMethod.GET }, value = { "/allMember" }, produces = { "application/json",
			"application/xml" })
	public List<MemberBean> selectAllMember() {
		List<MemberBean> list = memberService.getMemberList();
		return list;
	}

	// 新增單筆會員資料
	@RequestMapping(method = { RequestMethod.POST }, consumes = { "application/json", "applicatoin/xml" }, produces = {
			"application/json", "application/xml" })
	public MemberBean insertMemberData(@RequestBody MemberBean bean) {
		if (bean != null) {
			MemberBean result = memberService.addNewMember(bean,null,null);
			return result;
		}
		return bean;
	}
	// 重發email
	@RequestMapping(method = { RequestMethod.GET },value= {"/resendEmail={memberId}"},produces= {"text/plain;charset=UTF-8"})
	public String resendEmail(@PathVariable int memberId) {
		boolean result = memberService.resendEmail(memberId);
		if(result) {
			return "寄送成功請到你的信箱認證";
		}
		return "寄送失敗，請確認Email住址是否有誤，並重新註冊帳號更改Email";
	}
	
	// 重發email更改密碼
	@RequestMapping(method = { RequestMethod.GET },value= {"/resendEmailToChangePassword={memberId}"},produces= {"text/plain;charset=UTF-8"})
	public String resendEmailToChangePassword(@PathVariable int memberId) {
		MemberBean bean = memberService.getMemberInfoById(memberId);
		EmailUtil.sendEmail(bean.getEmail(),"會員更改密碼認證信","<p>Dear"+bean.getName()+":</p><br/><p>感謝您在 "+new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date())
		+"提出更改密碼的需求 </p><br/><p><a href="+"http://localhost:8080/StarBusterCinima/member/memberManagement/memberChangePasswordForm.jsp"
		+">更改密碼連結網址</a></p><p></p><p>#請先登入後再點擊信件連結#</p><p>StarBusterCinima星霸影城致上</p>",null);//http://localhost:8080/StarBusterCinima/member/memberManagement/memberChangePasswordForm.jsp
		return "true";
		
	}
	
	// 修改會員資料
	@RequestMapping(method = { RequestMethod.PUT }, consumes = { "application/json", "application/xml" }, produces = {
			"application/json", "application/xml" })
	public MemberBean updateMemberInfo(@RequestBody MemberBean bean) {
		memberService.updateMemberInfo(bean);
		return bean;
	}

	// 刪除單筆會員資料
	@RequestMapping(method = { RequestMethod.DELETE }, value = { "/{memberId}" })
	public boolean deleteMemberByMemberId(@PathVariable("memberId") int memberId) {
		boolean result = memberService.deleteMemeber(memberId);
		return result;
	}
}
