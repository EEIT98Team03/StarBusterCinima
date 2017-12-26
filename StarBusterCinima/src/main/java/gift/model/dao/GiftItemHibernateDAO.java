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
	private SessionFactory sessionFactory;

	public Session session() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public GiftItemBean insert(GiftItemBean bean) {
		GiftItemBean insert = this.select(bean.getItemId());
		if (insert == null) {
			this.session().save(bean);
		}
		return bean;
	}

	@Override
	public GiftItemBean select(int itemId) {
		return this.session().get(GiftItemBean.class, itemId);
	}

	@Override
	public List<GiftItemBean> select() {
		Query<GiftItemBean> query = this.session().createQuery("from GiftItemBean", GiftItemBean.class);
		return query.getResultList();
	}

	@Override
	public List<GiftItemBean> select(String itemNameHidden) {
		Query<GiftItemBean> query = this.session().createQuery("from GiftItemBean where itemNameHidden = :itemNameHidden", GiftItemBean.class);
		query.setParameter("itemNameHidden", itemNameHidden);
		List<GiftItemBean> result = query.list();
		if (result != null && result.size() != 0) {
			return result;
		}
		return null;
	}

}
