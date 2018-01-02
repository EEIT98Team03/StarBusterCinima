package films.model;

import java.sql.Timestamp;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="FILMSECTION")
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
	public Timestamp getFilmSectionTime() {
		return filmSectionTime;
	}
	public void setFilmSectionTime(Timestamp filmSectionTime) {
		this.filmSectionTime = filmSectionTime;
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
	
	@Override
	public String toString() {
		return "FilmSectionBean [filmSectionId=" + filmSectionId + ", filmId=" + filmId + ", filmSectionTime="
				+ filmSectionTime + ", roomSeats=" + roomSeats + ", unavailableSeats=" + unavailableSeats
				+ ", sectionroom=" + sectionroom + "]";
	}
	
<<<<<<< HEAD
	public FilmSectionBean(int filmSectionId, int filmId, Timestamp filmSectionTime, String roomSeats,
			String unavailableSeats, String sectionroom) {
		super();
		this.filmSectionId = filmSectionId;
		this.filmId = filmId;
		this.filmSectionTime = filmSectionTime;
		this.roomSeats = roomSeats;
		this.unavailableSeats = unavailableSeats;
		this.sectionroom = sectionroom;
	}
	public FilmSectionBean() {
		super();	
	}
=======
	public static void main(String[] args) {
		String a = ",1_1,1_2";
		String b = "1_1,1_2";
		System.out.println(a.substring(0, 1).equals(","));
	}
	
>>>>>>> branch 'master' of https://github.com/EEIT98Team03/StarBusterCinima.git
}
