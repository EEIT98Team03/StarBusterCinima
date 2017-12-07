package gift.model;

import java.util.List;

public interface GiftIttemDAO {
	GiftItemBean select(String itemId);
	List<GiftItemBean> select();
}
