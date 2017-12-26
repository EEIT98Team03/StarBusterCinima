package gift.model;

import java.util.List;

public interface GiftIttemDAO {
	GiftItemBean select(int itemId);
	List<GiftItemBean> select();
	List<GiftItemBean> select(String itemNameHidden);
	GiftItemBean insert(GiftItemBean bean);
}
