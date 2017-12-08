package gift.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class GiftItemService {
	@Autowired
	GiftIttemDAO GiftItemDAO;

//	List<GiftItemBean> getAllGiftItems = new ArrayList<GiftItemBean>();
//
//	public GiftItemService() {
//		this.getAllGiftItems = getAllGiftItems();
//		System.out.println(getAllGiftItems);
//	}

	@Transactional(readOnly = true)
	public List<GiftItemBean> getAllGiftItems() {
		return GiftItemDAO.select();
	}

}
