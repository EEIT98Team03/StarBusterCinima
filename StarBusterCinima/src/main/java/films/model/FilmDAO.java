package films.model;

import java.sql.Timestamp;
import java.util.List;
public interface FilmDAO {

	boolean insertFilm(FilmBean bean);
	FilmBean selectByFilmName(String filmName);
	FilmBean selectByEngName(String engName);
	List<FilmBean> selectAll();
	List<FilmBean> selectMovieByGenre(String genre);
	List<FilmBean> selectMovieByDirector(String director);
	List<FilmBean> selectMovieByActor(String actor);
	List<FilmBean> selectMovieByScore(int score);
	FilmBean insert(FilmBean bean);
	boolean updateposter(byte[] img,int FilmID);
	boolean delete(int memberId);
	List<Object[]> SelectFilmSectionAndFilm();
	boolean InsertFilmSection(FilmSectionBean bean);
	boolean DeleteFilmSection(int filmsectionId);
	FilmSectionBean SelectFilmSection(int filmsectionId);
	boolean UpdateFilmSection(int filmsectionId,Timestamp filmsectiontime);
	boolean UptdteFilmstatus(int filmId);
	List<Object[]> SelectSectionCount();
	List<FilmBean> selectFilms(); 
	
	FilmBean update(
			String filmId,
			String filmName,
			String engName,
			String shortIntro,
			String longIntro,
			String lengthOfFilm,
			String genre,
			String filmLevel,
			java.sql.Date udate,
			java.sql.Date ddate,
			String director,
			String actor,
			String posterLarge,
			byte[] posterMedium,
			String trailer,
			float scoreImdb,
			int scoreRt,
			int scoreMember,
			String language
			);

	FilmBean selectById(int filmId);
	int selectfilmLength(int filmId);
	boolean updateposter(String img, int filmId);

	
}
