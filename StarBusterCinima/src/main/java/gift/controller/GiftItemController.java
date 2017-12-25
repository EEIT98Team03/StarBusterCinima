package gift.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import gift.model.GiftItemBean;
import gift.model.GiftItemService;

@Controller
@RequestMapping("/gift.controller")
public class GiftItemController {
	
	@Autowired
	GiftItemService giftItemService;

	@RequestMapping(method = {RequestMethod.GET, RequestMethod.POST})
	public String method(Model model) {
		
		List<GiftItemBean> allGiftItems = giftItemService.getGiftItem();
		model.addAttribute("GiftItems", allGiftItems);
		return "shopping.success";
	}
}
