package adminstrator.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import adminstrator.model.AdministratorBean;
import adminstrator.model.AdminstratorDAO;
@Repository
public class AdminstratorHibernateDAO implements AdminstratorDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public Session session() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public AdministratorBean selectByEmail(String email) {
		Query<AdministratorBean> query = this.session().createQuery("from AdministratorBean where email = :xxx",AdministratorBean.class);
		query.setParameter("xxx",email);
		List<AdministratorBean> list = query.getResultList();
		if(list.size()!=0) {
			return list.get(0);
		}
		return null;
	}

}
