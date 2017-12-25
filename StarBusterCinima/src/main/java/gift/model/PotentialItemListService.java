package gift.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class PotentialItemListService {
	
	@Autowired
	PotentialItemListDAO potentialItemListDAO;
	
	@Transactional(readOnly = true)
	public List<PotentialItemListBean> getPotentialItemList() { //抓出全部
		return potentialItemListDAO.select();
	}
	@Transactional(readOnly = true)
	public PotentialItemListBean getPotentialItemList(int potentialId) { //抓出單筆
		return (PotentialItemListBean) potentialItemListDAO.select(potentialId);
	}
	public PotentialItemListBean updatePotentialItemList(PotentialItemListBean bean) {
		if (bean != null) {
			return potentialItemListDAO.update(bean.getPotentialId(), bean.getMemberID(), bean.getItemCategoryID(), bean.getItemCategoryName(), bean.getItemID(), bean.getItemName(), bean.getCreatedTime());
		}
		return bean;
	}
	public boolean deletePotentialItemList(int potentialId) {
		return potentialItemListDAO.delete(potentialId);
	}
}
