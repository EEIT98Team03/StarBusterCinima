package gift.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import gift.model.OrderHistoryBriefBean;
import gift.model.OrderHistoryBriefService;
import gift.model.OrderHistoryDetailBean;

@Controller
@RequestMapping("/OrderHistoryBrief.controller")
public class OrderHistoryBriefController {

	@Autowired
	OrderHistoryBriefService orderHistoryBriefService;

//	private static OrderHistoryBriefBean getBriefBean() {
//		OrderHistoryBriefBean bean = new OrderHistoryBriefBean();
//		bean.setOrderId(26);
//		bean.setMemberEmail("akumaboxer@gmail.com");
//		bean.setTotalAmountOriginal(1800);
//		bean.setDiscount(200);
//		bean.setTotalAmountFinal(1600);
//		bean.setPayMethod("信用卡");
//		bean.setReceiverName("Helen");
//		bean.setReceiverAddressArea("Tainan");
//		bean.setReceiverAddressMainPart("Tainan City");
//		bean.setReceiverPhone("0911378014");
//		bean.setPurchasedTime(DataGenerator.getCurrentTimeSQL());
//
//		return bean;
//	}
//
//	private static OrderHistoryDetailBean getDetailBean() {
//
//		int unitP = 900;
//		int qty = 2;
//
//		OrderHistoryDetailBean bean = new OrderHistoryDetailBean();
//		bean.setOrderId(26);
//		bean.setMemberEmail("akumaboxer@gmail.com");
//		bean.setItemId(1);
//		bean.setItemName("哈利波特葛萊芬多馬克杯");
//		bean.setItemHiddenName("harry3-3");
//		bean.setUnitPrice(unitP);
//		bean.setItemQquantity(qty);
//		bean.setSumTotal(unitP * qty);
//
//		return bean;
//	}

	@RequestMapping(method = { RequestMethod.GET, RequestMethod.POST }, value = "SetNewOrder")
	public String setNewOrder(OrderHistoryBriefBean beanBrief, OrderHistoryDetailBean beanDetail, Model model) {
		//beanDetail = getDetailBean();
		//beanBrief = getBriefBean();
		OrderHistoryBriefBean beanResultBrief = orderHistoryBriefService.setNewOrder(beanBrief, beanDetail);
		if (beanResultBrief == null) {
			return "order.failure";
		}
		model.addAttribute("beanResultBrief", beanResultBrief);
		beanDetail.setOrderId(beanResultBrief.getOrderId());
		model.addAttribute("beanResultDetail", beanDetail);
		return "order.brief";
	}

	@RequestMapping(method = { RequestMethod.GET, RequestMethod.POST }, value = "ViewAll")
	public String method(Model model) {

		List<OrderHistoryBriefBean> allOrderHistoryBriefData = orderHistoryBriefService.getOrderHistoryBrief();
		model.addAttribute("AllOrderHistoryBriefData", allOrderHistoryBriefData);
		return "order.brief";
	}

	@RequestMapping(method = { RequestMethod.GET, RequestMethod.POST }, value = "ViewOne")
	public String method(int orderId, Model model) {
		OrderHistoryBriefBean oneOrderHistoryBriefData = orderHistoryBriefService.getOrderHistoryBrief(orderId);
		model.addAttribute("OneOrderHistoryBriefData", oneOrderHistoryBriefData);
		return "order.brief";
	}

	@RequestMapping(method = { RequestMethod.GET, RequestMethod.POST }, value = "ViewPyramid")
	public String getGoodMembers(Model model, java.sql.Date beginDate, java.sql.Date finishDate) {
		System.out.println("bbbb");
		List<Map<String, String>> listResult = (List<Map<String, String>>) orderHistoryBriefService
				.getGoodMembers(beginDate, finishDate);

		if (listResult == null || listResult.isEmpty()) {
			// 避免listResult內沒有元素而發生例外
			listResult.add(null);
		}

		model.addAttribute("TopPercentTotalAmountData", listResult);
		return "order.brief";
	}
	
	public String deleteOrder(int orderId, Model model) {
		int deleteResult = orderHistoryBriefService.deleteOrder(orderId);
		if (deleteResult == 0) {
			return "order.failure";
		}
		return "order.brief";
	}
}
