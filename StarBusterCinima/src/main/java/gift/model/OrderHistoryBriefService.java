package gift.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class OrderHistoryBriefService {

	@Autowired
	OrderHistoryBriefDAO orderHistoryBriefDAO;
	
	public int deleteOrder(int orderId) {
		return orderHistoryBriefDAO.delete(orderId);
	}
	
	public OrderHistoryBriefBean setNewOrder(OrderHistoryBriefBean beanBrief, OrderHistoryDetailBean beanDetail) {
		return orderHistoryBriefDAO.insert(beanBrief, beanDetail);
	}
	
	@Transactional(readOnly = true)
	public List<OrderHistoryBriefBean> getOrderHistoryBrief() { //抓出全部訂單主檔
		return orderHistoryBriefDAO.select();
	}
	
	@Transactional(readOnly = true)
	public OrderHistoryBriefBean getOrderHistoryBrief(int orderId) { //抓出單筆訂單主檔
		return (OrderHistoryBriefBean) orderHistoryBriefDAO.select(orderId);
	}
	
	@SuppressWarnings("unchecked")
	@Transactional(readOnly = true)
	public List<Map<String, String>> getGoodMembers(java.sql.Date beginDate, java.sql.Date finishDate) {
		if (beginDate.compareTo(finishDate) == 1) {
			java.sql.Date tempDate = finishDate;
			finishDate = beginDate;
			beginDate = tempDate;
		}
		return (List<Map<String, String>>) orderHistoryBriefDAO.getGoodMembers(beginDate, finishDate);
	}
}
