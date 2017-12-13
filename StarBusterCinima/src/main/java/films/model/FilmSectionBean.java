package films.model;

import java.sql.Timestamp;

public class FilmSectionBean {

	private String FilmSectionID;
	private Timestamp FilmSectionTime;
	private String FilmID;

	@Override
	public String toString() {
		return "FilmSectionBean [FilmSectionID=" + FilmSectionID + ", FilmSectionTime=" + FilmSectionTime + ", FilmID="
				+ FilmID + "]";
	}
	public String getFilmSectionID() {
		return FilmSectionID;
	}
	public void setFilmSectionID(String filmSectionID) {
		FilmSectionID = filmSectionID;
	}
	public Timestamp getFilmSectionTime() {
		return FilmSectionTime;
	}
	public void setFilmSectionTime(Timestamp filmSectionTime) {
		FilmSectionTime = filmSectionTime;
	}
	public String getFilmID() {
		return FilmID;
	}
	public void setFilmID(String filmID) {
		FilmID = filmID;
	}
	
}
