package films.model.dao;

import java.sql.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import films.model.FilmBean;
import films.model.FilmDAO;
import member.model.MemberBean;


@Repository
public class FilmHibernateDAO implements FilmDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public Session session() {
		return sessionFactory.getCurrentSession();
	}
	
	
	
	@Override
	public FilmBean selectById(int filmId) {
		return this.session().get(FilmBean.class, filmId);
	}
	


}
