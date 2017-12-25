package vote.model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vote.model.VoteBean;
import vote.model.VoteDAO;

@Repository
public class VoteHibernateDAO implements VoteDAO {
	@Autowired
	SessionFactory sessionFactory;

	public Session session() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public VoteBean updateBallotCount(VoteBean bean) {		
		
		bean.setBallotCount(bean.getBallotCount()+1);
		this.session().update(bean);		
		
		return bean;
	}
	
	@Override
	public VoteBean updateVoteStatus(VoteBean bean ,String status) {
		
		bean.setVoteStatus(status);
		this.session().update(bean);
		return bean;
	}

	@Override
	public VoteBean insert(VoteBean bean) {

		return null;
	}

	@Override
	public VoteBean select(String filmID) {
		return null;
	}


}
