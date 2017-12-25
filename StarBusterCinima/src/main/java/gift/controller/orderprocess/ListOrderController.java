package gift.controller.orderprocess;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import gift.model.GiftItemBean;

@Controller
@RequestMapping("/listorder.controller")
public class ListOrderController {

	@SuppressWarnings("unchecked")
	@RequestMapping(method = { RequestMethod.GET, RequestMethod.POST })
	public String method(HttpSession session, Model model) {
		if (session != null) {
			Set<GiftItemBean> cartSet = (HashSet<GiftItemBean>) session.getAttribute("cartSet");
			if (cartSet != null) {
				Iterator<GiftItemBean> ite = cartSet.iterator();
				while (ite.hasNext()) {
					GiftItemBean bean = (GiftItemBean) ite.next();
					System.out.println(bean.toString());
				}
			}
			return "list.order";
		}
		return null;

	}
}
