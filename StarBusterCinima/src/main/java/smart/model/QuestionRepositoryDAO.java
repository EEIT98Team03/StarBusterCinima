package smart.model;

import java.util.List;

public interface QuestionRepositoryDAO {
//	select
//	insert
//	update
//	delete
	 QuestionRepositoryBean  select(int questionId);
	 List<QuestionRepositoryBean> selectAll();
	 String getAnswer(String type,String key);
	 QuestionRepositoryBean insert(QuestionRepositoryBean bean);
	 QuestionRepositoryBean update(int questionId,String type, String keywords, String answer);
	 boolean delete(int questionId);
	 
}
