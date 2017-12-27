package gift.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class OrderHistoryDetailService {
	
	@Autowired
	OrderHistoryDetailDAO orderHistoryDetailDAO;
	
	@Transactional(readOnly = true)
	public List<OrderHistoryDetailBean> getOrderHistoryDetail() { //抓出全部訂單主檔
		return orderHistoryDetailDAO.select();
	}
	@Transactional(readOnly = true)
	public OrderHistoryDetailBean getOrderHistoryDetail(int orderId) { //抓出單筆訂單主檔
		return (OrderHistoryDetailBean) orderHistoryDetailDAO.select(orderId);
	}
	@Transactional(readOnly = true)
	public OrderHistoryDetailBean getHotGiftItemBean() { //抓出當月熱銷商品
		return null;
	}
	
}
