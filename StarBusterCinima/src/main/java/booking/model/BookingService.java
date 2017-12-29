package booking.model;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class BookingService {

	@Autowired
	SessionFactory sessionFactory;
	
	public Session session() {
		return sessionFactory.getCurrentSession();
		
	}
	
//	BookingDAO bookingDAO;
	@Transactional
	public TicketOrderBean insertOrder (TicketOrderBean bean) {
//		SimpleDateFormat date =new SimpleDateFormat("yyyy-MM-dd");
//		date.setTimeZone(TimeZone.getTimeZone("GMT+8"));
//		String str = date.format(new java.util.Date());
//		bean.setTicketOrderDate(str);

		session().save(bean);
		
		
		
		return bean;
	}
	
	@SuppressWarnings("unused")
	public Timestamp toTimeStamp(String str) {
//		TimeZone timezone = TimeZone.getTimeZone("GMT+8");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		str = str.trim().replace(" ", "").replace("年", "-").replace("月", "-").replace("日", "");
//		System.out.println("str=" +str);
		Date udate = null;
		try {
			udate = sdf.parse(str);
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
//		System.out.println("1  ="+udate);
//		System.out.println(udate.getClass().getName());
		Timestamp timeStamp = new Timestamp(udate.getTime());
//		System.out.println("2  ="+timeStamp);
		
//		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");

		
		
		return timeStamp;
		
//		Date udate = null;
//		Timestamp timeStamp =null;
//		if(udate!=null) {
//			try {
//				udate = sdf.parse(str);
//				timeStamp = new Timestamp(udate.getTime());
//				System.out.println(timeStamp);
//			} catch (ParseException e) {
//				e.printStackTrace();
//			}
//		}
//		System.out.println(date.getClass().getName());
//		SimpleDateFormat sdf = new SimpleDateFormat("");
//		ticketOrderBean.setTicketOrderDate(newTicketOrderDate);
		
//		return null ;
	}
	
	
	@SuppressWarnings("unused")
	public Timestamp orderFilmsectiontime(String str) {
		SimpleDateFormat sdfParse = new SimpleDateFormat("M月d日,EEE.hh:mm?yyyy");
//		SimpleDateFormat sdfParse = new SimpleDateFormat("yyyy-MM-dd hh:mm");
//		sdfParse.setTimeZone(TimeZone.getTimeZone("GMT+8"));
		
//		str = "1991-10-10 10:10";
		System.out.println("test "+str);
		
//		1月7日,星期日.01:40?2018
		Date udate =null;
		str = str+"-2018";
		str = str.replace('(',',').replace('-','?').trim();
		try {
			udate = sdfParse.parse(str);
			System.out.println("udate==>"+udate);
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		
		Timestamp timeStamp = new Timestamp(udate.getTime());
		System.out.println(timeStamp);
		
		
		
//		if(udate !=null) {
//			try {
//				str = str+"-2018";
//				str = str.replace('(',',').replace('-','?').trim();
//				udate = sdfParse.parse(str);
//			} catch (ParseException e) {
//				e.printStackTrace();
//			}
//			Timestamp timeStamp = new Timestamp(udate.getTime());
//			
//			return timeStamp;
//		}
		return timeStamp;
	}
	
	public String processSeatNum(String str) {
		
		str = str.replace("號", "號,");
		str = str.replace(",,", "");
		
		return str;
	}
	
	
	
	
}
