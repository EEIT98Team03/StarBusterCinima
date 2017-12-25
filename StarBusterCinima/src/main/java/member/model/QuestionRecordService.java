package member.model;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class QuestionRecordService {

	@Autowired
	QuestionRecordDAO questionRecordDAO;

	@Transactional(readOnly = true)
	public QuestionRecordBean selectById(int questionId) {

		return questionRecordDAO.selectById(questionId);

	}

	@Transactional(readOnly = true)
	public List<QuestionRecordBean> selectByMemberId(int memberId) {

		return questionRecordDAO.selectByMemberId(memberId);
	}
	@Transactional(readOnly=true)
	public List<QuestionRecordBean> selectAll(){
		return questionRecordDAO.selectAll();
	}
	
	
	
	
	
	public boolean insert(QuestionRecordBean bean) {
		bean.setQuestionTime(new Timestamp(new java.util.Date().getTime()));
		bean.setQuestsionStatus("尚未處理");
		return questionRecordDAO.insert(bean);
	}
	
	public boolean updateQuestionStatus(QuestionRecordBean bean) {
		QuestionRecordBean result = this.selectById(bean.getQuestionRecordId());
		System.out.println(result);
		if(result!=null) {
			return questionRecordDAO.update(bean.getQuestionRecordId(), bean.getMemberId(),bean.getName(),result.getQuestionTime(),
					bean.getQuestionContext(), bean.getQuestsionStatus());
		}
		return false;
	}
	public boolean deleteQuestion(int questionRecordId) {
		return questionRecordDAO.delete(questionRecordId);
	}
	
}
