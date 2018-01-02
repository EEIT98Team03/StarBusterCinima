package booking.model;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import booking.model.dao.BookingHibernateDAO;
import films.model.FilmSectionBean;

@Service
@Transactional
public class BookingService {

	@Autowired
	SessionFactory sessionFactory;
	
	@Autowired
	BookingHibernateDAO bookingHibernateDAO;
	
	@Autowired
	BookingDAO bookingDAO;
	
	public Session session() {
		return sessionFactory.getCurrentSession();
		
	}
	
	
	@Transactional
	public TicketOrderBean insertOrder (TicketOrderBean bean) {
		//insert入訂單資料表
		bookingDAO.insert(bean);
		return bean;
	}
	
	
	@SuppressWarnings("unused")
	public Timestamp toTimeStamp(String str) {
		//將訂單日期字串處理成Timestamp送回
		
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
		
	}
	
	@SuppressWarnings("unused")
	public Timestamp orderFilmsectiontime(String filmSectionDate,String filmSectionTime) {
		//以場次日期+場次時間組合成Timestamp送回
		String str = filmSectionDate+"."+filmSectionTime;
		SimpleDateFormat sdfParse = new SimpleDateFormat("M月d日,EEE.hh:mm?yyyy");
//		SimpleDateFormat sdfParse = new SimpleDateFormat("yyyy-MM-dd hh:mm");
//		sdfParse.setTimeZone(TimeZone.getTimeZone("GMT+8"));
		
//		str = "1991-10-10 10:10";
//		System.out.println("(BookingService (filmSectionDate+filmSectionTime))= "+str);
		
//		1月7日,星期日.01:40?2018
		Date udate =null;
		str = str+"-2018";
		str = str.replace('(',',').replace('-','?').trim();
		try {
			udate = sdfParse.parse(str);
//			System.out.println("(BookingService)udate==>"+udate);
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		
		Timestamp timeStamp = new Timestamp(udate.getTime());
		return timeStamp;
	}
	
	//簡單處理座位編號
	public String processSeatNum(String str) {
		str = str.replace("號", "號,");
		str = str.substring(0,str.length()-1);
		System.out.println(str);
		
		return str;
	}
	
	//產生提取碼
	public String gettingTicketCode(int memberId) {
		
		long no = 0;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		SimpleDateFormat sdf2 = new SimpleDateFormat("HHmmss");
		String nowdate = sdf.format(new Date());
		String nowsec = sdf2.format(new Date());
		no = Long.parseLong(nowdate)*100;
		long no2 = Long.parseLong(nowsec);
		String str1 = Long.toString(no);
		String str2 = Long.toString(no2);
		int i = (int)(Math.random()*99)+11;
//		no=no+memberBean.getMemberId()+Long.parseLong(nowsec);
//		no=no+230000000+no2;
		String ticketCode = str2+memberId+str1+i;
		
		return ticketCode;
	}
	
	@Transactional
	public String selectNameById(int filmId) {
		//用電影id找出電影名稱
		return bookingHibernateDAO.selectNameById(filmId);
	}
	
	@Transactional
	public int makeSectionId(int filmId , Timestamp filmsectiontime){
		//用電影id和場次時間查出該場次的場次編號
		return bookingDAO.makeSectionId(filmId, filmsectiontime);
	}
	
	@Transactional
	public Map<String,String> pickSeats(int filmSectionId){
		//用場次id找出該場次的座位圖和無效座位
		return bookingDAO.pickSeats(filmSectionId);
	}
	
	@Transactional
	public String updateUnavailableSeats(int sectionId,String selectedSeats) {
		//更新該場次無效座位
		return bookingDAO.updateUnavailableSeats(sectionId, selectedSeats);
	}
	
}
