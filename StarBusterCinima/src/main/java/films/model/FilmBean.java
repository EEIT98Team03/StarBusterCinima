package films.model;

import java.sql.Date;
import java.util.Arrays;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "FILM")
public class FilmBean {
	@Id		
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="filmId")
	private int filmId;
	private String filmName;
	private String engName;
	private String lengthOfFilm;
	private String genre;
	private String filmLevel;
//	@DateTimeFormat(pattern="yyyy-MM-dd")  
	private Date udate;
//	@DateTimeFormat(pattern="yyyy-MM-dd") 
	private Date ddate;
	private int weight;
//	private String director;
//	private String actor;
//	private String trailer;
//	private String language;
//	private String shortIntro;
//	private String longIntro;
	private String posterLarge;
	private byte[] posterMedium;
//	private float scoreImdb;
//	private int scoreRt;
//	private int scoreMember;
	
	public int getFilmId() {
		return filmId;
	}
	public void setFilmId(int filmId) {
		this.filmId = filmId;
	}
	public String getFilmName() {
		return filmName;
	}
	public void setFilmName(String filmName) {
		this.filmName = filmName;
	}
	public String getEngName() {
		return engName;
	}
	public void setEngName(String engName) {
		this.engName = engName;
	}
//	public String getShortIntro() {
//		return shortIntro;
//	}
//	public void setShortIntro(String shortIntro) {
//		this.shortIntro = shortIntro;
//	}
//	public String getLongIntro() {
//		return longIntro;
//	}
//	public void setLongIntro(String longIntro) {
//		this.longIntro = longIntro;
//	}
	public String getLengthOfFilm() {
		return lengthOfFilm;
	}
	public void setLengthOfFilm(String lengthOfFilm) {
		this.lengthOfFilm = lengthOfFilm;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getFilmLevel() {
		return filmLevel;
	}
	public void setFilmLevel(String filmLevel) {
		this.filmLevel = filmLevel;
	}
//	public String getDirector() {
//		return director;
//	}
//	public void setDirector(String director) {
//		this.director = director;
//	}
//	public String getActor() {
//		return actor;
//	}
//	public void setActor(String actor) {
//		this.actor = actor;
//	}
	public String getPosterLarge() {
		return posterLarge;
	}
	public void setPosterLarge(String posterLarge) {
		this.posterLarge = posterLarge;
	}
//	public byte[] getYosterMedium() {
//		return yosterMedium;
//	}
//	public void setYosterMedium(byte[] yosterMedium) {
//		this.yosterMedium = yosterMedium;
//	}
//	public String getTrailer() {
//		return trailer;
//	}
//	public void setTrailer(String trailer) {
//		this.trailer = trailer;
//	}
//	public float getScoreImdb() {
//		return scoreImdb;
//	}
//	public void setScoreImdb(float scoreImdb) {
//		this.scoreImdb = scoreImdb;
//	}
//	public int getScoreRt() {
//		return scoreRt;
//	}
//	public void setScoreRt(int scoreRt) {
//		this.scoreRt = scoreRt;
//	}
//	public int getScoreMember() {
//		return scoreMember;
//	}
//	public void setScoreMember(int scoreMember) {
//		this.scoreMember = scoreMember;
//	}
//	public String getLanguage() {
//		return language;
//	}
//	public void setLanguage(String language) {
//		this.language = language;
//	}
	public Date getUdate() {
		return udate;
	}
	public void setUdate(Date udate) {
		this.udate = udate;
	}
	public Date getDdate() {
		return ddate;
	}
	public void setDdate(Date ddate) {
		this.ddate = ddate;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public byte[] getPosterMedium() {
		return posterMedium;
	}
	public void setPosterMedium(byte[] posterMedium) {
		this.posterMedium = posterMedium;
	}
	
	
	
	
	@Override
	public String toString() {
		return "FilmBean [filmId=" + filmId + ", filmName=" + filmName + ", engName=" + engName + ", lengthOfFilm="
				+ lengthOfFilm + ", genre=" + genre + ", filmLevel=" + filmLevel + ", udate=" + udate + ", ddate="
				+ ddate + ", weight=" + weight + "]";
	}
	
	
	
	

}
