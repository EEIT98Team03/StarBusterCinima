package gift.model;

import java.util.List;

public interface PotentialItemListDAO {
	PotentialItemListBean select(int potentialId);
	List<PotentialItemListBean> select();
	PotentialItemListBean insert(PotentialItemListBean bean);
	PotentialItemListBean update(int potentialId, int memberID, String itemCategoryID, String itemCategoryName,
			int itemID, String itemName, java.sql.Timestamp createdTime);
	boolean delete(int potentialId);
}
