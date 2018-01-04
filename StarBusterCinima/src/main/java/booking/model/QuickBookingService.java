package booking.model;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import films.model.FilmBean;
import films.model.FilmSectionBean;

import org.apache.commons.lang.time.DateUtils;

@Service
@Transactional
public class QuickBookingService {

	@Autowired
	QuickBookingDAO quickBookingDAO;
	
	List<FilmBean> filmResult ;
	List<FilmSectionBean> sectionResult ;
	List<Timestamp> sectionsResult ;
	
	
	@Transactional
	public List<FilmBean> selectAllfilms(){//搜尋所有電影
		
		
		
		filmResult = quickBookingDAO.selectFilms();
		System.out.println(filmResult);
		return filmResult;
	}
	
	@Transactional
	public List<Timestamp> selectFilmSectionTimeByFilmId(int filmId){
		List<Timestamp> sectionsResult = new ArrayList<Timestamp>();
		
		for(int i = 0;i<quickBookingDAO.selectFilmSectionTimeByFilmId(filmId).size();i++) {
			sectionsResult.add(quickBookingDAO.selectFilmSectionTimeByFilmId(filmId).get(i).getFilmSectionTime());
		}
		return sectionsResult;
	}
	
	
	@Transactional
	public List<Timestamp> selectThisFilmsSections(String filmId) {
		SimpleDateFormat sdfDate = new SimpleDateFormat("M-d.(EEE)");
		System.out.println("0104測試: "+filmId);
		//用電影名稱找到電影ID
//		int filmidResult = quickBookingDAO.selectFilmidByFilmname(filmId);
		List<Timestamp> sectionsResult = new ArrayList<Timestamp>();
		
		//用電影ID產生該電影所有場次的List
		for(int i = 0;i<quickBookingDAO.selectFilmSectionTimeByFilmId(Integer.parseInt(filmId)).size();i++) {
			sectionsResult.add(quickBookingDAO.selectFilmSectionTimeByFilmId(Integer.parseInt(filmId)).get(i).getFilmSectionTime());
		}
		
		return sectionsResult;
	}
	
	
	
	@Transactional
	public List<String> toDates(String filmId) {
		//電影名稱->日期
		System.out.println("datesResult"+filmId);
		SimpleDateFormat sdfDate = new SimpleDateFormat("M-d.(EEE)");
		sectionsResult = selectThisFilmsSections(filmId);
		List<String> datesResult = new ArrayList<String>();
		
		String temp="";
		for(int i=0 ;i<sectionsResult.size();i++) {
			String theDate = sdfDate.format(sectionsResult.get(i));
			theDate = theDate.replace('-', '月').replace('.', '日');
			if(!theDate.equals(temp)) {
				datesResult.add(theDate);
				temp=theDate;
			}
		}

//		System.out.println(datesResult+"service");
		return datesResult;
	}
	
	
	@Transactional
	public List<String> toTimes(String filmName) {
		//日期->時間
		
//		System.out.println("toTimes--> "+filmName);
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm");
		List<String> timesResult = new ArrayList<String>();
		
		SimpleDateFormat dsfchoose = new SimpleDateFormat("yyyy-M-d HH:mm:ss");
		String newParam = filmName.substring(0, 4);
//		System.out.println(newParam);
		newParam = newParam.replace('月', '-').replace('日', ' ');
		newParam = "2018-"+newParam+" 00:00:00.0";
		
//System.out.println("處理filmName字串為日期字串newParam: "+newParam);
		
		Date paramDate =null;
		try {
			paramDate = dsfchoose.parse(newParam);
		} catch (ParseException e) {
			e.printStackTrace();
		}
//System.out.println("處理日期字串newParam為paramDate(utilDate)= "+paramDate);
		
		for(int i=0; i<sectionsResult.size();i++) {
			
//System.out.println("比對"+sectionsResult.get(i)+"和"+paramDate);
//System.out.println(DateUtils.isSameDay(sectionsResult.get(i),paramDate));
			if(DateUtils.isSameDay(sectionsResult.get(i),paramDate)) {
				String theDate  = sdfTime.format(sectionsResult.get(i));
				timesResult.add(theDate);
			}
		}
		
		return timesResult;
	}
}
