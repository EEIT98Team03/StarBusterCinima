package gift.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gift.model.GiftItemBean;
import gift.model.GiftIttemDAO;

@Repository
public class GiftItemHibernateDAO implements GiftIttemDAO {
	@Autowired
	SessionFactory sessionFactory;

	public Session session() {
		return sessionFactory.getCurrentSession();
	}
	
	public static void main(String[] args) {
		
	}
	
	@Override
	public GiftItemBean select(String itemId) {
		return this.session().get(GiftItemBean.class, itemId);
	}

	@Override
	public List<GiftItemBean> select() {
		Query<GiftItemBean> query = this.session().createQuery("from GiftItemBean", GiftItemBean.class);
		return query.getResultList();
	}

}
