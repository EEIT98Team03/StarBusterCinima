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
//		System.out.println( filmId
//				+" / "+ ticketOrderDate
//				+" / "+ filmSectionDate
//				+" / "+ filmSectionTime
//				+" / "+ ticketCount
//				+" / "+ seatNumber
//				+" / "+ ticketOrderPrice );
		
		
		ticketOrderBean.setTicketOrderDate(bookingService.toTimeStamp(ticketOrderDate));
		String filmsectiontime = filmSectionDate+"."+filmSectionTime;
		ticketOrderBean.setFilmsectiontime(bookingService.orderFilmsectiontime(filmsectiontime));
		if(ticketCount!=null) {
			ticketOrderBean.setTicketCount(Integer.parseInt(ticketCount));
		}
		ticketOrderBean.setSeatNum(bookingService.processSeatNum(seatNumber));
		if(ticketCount!=null) {
			ticketOrderBean.setTicketOrderPrice(Integer.parseInt(ticketOrderPrice));
		}
		
		
//		ticketOrderBean.setMemberId(memberId);
		request.getSession().getAttribute("");
		
		System.out.println("bean: "+ticketOrderBean);
		
		
		if(ticketOrderBean!=null) {
		
		
			return "booking.success";
		}
		return "/StarBusterCinima/booking/booking.jsp";
		
	}
}
