package films.model;

import java.sql.Date;
import java.util.Arrays;

public class FilmBean {
	private String FilmId;
	private String FilmName;
	private String EngName;
	private String ShortIntro;
	private String LongIntro;
	private String LengthOfFilm;
	private String Genre;
	private String FilmLevel;
	private Date Udate;
	private Date Ddate;
	private String Director;
	private String Actor;
	private String PosterLarge;
	private byte[] PosterMedium;
	private String Trailer;
	private float ScoreImdb;
	private int ScoreRt;
	private int ScoreMember;
	private String Language;
	
	
	public String getFilmId() {
		return FilmId;
	}
	public void setFilmId(String filmId) {
		FilmId = filmId;
	}
	public String getFilmName() {
		return FilmName;
	}
	public void setFilmName(String filmName) {
		FilmName = filmName;
	}
	public String getEngName() {
		return EngName;
	}
	public void setEngName(String engName) {
		EngName = engName;
	}
	public String getShortIntro() {
		return ShortIntro;
	}
	public void setShortIntro(String shortIntro) {
		ShortIntro = shortIntro;
	}
	public String getLongIntro() {
		return LongIntro;
	}
	public void setLongIntro(String longIntro) {
		LongIntro = longIntro;
	}
	public String getLengthOfFilm() {
		return LengthOfFilm;
	}
	public void setLengthOfFilm(String lengthOfFilm) {
		LengthOfFilm = lengthOfFilm;
	}
	public String getGenre() {
		return Genre;
	}
	public void setGenre(String genre) {
		Genre = genre;
	}
	public String getFilmLevel() {
		return FilmLevel;
	}
	public void setFilmLevel(String filmLevel) {
		FilmLevel = filmLevel;
	}
	public Date getUdate() {
		return Udate;
	}
	public void setUdate(Date udate) {
		Udate = udate;
	}
	public Date getDdate() {
		return Ddate;
	}
	public void setDdate(Date ddate) {
		Ddate = ddate;
	}
	public String getDirector() {
		return Director;
	}
	public void setDirector(String director) {
		Director = director;
	}
	public String getActor() {
		return Actor;
	}
	public void setActor(String actor) {
		Actor = actor;
	}
	public String getPosterLarge() {
		return PosterLarge;
	}
	public void setPosterLarge(String posterLarge) {
		PosterLarge = posterLarge;
	}
	public byte[] getPosterMedium() {
		return PosterMedium;
	}
	public void setPosterMedium(byte[] posterMedium) {
		PosterMedium = posterMedium;
	}
	public String getTrailer() {
		return Trailer;
	}
	public void setTrailer(String trailer) {
		Trailer = trailer;
	}
	public float getScoreImdb() {
		return ScoreImdb;
	}
	public void setScoreImdb(float scoreImdb) {
		ScoreImdb = scoreImdb;
	}
	public int getScoreRt() {
		return ScoreRt;
	}
	public void setScoreRt(int scoreRt) {
		ScoreRt = scoreRt;
	}
	public int getScoreMember() {
		return ScoreMember;
	}
	public void setScoreMember(int scoreMember) {
		ScoreMember = scoreMember;
	}
	public String getLanguage() {
		return Language;
	}
	public void setLanguage(String language) {
		Language = language;
	}
	@Override
	public String toString() {
		return "FilmBean [FilmId=" + FilmId + ", FilmName=" + FilmName + ", EngName=" + EngName + ", ShortIntro="
				+ ShortIntro + ", LongIntro=" + LongIntro + ", LengthOfFilm=" + LengthOfFilm + ", Genre=" + Genre
				+ ", FilmLevel=" + FilmLevel + ", Udate=" + Udate + ", Ddate=" + Ddate + ", Director=" + Director
				+ ", Actor=" + Actor + ", PosterLarge=" + PosterLarge + ", PosterMedium="
				+ Arrays.toString(PosterMedium) + ", Trailer=" + Trailer + ", ScoreImdb=" + ScoreImdb + ", ScoreRt="
				+ ScoreRt + ", ScoreMember=" + ScoreMember + ", Language=" + Language + "]";
	}

}
