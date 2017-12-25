package ad.model;

import java.io.InputStream;
import java.sql.Blob;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AdRepositoryService {

	@Autowired
	AdRepositoryDAO adRepositoryDAO;

	@Transactional(readOnly = true)
	public AdRepositoryBean selectById(int id) {
		return adRepositoryDAO.selectById(id);
	}

	@Transactional(readOnly = true)
	public List<AdRepositoryBean> selectAll() {
		return adRepositoryDAO.selectAll();
	}

	@Transactional(readOnly = true)
	public List<AdRepositoryDataNoImageBean> selectAllDataNoImageJson() {
		return adRepositoryDAO.selectAllNoImageJson();
	}

	public boolean insert(AdRepositoryBean bean, InputStream is, byte[] sizeInBytes) {
		AdRepositoryBean select = this.selectById(bean.getId());
		if (select == null) {
			return adRepositoryDAO.insert(bean, is, sizeInBytes);
		}
		return false;
	}

	// have image
	public boolean update(AdRepositoryBean bean, InputStream is, byte[] sizeInBytes) {
		AdRepositoryBean select = this.selectById(bean.getId());
		if (select != null) {
			return adRepositoryDAO.update(bean, is, sizeInBytes);
		}
		return false;
	}

	// no image
	public boolean update(AdRepositoryBean bean) {
		AdRepositoryBean select = this.selectById(bean.getId());
		if (select != null) {
			return adRepositoryDAO.update(bean);
		}
		return false;
	}

	// change url viewCount
	public boolean updateViewCount(int id) {
		AdRepositoryBean select = this.selectById(id);
		if (select != null) {
			select.setViewCount(select.getViewCount() + 1);
			return adRepositoryDAO.update(select);
		}
		return false;
	}

	// change url clickCount
	public boolean updateClickCount(int id) {
		AdRepositoryBean select = this.selectById(id);
		if (select != null) {
			select.setClickCount(select.getClickCount() + 1);
			return adRepositoryDAO.update(select);
		}
		return false;
	}

	public boolean delete(int id) {
		AdRepositoryBean select = this.selectById(id);
		if (select != null) {
			return adRepositoryDAO.delete(id);
		}
		return false;
	}

	@Transactional(readOnly = true)
	public Blob getImageById(int id) {
		AdRepositoryBean select = this.selectById(id);
		if (select != null) {
			return select.getImage();
		}
		return null;
	}

	@Transactional(readOnly = true)
	public List<Blob> getImageByTypePositionSequence(String type, String position, int sequence) {

		if (type != null && type.trim().length() != 0 && position != null && position.trim().length() != 0
				&& sequence >= 0) {

			return adRepositoryDAO.getImageByTypePositionSequence(type, position, sequence);
		}
		return null;
	}

	@Transactional(readOnly = true)
	public List<Map<Object, Object>> getImageIdUrlByTypePositionASC(String type, String position) {
		return adRepositoryDAO.getImageIdUrlByTypePositionASC(type, position);
	}
}
