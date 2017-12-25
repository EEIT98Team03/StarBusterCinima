package films.model;

import java.util.List;
public interface FilmDAO {

	FilmBean selectById(String filmId);
	FilmBean selectByFilmName(String filmName);
	FilmBean selectByEngName(String engName);
	List<FilmBean> selectAll();
	List<FilmBean> selectMovieByGenre(String genre);
	List<FilmBean> selectMovieByDirector(String director);
	List<FilmBean> selectMovieByActor(String actor);
	List<FilmBean> selectMovieByScore(int score);
	FilmBean insert(FilmBean bean);
	boolean delete(int memberId);
	
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
	
}
