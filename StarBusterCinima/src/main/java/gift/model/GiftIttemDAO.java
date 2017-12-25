package gift.model;

import java.util.List;

public interface GiftIttemDAO {
	GiftItemBean select(int itemId);
	List<GiftItemBean> select();
	GiftItemBean select(String itemNameHidden);
	GiftItemBean insert(GiftItemBean bean);
}
