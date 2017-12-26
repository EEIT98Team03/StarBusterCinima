package smart.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class QuestionRepositoryService {
	@Autowired
	QuestionRepositoryDAO questionRepositoryDAO;

	@Transactional(readOnly = true)
	public QuestionRepositoryBean selectById(int questionId) {
		return questionRepositoryDAO.select(questionId);
	}

	@Transactional(readOnly = true)
	public List<QuestionRepositoryBean> selectAll() {
		return questionRepositoryDAO.selectAll();
	}
	@Transactional(readOnly=true)
	public String getAnswer(String type,String key) {
		return questionRepositoryDAO.getAnswer(type, key);
	}
	// @Transactional(readOnly = true)
	// public List<String> selectAllType() {
	// return questionRepositoryDAO.selectAll();
	// }

	public QuestionRepositoryBean insertQuestion(QuestionRepositoryBean bean) {

		if (bean != null) {
			return questionRepositoryDAO.insert(bean);
		}
		return bean;
	}

	public QuestionRepositoryBean updateQuestion(QuestionRepositoryBean bean) {
		if (bean != null) {
			return questionRepositoryDAO.update(bean.getQuestionId(), bean.getType(), bean.getKeywords(),
					bean.getAnswer());
		}
		return bean;
	}

	public boolean delete(int questionId) {
		return questionRepositoryDAO.delete(questionId);
	}
}
