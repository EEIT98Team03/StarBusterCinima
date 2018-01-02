package booking.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import booking.model.QuickBookingDAO;
import films.model.FilmBean;
import films.model.FilmSectionBean;

@Repository
public class QuickBookingHibernateDAO implements QuickBookingDAO {

	
	@Autowired
	SessionFactory sessionFactory;
	
	public Session session() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public List<FilmBean> selectFilms() {
		Query<FilmBean> query = this.session().createQuery("from FilmBean", FilmBean.class);		
		return query.getResultList();
	}
	
	@Override
	public int selectFilmidByFilmname(String filmName) {
		//select filmid from film where filmname = ?
		Query<FilmBean> query = this.session().createQuery("from FilmBean where filmName = ?", FilmBean.class);
		query.setParameter(0, filmName);
		return query.getResultList().get(0).getFilmId();
	}
	
	@Override
	public List<FilmSectionBean> selectFilmSectionTimeByFilmId(int filmId) {
		//select FilmSectionTime from FilmSection where FilmId = ?
		Query<FilmSectionBean> query = this.session().createQuery("from FilmSectionBean where filmId = ?", FilmSectionBean.class);
		query.setParameter(0, filmId);
		return query.getResultList();
	}
	

}
