package member.model.dao;

import java.sql.Timestamp;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import member.model.QuestionRecordBean;
import member.model.QuestionRecordDAO;
import smart.model.QuestionRepositoryBean;

@Repository
public class QuestionRecordHibernateDAO implements QuestionRecordDAO {
	@Autowired
	SessionFactory sessionFactory;

	public Session session() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public QuestionRecordBean selectById(int questionRecordId) {
		return this.session().get(QuestionRecordBean.class, questionRecordId);
	}

	@Override
	public List<QuestionRecordBean> selectAll() {
		Query<QuestionRecordBean> query = this.session().createQuery("from QuestionRecordBean",
				QuestionRecordBean.class);
		List<QuestionRecordBean> list = query.getResultList();
		return list;
	}

	@Override
	public boolean insert(QuestionRecordBean bean) {
		QuestionRecordBean select = this.selectById(bean.getQuestionRecordId());
		if (select == null) {
			if (bean != null) {
				this.session().save(bean);
				return true;
			}
		}
		return false;
	}

	@Override
	public boolean update(int questionRecordId, int memberId,String name, Timestamp questionTime, String questionContext,
			String questsionStatus) {
		QuestionRecordBean select = this.selectById(questionRecordId);
		if (select != null) {
			select.setQuestionRecordId(questionRecordId);
			select.setMemberId(memberId);
			select.setName(name);
			select.setQuestionTime(questionTime);
			select.setQuestionContext(questionContext);
			select.setQuestsionStatus(questsionStatus);
			return true;
		}
		return false;
	}

	@Override
	public boolean delete(int questionRecordId) {
		QuestionRecordBean select = this.selectById(questionRecordId);
		if (select != null) {
			this.session().delete(select);
			return true;
		}
		return false;
	}

	@Override
	public List<QuestionRecordBean> selectByMemberId(int memberId) {
		Query<QuestionRecordBean> query = this.session().createQuery("from QuestionRecordBean where memberId = :xxx",QuestionRecordBean.class);
		query.setParameter("xxx", memberId);
		 List<QuestionRecordBean> bean = query.getResultList();
		return bean;
	}

}
