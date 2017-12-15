package booking.model;

import java.util.List;

import org.json.simple.JSONValue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Transactional;

import films.model.FilmBean;

@Service
@Transactional
public class QuickBookingService {

	@Autowired
	QuickBookingDAO quickBookingDAO;
	
	List<FilmBean> result ;
	
	@Transactional
	public List<FilmBean> selectAllfilms(){//搜尋所有電影
		result = quickBookingDAO.selectFilms();
		return result;
	}
	

	
}
