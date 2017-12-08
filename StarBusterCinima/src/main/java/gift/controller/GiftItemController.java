package gift.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import gift.model.GiftItemBean;
import gift.model.GiftItemService;

@Controller
@RequestMapping("/shopping/gift.controller")
public class GiftItemController {
	
	@Autowired
	GiftItemService giftItemService;
	@RequestMapping(method= {RequestMethod.GET, RequestMethod.POST})
	public String method() {
		
		List<GiftItemBean> allGiftItems = giftItemService.getAllGiftItems();
		System.out.println(allGiftItems);
		return "shopping.success";
	}
}
