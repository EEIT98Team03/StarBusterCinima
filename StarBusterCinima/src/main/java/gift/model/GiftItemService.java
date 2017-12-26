package gift.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class GiftItemService {
	@Autowired
	GiftIttemDAO giftItemDAO;

	@Transactional(readOnly = true)
	public List<GiftItemBean> getGiftItem() {
		return giftItemDAO.select();
	}
	
	@Transactional(readOnly = true)
	public GiftItemBean getGiftItem(int itemId) {
		return giftItemDAO.select(itemId);
	}

	public GiftItemBean getGiftItem(String itemNameHidden) {
		List<GiftItemBean> bean = giftItemDAO.select(itemNameHidden);
		if (bean != null) {
			return bean.get(0);
		}
		return null;
	}
}
