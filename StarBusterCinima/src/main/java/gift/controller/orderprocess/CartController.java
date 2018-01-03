package gift.controller.orderprocess;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import gift.model.GiftItemBean;
import gift.model.GiftItemService;

@Controller
public class CartController {

	@Autowired
	GiftItemService giftItemService;

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/cart.controller", method = { RequestMethod.GET, RequestMethod.POST })
	public String method(HttpSession session, Model model, String itemNameHidden) {
		String email = (String) session.getAttribute("email");
		GiftItemBean bean = new GiftItemBean();
		LinkedList<String> itemNameHiddenList = (LinkedList<String>) session.getAttribute("itemNameHiddenList");
		if (itemNameHidden != null && !itemNameHidden.isEmpty()) {
			if (itemNameHidden == "none") {
				bean = null;
				session.setAttribute("email", "");
				return "cart.hibao.additem.success";
			} else {
				bean = giftItemService.getGiftItem(itemNameHidden);
			}

		}
		if (bean != null) {
			bean = (GiftItemBean) bean;
			Set<GiftItemBean> cartSet = (HashSet<GiftItemBean>) session.getAttribute("cartSet");
			if (cartSet != null && !cartSet.isEmpty()) {
				if (!itemNameHiddenList.contains(itemNameHidden)) {
					itemNameHiddenList.addLast(itemNameHidden);
					cartSet.add(bean);
				}
			} else {
				itemNameHiddenList = new LinkedList<String>();
				itemNameHiddenList.addLast(itemNameHidden);
				cartSet = new HashSet<GiftItemBean>();
				cartSet.add(bean);
			}

			session.setAttribute("email", email);
			session.setAttribute("itemNameHiddenList", itemNameHiddenList);
			session.setAttribute("cartSet", cartSet);
			session.setAttribute("cartSetSize", cartSet.size());

		}
		if (itemNameHidden != null && !itemNameHidden.isEmpty()) {
			if (itemNameHidden.contains("harry")) {
				return "cart.additem.success";
			} else if (itemNameHidden.contains("hibao")) {
				return "cart.hibao.additem.success";
			} else {
				return "cart.homepage.additem.success";
			}
		}
		return "cart.homepage.additem.success";

	}

}
