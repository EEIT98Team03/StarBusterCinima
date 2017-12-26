package booking.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import booking.model.QuickBookingDAO;
import films.model.FilmBean;

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

}
