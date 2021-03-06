package films.model;

import java.sql.Timestamp;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import booking.model.BookingDAO;

@Service
@Transactional
public class filmsService {
	@Autowired
	FilmDAO filmDAO;
	BookingDAO BookingDAO;

	public static void main(String[] args) {
		

	}
	
	public List<Object[]> SelectAllSection() {	
		List<Object[]> list =  filmDAO.SelectFilmSectionAndFilm();	
		return list;		
	}
	
	public boolean InsertFilmSection(FilmSectionBean bean) {	
		boolean result =  filmDAO.InsertFilmSection(bean);
		return result;		
	}
	
	public boolean DeleteFilmSection(int filmsectionId) {
		
		boolean result = filmDAO.DeleteFilmSection(filmsectionId);		
		return result;		
	}
	
	public boolean UpdateFilmSection(int filmsectionId,Timestamp filmsectiontime) {
		
		boolean result = filmDAO.UpdateFilmSection(filmsectionId, filmsectiontime);		
		return result;		
	}
	
	public List<Object[]> SelectSectionCount(){
		
		
		
		return filmDAO.SelectSectionCount();
		
	}
	
	public List<FilmBean> selectAllfilms(){//搜尋所有電影		
		
		List<FilmBean> filmResult = filmDAO.selectAll();
		System.out.println(filmResult);
		return filmResult;
	}
	
}
