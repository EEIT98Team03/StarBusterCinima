package booking.model;

import java.util.List;

import films.model.FilmBean;

public interface QuickBookingDAO {
	List<FilmBean> selectFilms(); 
}
