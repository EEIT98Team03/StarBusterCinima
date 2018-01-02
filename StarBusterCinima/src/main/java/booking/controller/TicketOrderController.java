package booking.controller;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import booking.model.BookingService;
import booking.model.TicketOrderBean;
import member.model.MemberBean;

//@ResponseBody
@Controller
@RequestMapping(value = "/booking/controller/ticketorder.controller")
public class TicketOrderController {
	
	@Autowired
	BookingService bookingService;
	
	@Autowired
	TicketOrderBean ticketOrderBean;
	
	
	@RequestMapping(method=RequestMethod.GET, produces = "text/html;charset=UTF-8")
	public String method(String filmId,
			String ticketOrderDate,
			String filmSectionDate,
			String filmSectionTime,
			String ticketCount,
			String seatNumber,
			String ticketType,
			String ticketOrderPrice, 
			Model model,
			HttpServletRequest request) 
	{
		System.out.println( filmId
				+" / "+ ticketOrderDate
				+" / "+ filmSectionDate
				+" / "+ filmSectionTime
				+" / "+ ticketCount
				+" / "+ seatNumber
				+" / "+ ticketOrderPrice );
		
		
		ticketOrderBean.setTicketOrderDate(bookingService.toTimeStamp(ticketOrderDate));
//		System.out.println(bookingService.toTimeStamp(ticketOrderDate));
		String filmsectiontime = filmSectionDate+"."+filmSectionTime;
		ticketOrderBean.setFilmsectiontime(bookingService.orderFilmsectiontime(filmsectiontime));
//		System.out.println(bookingService.orderFilmsectiontime(filmsectiontime));
		
		
		
		if(ticketCount!=null) {
			ticketOrderBean.setTicketCount(Integer.parseInt(ticketCount));
		}
		ticketOrderBean.setSeatNum(bookingService.processSeatNum(seatNumber));
		if(ticketCount!=null) {
			ticketOrderBean.setTicketOrderPrice(Integer.parseInt(ticketOrderPrice));
		}
		
//		System.out.println(request.getSession().getAttribute("loginUserInfo"));
//		ticketOrderBean.setMemberId(memberId);
		
		MemberBean memberBean = (MemberBean) request.getSession().getAttribute("loginUserInfo");
		ticketOrderBean.setMemberId(memberBean.getMemberId());
		
		
//		long no = 0;
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
//		String nowdate = sdf.format(new Date());
//		no = Long.parseLong(nowdate)*100;
//		no=no+memberBean.getMemberId();
//		System.out.println("no="+no);
		
		
		long no = 0;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		SimpleDateFormat sdf2 = new SimpleDateFormat("HHmmss");
		String nowdate = sdf.format(new Date());
		String nowsec = sdf2.format(new Date());
		no = Long.parseLong(nowdate)*100;
		long no2 = Long.parseLong(nowsec);
		String str1 = Long.toString(no);
		String str2 = Long.toString(no2);
		int i = (int)(Math.random()*100)+1;
//		no=no+memberBean.getMemberId()+Long.parseLong(nowsec);
//		no=no+230000000+no2;
		String ticketCode = str2+memberBean.getMemberId()+str1+i;
		ticketOrderBean.setTicketCode(ticketCode);
//		System.out.println("no="+no);
		
		
		
		System.out.println("bean: "+ticketOrderBean);
		
		
		if(ticketOrderBean!=null) {
		
		
			return "booking.check";
		}
		return "/StarBusterCinima/booking/booking.jsp";
		
	}
}
