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

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

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
	
	
	@RequestMapping(method=RequestMethod.POST, produces = "text/html;charset=UTF-8", value="productOrder")
	public String method(
			String filmId,
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
//		String filmsectiontime = filmSectionDate+"."+filmSectionTime;
		ticketOrderBean.setFilmsectiontime(bookingService.orderFilmsectiontime(filmSectionDate,filmSectionTime));
//		String filmsectiontime = filmSectionDate+"."+filmSectionTime;
//		ticketOrderBean.setFilmsectiontime(bookingService.orderFilmsectiontime(filmsectiontime));
		ticketOrderBean.setFilmId(Integer.parseInt(filmId));
		
		if(ticketCount!=null) {
			ticketOrderBean.setTicketCount(Integer.parseInt(ticketCount));
		}
		ticketOrderBean.setSeatNum(bookingService.processSeatNum(seatNumber));
		if(ticketCount!=null) {
			ticketOrderBean.setTicketOrderPrice(Integer.parseInt(ticketOrderPrice));
		}
		MemberBean memberBean = (MemberBean) request.getSession().getAttribute("loginUserInfo");
		ticketOrderBean.setMemberId(memberBean.getMemberId());
		ticketOrderBean.setTicketCode(bookingService.gettingTicketCode(memberBean.getMemberId()));
		
		
//		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").setPrettyPrinting().disableHtmlEscaping().create(); 
//		Gson gson = new Gson();
//		String ticketOrderBeanJson = gson.toJson(ticketOrderBean);
		
		String filmName = bookingService.selectNameById(Integer.parseInt(filmId));
		
		
		
		request.getSession().setAttribute("TicketOrderControllerFilmName", filmName);
//		request.getSession().setAttribute("ticketOrderBeanJson", ticketOrderBeanJson);
		request.getSession().setAttribute("ticketOrderBean", ticketOrderBean);
//		System.out.println("bean: "+ticketOrderBean);
		if(ticketOrderBean!=null) {
			return "booking.check";
		}
		return "/StarBusterCinima/booking/booking.jsp";
	}
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(method=RequestMethod.POST, produces = "text/html;charset=UTF-8", value="orderCheckOk")
	public String bookingCheck(
			String ticketOrderDate,
			String filmsectiontime,
			String ticketCount,
			String seatNum,
			String ticketOrderPrice,
			String ticketState,
			String filmId,
			String memberId,
			String ticketCode,
			Model model,
			HttpServletRequest request)
	{
		
		//從這裡確認訂單後insert及update至DB
		
//		System.out.println("orderCheckOk check");
//		System.out.println(ticketOrderDate+" / "+filmsectiontime+" / "+ticketCount+" / "+seatNum+" / "+ticketOrderPrice+" / "+ticketState+" / "+filmId+" / "+memberId+" / "+ticketCode);
		
		TicketOrderBean ticketOrderBean = (TicketOrderBean) request.getSession().getAttribute("ticketOrderBean");
//		System.out.println("訂票最後的controller"+ticketOrderBean);
		
		
		
//		System.out.println("座位修改前"+ticketOrderBean.getSeatNum());
		ticketOrderBean.setSeatNum(ticketOrderBean.getSeatNum().replace("排", "_").replace("號", ""));
//		System.out.println("座位修改後"+ticketOrderBean.getSeatNum());		
		
		
		TicketOrderBean theKey = bookingService.insertOrder(ticketOrderBean);
//		System.out.println("insertOrderSuccess. the key is: "+theKey+"  the bean is: "+ticketOrderBean);
		
		int filmSectionId = bookingService.makeSectionId(Integer.parseInt(filmId), ticketOrderBean.getFilmsectiontime());
		
		bookingService.updateUnavailableSeats(filmSectionId, ticketOrderBean.getSeatNum());
		
		System.out.println("(bookingCheck) filmSectionId = "+filmSectionId);
		
		return "booking.fail";
	}
}
