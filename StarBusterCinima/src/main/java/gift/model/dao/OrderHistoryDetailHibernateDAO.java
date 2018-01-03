package gift.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gift.model.OrderHistoryDetailBean;
import gift.model.OrderHistoryDetailDAO;

@Repository
public class OrderHistoryDetailHibernateDAO implements OrderHistoryDetailDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public Session session() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public OrderHistoryDetailBean select(int orderId) {
		return this.session().get(OrderHistoryDetailBean.class, orderId);
	}

	@Override
	public List<OrderHistoryDetailBean> select() {
		Query<OrderHistoryDetailBean> query = this.session().createQuery("from OrderHistoryDetailBean", OrderHistoryDetailBean.class);
		return query.getResultList();
	}

	@Override
	public OrderHistoryDetailBean insert(OrderHistoryDetailBean bean) {
		OrderHistoryDetailBean insert = this.select(bean.getItemId());
		if (insert == null) {
			this.session().save(bean);
		}
		return bean;
	}

	@Override
	public OrderHistoryDetailBean update(int orderId, String memberEmail,
			int itemId, String itemName, String itemHiddenName, int unitPrice, int itemQquantity, int sumTotal) {

		OrderHistoryDetailBean update = this.select(orderId);
		if (update != null) {
			update.setMemberEmail(memberEmail);
			update.setItemHiddenName(itemHiddenName);
			update.setItemId(itemId);
			update.setItemName(itemName);
			update.setUnitPrice(unitPrice);
			update.setItemQquantity(itemQquantity);
			update.setSumTotal(sumTotal);
		}
		return update;
	}
	
	public OrderHistoryDetailBean getHotGiftItemBean() {
		Query<OrderHistoryDetailBean> query = this.session().createQuery("select count(itemId) as itemIdCount, itemName from OrderHistoryDetailBean group by itemId, itemName order by count(itemId)", OrderHistoryDetailBean.class);
		
		return null;
	}
}
