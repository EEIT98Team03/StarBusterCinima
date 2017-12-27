package member.model;

import java.sql.Timestamp;
import java.util.List;

public interface QuestionRecordDAO {
	// select 收尋使用者有什麼問題// insert 使用者問題無法處理插入//update 改狀態 //delete 刪除
	QuestionRecordBean selectById(int questionRecordId);
	
	List<QuestionRecordBean> selectByMemberId(int memberId);
	
	List<QuestionRecordBean> selectAll();

	boolean insert(QuestionRecordBean bean);

	boolean update(int questionRecordId, int memberId,String name, Timestamp questionTime, String questionContext,
			String questsionStatus);

	boolean delete(int questionRecordId);
}
