package booking.model;

import films.model.FilmBean;

public interface StartBookingDAO {
	FilmBean select(int filmId);
}
