package films.model.dao;

import java.sql.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import films.model.FilmBean;
import films.model.FilmDAO;
import member.model.MemberBean;
@Component
public class FilmHibernateDAO implements FilmDAO {

	@Autowired
	SessionFactory sessionFactory;
	public Session session() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public FilmBean selectById(String filmId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FilmBean selectByFilmName(String filmName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FilmBean selectByEngName(String engName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FilmBean> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FilmBean> selectMovieByGenre(String genre) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FilmBean> selectMovieByDirector(String director) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FilmBean> selectMovieByActor(String actor) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FilmBean> selectMovieByScore(int score) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FilmBean insert(FilmBean bean) {
		FilmBean insert = this.selectById(bean.getFilmId());
		if (insert == null) {
			this.session().save(bean);
			return bean;
		}
		return null;
	}

	@Override
	public boolean delete(int memberId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public FilmBean update(String filmId, String filmName, String engName, String shortIntro, String longIntro,
			String lengthOfFilm, String genre, String filmLevel, Date udate, Date ddate, String director, String actor,
			String posterLarge, byte[] posterMedium, String trailer, float scoreImdb, int scoreRt, int scoreMember,
			String language) {
		// TODO Auto-generated method stub
		return null;
	}


	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}


}
