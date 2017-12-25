package gift.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import gift.model.PotentialItemListService;

@Controller
@RequestMapping("/PotentialItemList.controller")
public class PotentialItemListController {
	
	@Autowired
	PotentialItemListService potentialItemListService;
	
}
