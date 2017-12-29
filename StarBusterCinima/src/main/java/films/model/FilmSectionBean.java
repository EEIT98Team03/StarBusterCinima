package films.model;

import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "FilmSection")
public class FilmSectionBean {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int filmSectionId;
	
	private int filmId; 
	private Timestamp filmSectionTime ;
	private String roomSeats ; 
	private String unavailableSeats;
	private String sectionroom ;
	public int getFilmSectionId() {
		return filmSectionId;
	}
	public void setFilmSectionId(int filmSectionId) {
		this.filmSectionId = filmSectionId;
	}
	public int getFilmId() {
		return filmId;
	}
	public void setFilmId(int filmId) {
		this.filmId = filmId;
	}
	public String getRoomSeats() {
		return roomSeats;
	}
	public void setRoomSeats(String roomSeats) {
		this.roomSeats = roomSeats;
	}
	public String getUnavailableSeats() {
		return unavailableSeats;
	}
	public void setUnavailableSeats(String unavailableSeats) {
		this.unavailableSeats = unavailableSeats;
	}
	public String getSectionroom() {
		return sectionroom;
	}
	public void setSectionroom(String sectionroom) {
		this.sectionroom = sectionroom;
	}
	
	public Timestamp getFilmSectionTime() {
		return filmSectionTime;
	}
	public void setFilmSectionTime(Timestamp filmSectionTime) {
		this.filmSectionTime = filmSectionTime;
	}
	@Override
	public String toString() {
		return "FilmSectionBean [filmSectionId=" + filmSectionId + ", filmId=" + filmId + ", filmSectiontime="
				+ filmSectionTime + ", roomSeats=" + roomSeats + ", unavailableSeats=" + unavailableSeats
				+ ", sectionroom=" + sectionroom + "]";
	}
	
	
	
}
