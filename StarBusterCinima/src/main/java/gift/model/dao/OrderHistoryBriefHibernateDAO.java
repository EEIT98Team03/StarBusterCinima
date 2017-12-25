package gift.model.dao;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gift.model.OrderHistoryBriefBean;
import gift.model.OrderHistoryBriefDAO;
import gift.model.OrderHistoryDetailBean;

@Repository
public class OrderHistoryBriefHibernateDAO implements OrderHistoryBriefDAO {
	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private OrderHistoryDetailHibernateDAO orderHistoryDetailHibernateDAO;

	public Session session() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public OrderHistoryBriefBean select(int orderId) {
		return this.session().get(OrderHistoryBriefBean.class, orderId);
	}

	@Override
	public List<OrderHistoryBriefBean> select() {
		Query<OrderHistoryBriefBean> query = this.session().createQuery("from OrderHistoryBriefBean",
				OrderHistoryBriefBean.class);
		return query.getResultList();
	}

	@Override
	public OrderHistoryBriefBean insert(OrderHistoryBriefBean beanBrief, OrderHistoryDetailBean beanDetail) {
		OrderHistoryBriefBean insertBrief = this.select(beanBrief.getOrderId());
		if (insertBrief == null) {
			this.session().save(beanBrief);
		}
		OrderHistoryDetailBean insertDetail= orderHistoryDetailHibernateDAO.select(beanDetail.getOrderId());
		if (insertDetail == null) {
			this.session().save(beanDetail);
		}		
		return beanBrief;
	}

	@Override
	public OrderHistoryBriefBean update(int orderId, int memberId, int totalAmountOriginal, int discount,
			int totalAmountFinal, String payMethod, String receiverName, String receiverAddressArea,
			int receiverAddressZipCode, String receiverAddressMainPart, String receiverPhone, String orderStatus,
			Timestamp purchasedTime) {

		OrderHistoryBriefBean update = this.select(orderId);
		if (update != null) {
			update.setMemberId(memberId);
			update.setTotalAmountOriginal(totalAmountOriginal);
			update.setDiscount(discount);
			update.setTotalAmountFinal(totalAmountFinal);
			update.setPayMethod(payMethod);
			update.setReceiverName(receiverName);
			update.setReceiverAddressArea(receiverAddressArea);
			update.setReceiverAddressZipCode(receiverAddressZipCode);
			update.setReceiverAddressMainPart(receiverAddressMainPart);
			update.setReceiverPhone(receiverPhone);
			update.setOrderStatus(orderStatus);
			update.setPurchasedTime(purchasedTime);
		}
		return update;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Map<String, String>> getGoodMembers(java.sql.Date beginDate, java.sql.Date finishDate) {
		String queryString = "select new map(count(memberId) as TOC, sum(totalAmountFinal) as TAF, memberId as MID) from OrderHistoryBriefBean where purchasedTime <= ? and purchasedTime >= ? and orderStatus != '取消' group by memberId order by Sum(totalAmountFinal) DESC";
		List<Map<String, String>> query = (List<Map<String, String>>) this.session().createQuery(queryString)
				.setParameter(0, finishDate).setParameter(1, beginDate).list();
		
		return query;

		// SELECT TOP 10 PERCENT SUM([totalAmountFinal])
		// , Member.memberId, OrderHistoryBrief.memberId
		// FROM [StarBusterCinima].[dbo].[OrderHistoryBrief]
		// FULL JOIN Member ON Member.memberId = OrderHistoryBrief.memberId
		// GROUP BY Member.memberId, OrderHistoryBrief.memberId
		// ORDER BY SUM([totalAmountFinal]) DESC

		// List<?> query = (List<?>) this.session().createNativeQuery("select top (?)
		// percent sum(totalAmountFinal), memberId from OrderHistoryBriefBean where
		// purchasedTime <= ? and purchasedTime >= ? and orderStatus != '取消' group by
		// memberId order by Sum(totalAmountFinal) DESC")
		// .setParameter(0, maxResults)
		// .setParameter(1, finishDate)
		// .setParameter(2, beginDate)
		// .list();

	}

	@Override
	public int delete(int orderId) {
		OrderHistoryBriefBean delete = this.select(orderId);
		if (delete == null) {
			return 0;
		}
		delete.setOrderStatus("取消");
		return 1;
	}
}
