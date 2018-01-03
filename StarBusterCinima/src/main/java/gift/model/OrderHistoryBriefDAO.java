package gift.model;

import java.util.List;

public interface OrderHistoryBriefDAO {
	OrderHistoryBriefBean select(int orderId);
	List<OrderHistoryBriefBean> select();
	OrderHistoryBriefBean insert(OrderHistoryBriefBean beanBrief, OrderHistoryDetailBean beanDetail);
	OrderHistoryBriefBean update(int orderId, String memberEmail, int totalAmountOriginal, int discount,
			int totalAmountFinal, String payMethod, String receiverName, String receiverAddressArea,
			String receiverAddressMainPart, String receiverPhone, String orderStatus,
			java.sql.Timestamp purchasedTime);
	int delete(int orderId);

	//列出beginDate到finishDate之間會員的消費總金額
	List<?> getGoodMembers(java.sql.Date beginDate, java.sql.Date finishDate);
	
}
