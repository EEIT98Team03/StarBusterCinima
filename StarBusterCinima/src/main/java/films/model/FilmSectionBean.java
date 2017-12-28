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
	private Timestamp filmSectionTime;
	private int filmId;
	public int getFilmSectionId() {
		return filmSectionId;
	}
	public void setFilmSectionId(int filmSectionId) {
		this.filmSectionId = filmSectionId;
	}
	public Timestamp getFilmSectionTime() {
		return filmSectionTime;
	}
	public void setFilmSectionTime(Timestamp filmSectionTime) {
		this.filmSectionTime = filmSectionTime;
	}
	public int getFilmId() {
		return filmId;
	}
	public void setFilmId(int filmId) {
		this.filmId = filmId;
	}
	@Override
	public String toString() {
		return "FilmSectionBean [filmSectionId=" + filmSectionId + ", filmSectionTime=" + filmSectionTime + ", filmId="
				+ filmId + "]";
	}
	
}
