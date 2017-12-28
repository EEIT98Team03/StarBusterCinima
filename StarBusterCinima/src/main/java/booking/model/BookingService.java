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
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
		Date udate = null;
		Timestamp timeStamp =null;
		if(udate!=null) {
			try {
				udate = sdf.parse(str.trim().replace(" ", ""));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			timeStamp = new Timestamp(udate.getTime());
		}
//		System.out.println(date.getClass().getName());
//		SimpleDateFormat sdf = new SimpleDateFormat("");
//		ticketOrderBean.setTicketOrderDate(newTicketOrderDate);
		
		return timeStamp ;
	}
	
	
	@SuppressWarnings("unused")
	public Timestamp orderFilmsectiontime(String str) {
		SimpleDateFormat sdfParse = new SimpleDateFormat("M月d日,EEE.hh:mm?yyyy");
//		SimpleDateFormat sdfParse = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		sdfParse.setTimeZone(TimeZone.getTimeZone("GMT+8"));

//		str = "1991-10-10 10:10";
//		System.out.println("test "+str);
		
//		1月7日,星期日.01:40?2018
		
		
		Date udate =null;
		if(udate !=null) {
			try {
				str = str+"-2018";
				str = str.replace('(',',').replace('-','?').trim();
				udate = sdfParse.parse(str);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			Timestamp timeStamp = new Timestamp(udate.getTime());
			
			return timeStamp;
		}
		return null;
	}
	
	public String processSeatNum(String str) {
		
		str = str.replace("號", "號,");
		
		return str;
	}
	
	
	
	
}
