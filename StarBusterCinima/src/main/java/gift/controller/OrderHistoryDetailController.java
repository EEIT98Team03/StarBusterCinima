package gift.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import gift.model.OrderHistoryDetailBean;
import gift.model.OrderHistoryDetailService;

@Controller
@RequestMapping("/OrderHistoryDetail.controller")
public class OrderHistoryDetailController {
	
	@Autowired
	OrderHistoryDetailService orderHistoryDetailService;
	
	@RequestMapping(method = { RequestMethod.GET, RequestMethod.POST },
			value = "ViewAll")
	public String method(Model model) {

		List<OrderHistoryDetailBean> allOrderHistoryDetailData = orderHistoryDetailService.getOrderHistoryDetail();
		model.addAttribute("AllOrderHistoryDetailData", allOrderHistoryDetailData);

		return "order.detail";
	}
	
	@RequestMapping(method = { RequestMethod.GET, RequestMethod.POST }, value = "ViewOne")
	public String method(int orderId, Model model) {

		OrderHistoryDetailBean oneOrderHistoryDetailData = orderHistoryDetailService.getOrderHistoryDetail(orderId);
		model.addAttribute("OneOrderHistoryDetailData", oneOrderHistoryDetailData);
		return "order.detail";
	}
}
