package smart.model;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RobotResponseRecordService {
	@Autowired
	RobotResponseRecordDAO robotResponseRecordDAO;
	public boolean insertRecord(RobotResponseRecordBean bean) {
		if(bean!=null) {
			bean.setResponseTime(new Timestamp(new java.util.Date().getTime()));
			return robotResponseRecordDAO.insert(bean);
		}
		return false;
	}
	@Transactional(readOnly=true)
	public List<Map<String, Object>> selectBoyGirlCount() {
		return robotResponseRecordDAO.selectBoyGirlCount();
	}
	@Transactional(readOnly=true)
	public List<List> selectTypeKeyCount() {
		return robotResponseRecordDAO.selectTypeKeyCount();
	}
	@Transactional(readOnly=true)
	public List<Map<String, Object>> selectAgeLevelCount() {
		return robotResponseRecordDAO.selectAgeLevelCount();
	}
}
