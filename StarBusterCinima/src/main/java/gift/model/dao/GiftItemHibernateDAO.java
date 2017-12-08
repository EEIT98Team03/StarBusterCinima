package gift.model.dao;

import java.sql.Timestamp;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gift.model.GiftItemBean;
import gift.model.GiftIttemDAO;
import gift.tool.StringGenerator;

@Repository
public class GiftItemHibernateDAO implements GiftIttemDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session session() {
		return sessionFactory.getCurrentSession();
	}

	public static void main(String[] args) {

		String itemName = "a";
		String itemCategoryId = StringGenerator.getRandomString(16, true, false);
		String itemCategoryName = "b";
		int unitPrice = 0;
		String spec = "c";
		String itemPhoto = "d";
		int isAvailable = 1;
		Timestamp createdTime = StringGenerator.getCurrentTime();

		GiftItemBean bean = new GiftItemBean();
		
		bean.setItemName(itemName);
		bean.setItemCategoryId(itemCategoryId);
		bean.setItemCategoryName(itemCategoryName);
		bean.setUnitPrice(unitPrice);
		bean.setSpec(spec);
		bean.setItemPhoto(itemPhoto);
		bean.setIsAvailable(isAvailable);
		bean.setCreatedTime(createdTime);
		
		
		
		GiftItemHibernateDAO dao = new GiftItemHibernateDAO();
		dao.session().beginTransaction();
		System.out.println(dao.insert(bean));
		dao.session().getTransaction().commit();
		
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

}
