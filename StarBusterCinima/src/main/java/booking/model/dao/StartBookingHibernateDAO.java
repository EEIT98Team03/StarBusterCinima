package booking.model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import booking.model.StartBookingDAO;
import films.model.FilmBean;

@Repository
@Transactional
public class StartBookingHibernateDAO implements StartBookingDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public Session session() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public FilmBean select(int filmId) {
		return this.session().get(FilmBean.class,filmId );
	}

}
