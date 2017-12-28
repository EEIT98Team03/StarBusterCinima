package booking.model;

import java.util.List;

import films.model.FilmBean;
import films.model.FilmSectionBean;

public interface QuickBookingDAO {
	List<FilmBean> selectFilms(); 
	int selectFilmidByFilmname(String filmName);
	List<FilmSectionBean> selectFilmSectionTimeByFilmId(int filmId);
}
