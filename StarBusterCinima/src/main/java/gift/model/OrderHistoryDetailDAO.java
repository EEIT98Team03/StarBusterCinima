package gift.model;

import java.util.List;

public interface OrderHistoryDetailDAO {
	OrderHistoryDetailBean select(int orderId);
	List<OrderHistoryDetailBean> select();
	OrderHistoryDetailBean insert(OrderHistoryDetailBean bean);
	OrderHistoryDetailBean update(int orderId, int memberId, int itemCategoryId,
			String itemCategoryName, int itemId, String itemName,
			int unitPrice, int itemQquantity, int sumTotal);
}
