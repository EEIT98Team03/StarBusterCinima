package booking.model;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import films.model.FilmBean;
import films.model.FilmSectionBean;

public interface BookingDAO {
	TicketOrderBean insert(TicketOrderBean bean);
	String selectNameById(int filmId);
	int makeSectionId(int filmId , Timestamp filmsectiontime);
	Map<String,String> pickSeats(int sectionId);
	String updateUnavailableSeats(int sectionId,String selectedSeats);
}
