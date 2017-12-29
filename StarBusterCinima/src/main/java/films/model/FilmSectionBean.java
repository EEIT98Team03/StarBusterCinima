package films.model;

import java.sql.Timestamp;

import javax.persistence.Column;
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
	@Column(name="filmsectionid")
	private int FilmSectionID;
	@Column(name="filmsectiontime")
	private Timestamp FilmSectionTime;
	@Column(name="filmId")
	private int FilmID;	
	private String sectionroom;
	private String roomSeats;

	@Override
	public String toString() {
		return "FilmSectionBean [FilmSectionID=" + FilmSectionID + ", FilmSectionTime=" + FilmSectionTime + ", FilmID="
				+ FilmID + ", sectionroom=" + sectionroom + ", roomSeats=" + roomSeats + "]";
	}
	public int getFilmSectionID() {
		return FilmSectionID;
	}
	public void setFilmSectionID(int filmSectionID) {
		FilmSectionID = filmSectionID;
	}
	public Timestamp getFilmSectionTime() {
		return FilmSectionTime;
	}
	public void setFilmSectionTime(Timestamp filmSectionTime) {
		FilmSectionTime = filmSectionTime;
	}
	public int getFilmID() {
		return FilmID;
	}
	public void setFilmID(int filmID) {
		FilmID = filmID;
	}
	public String getSectionroom() {
		return sectionroom;
	}
	public void setSectionroom(String sectionroom) {
		this.sectionroom = sectionroom;
	}
	public String getRoomSeats() {
		return roomSeats;
	}
	public void setRoomSeats(String roomSeats) {
		this.roomSeats = roomSeats;
	}
	
}
