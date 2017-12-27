package smart.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import smart.model.QuestionRepositoryBean;
import smart.model.QuestionRepositoryDAO;
//select answer from QuestionRepositoryBean where type='電影' and keywords like '%位置%'
@Repository

public class QuestionRepositoryHibernateDAO implements QuestionRepositoryDAO {
	@Autowired
	SessionFactory sessionFactory;

	public Session session() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public QuestionRepositoryBean select(int questionId) {
		return this.session().get(QuestionRepositoryBean.class, questionId);
	}
	
	@Override
	public List<QuestionRepositoryBean> selectAll() {
		Query<QuestionRepositoryBean> query = this.session().createQuery("from QuestionRepositoryBean",
				QuestionRepositoryBean.class);
		List<QuestionRepositoryBean> list = query.getResultList();
		return list;
	}
	//
	// @Override
	// public List<String> selectAllType() {
	// Query<String> query = this.session().createQuery("select type from
	// QuestionRepositoryBean");
	// List<String> list = query.getResultList();
	// return list;
	// }

	@Override
	public QuestionRepositoryBean insert(QuestionRepositoryBean bean) {

		if (bean != null) {
			if (this.select(bean.getQuestionId()) == null) {
				this.session().save(bean);
			}
		}
		return bean;
	}

	@Override
	public QuestionRepositoryBean update(int questionId, String type, String keywords, String answer) {
		QuestionRepositoryBean update = this.select(questionId);
		if (update != null) {
			update.setType(type);
			update.setKeywords(keywords);
			update.setAnswer(answer);
		}
		return update;
	}

	@Override
	public boolean delete(int questionId) {
		QuestionRepositoryBean delete = this.select(questionId);
		if (delete != null) {
			this.session().delete(delete);
			return true;
		}
		return false;
	}

	@Override
	public String getAnswer(String type, String key) {
		
		Query<?> query = this.session().createQuery("select answer from QuestionRepositoryBean where type=:type and keywords like :key");
		query.setParameter("type", type);
		query.setParameter("key", "%"+key+"%");
		List<?> list = query.getResultList();
		String result = (String)list.get(0);
//		String result = (String)query.getSingleResult();
		return result;
	}

}
