package member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import booking.model.BookingService;
import booking.model.TicketOrderBean;
import member.model.MemberBean;
import member.model.MemberService;

@ResponseBody
@Controller
@RequestMapping(value="/member/controller/memberbookingorder.controller")
public class memberBookingOrderController {
	
//	selectOrdersByMemberId

	@Autowired
	MemberService memberService;
	
	@RequestMapping(method=RequestMethod.GET,produces = "text/html;charset=UTF-8")
	public String getAllOrder(Model model,HttpServletRequest request ){
		MemberBean memberBean = (MemberBean) request.getSession().getAttribute("loginUserInfo");
		int memberId = memberBean.getMemberId();
//		System.out.println(memberId);
//		List<TicketOrderBean> result = memberService.selectOrdersByMemberId(memberId);
		List<Object[]> result =  memberService.selectOrdersJoin(memberId);
//		System.out.println("(memberBookingOrderController)= "+result);
		
		
		
		
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd-HH:mm:ss").create();
		String str = gson.toJson(result);
		
		
		return str;
	}


}
