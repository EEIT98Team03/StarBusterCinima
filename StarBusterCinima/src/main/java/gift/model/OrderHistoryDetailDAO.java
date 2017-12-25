package gift.model;

import java.util.List;

public interface OrderHistoryDetailDAO {
	OrderHistoryDetailBean select(int orderId);
	List<OrderHistoryDetailBean> select();
	OrderHistoryDetailBean insert(OrderHistoryDetailBean bean);
	OrderHistoryDetailBean update(int orderId, String memberEmail,
			int itemId, String itemName, String memberHiddenName,
			int unitPrice, int itemQquantity, int sumTotal);
}
