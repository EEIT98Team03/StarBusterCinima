package booking.model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import booking.model.BookingDAO;
import booking.model.TicketOrderBean;
import films.model.FilmBean;
@Repository
public class BookingHibernateDAO implements BookingDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public Session session() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public TicketOrderBean insert(TicketOrderBean bean) {
		this.session().save(bean);
		return bean;
	}



}
