package gift.model.dao;

import java.sql.Timestamp;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gift.model.PotentialItemListBean;
import gift.model.PotentialItemListDAO;

@Repository
public class PotentialItemListHibernateDAO implements PotentialItemListDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session session() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public PotentialItemListBean select(int potentialId) {
		return this.session().get(PotentialItemListBean.class, potentialId);
	}

	@Override
	public List<PotentialItemListBean> select() {
		Query<PotentialItemListBean> query = this.session().createQuery("from PotentialItemList", PotentialItemListBean.class);
		return query.getResultList();
	}

	@Override
	public PotentialItemListBean insert(PotentialItemListBean bean) {
		PotentialItemListBean insert = this.select(bean.getPotentialId());
		if (insert == null) {
			this.session().save(bean);
		}
		return bean;
	}

	@Override
	public PotentialItemListBean update(int potentialId, int memberID, String itemCategoryID, String itemCategoryName,
			int itemID, String itemName, Timestamp createdTime) {
		PotentialItemListBean update = this.select(potentialId);
		if (update != null) {
			update.setMemberID(memberID);
			update.setItemCategoryID(itemCategoryID);
			update.setItemCategoryName(itemCategoryName);
			update.setItemID(itemID);
			update.setItemName(itemName);
			update.setCreatedTime(createdTime);
		}
		return update;
	}

	@Override
	public boolean delete(int potentialId) {
		PotentialItemListBean delete = this.select(potentialId);
		if (delete != null) {
			this.session().delete(delete);
			return true;
		}
		return false;
	}

}
