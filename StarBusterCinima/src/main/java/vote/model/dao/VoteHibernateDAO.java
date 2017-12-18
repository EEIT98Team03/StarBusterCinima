package vote.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gift.model.GiftItemBean;
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
		this.session().update(bean);
		return bean;
	}

	@Override
	public VoteBean updateVoteStatus(VoteBean bean, String status) {

		bean.setVoteStatus(status);
		this.session().update(bean);
		return bean;
	}

	@Override
	public VoteBean insert(VoteBean bean) {
		return null;
	}

	@Override
	public VoteBean select(String FilmID) {

		return this.session().get(VoteBean.class, FilmID);
	}

	@Override
	public List<VoteBean> selecttop5() {

		Query<VoteBean> query = this.session().createQuery("from Vote", VoteBean.class);
		return query.getResultList();
	}

	@Override
	public List<VoteBean> selectall() {

		Query<VoteBean> query = this.session().createQuery("from VoteBean", VoteBean.class);
		return query.getResultList();
	}

}
