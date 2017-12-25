package gift.model;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

public class GiftItemService {

	@Autowired
	GiftIttemDAO giftItemDAO;

	@Transactional()
	public List<GiftItemBean> getGiftItem() {
		return giftItemDAO.select();
	}
	
	@Transactional()
	public GiftItemBean getGiftItem(int itemId) {
		return giftItemDAO.select(itemId);
	}

	public GiftItemBean getGiftItem(String itemNameHidden) {
		return giftItemDAO.select(itemNameHidden);
	}
}
