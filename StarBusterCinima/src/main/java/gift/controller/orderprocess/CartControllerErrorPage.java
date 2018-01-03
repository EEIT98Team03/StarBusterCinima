package gift.controller.orderprocess;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CartControllerErrorPage {
	@RequestMapping(method= {RequestMethod.GET,RequestMethod.POST})
	public String method() {
		
		return "error.page";
	}
}
