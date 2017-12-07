package gift.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class GiftItemService {
	@Autowired
	GiftIttemDAO GiftItemDAO;
	
	@Transactional(readOnly = true)
	public GiftItemBean getAllGiftItems() {
		
		
		return null;
	}
}
