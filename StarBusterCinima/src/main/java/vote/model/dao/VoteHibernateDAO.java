package vote.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import films.model.FilmBean;
import member.model.MemberBean;
import vote.model.VoteBean;
import vote.model.VoteDAO;
import vote.model.VotingDetailBean;

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
	public Boolean insert(int filmId, int VoteGoal) {		
		FilmBean B = this.session().load(FilmBean.class, filmId);
		 VoteBean bean = new VoteBean(filmId,0,VoteGoal,"none");		
		System.out.println(B);
		 this.session().save(bean);

		 return false;
	}

	@Override
	public VoteBean select(int FilmID) {

		return this.session().get(VoteBean.class, FilmID);
	}


	@Override
	public List<VoteBean> selecttop5() {

		Query<VoteBean> query = this.session().createQuery("from VoteBean", VoteBean.class);
		return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object[]> selectall() {
		String Hql = "select v.FilmID , f.filmName , v.BallotCount  , v.VoteGoal from  VoteBean as v INNER JOIN FilmBean as f on v.FilmID = f.filmId "
				+ "and v.VoteStatus != 'Elected'   order by v.BallotCount DESC";

		Query<Object[]> query = this.session().createQuery(Hql);
		List<Object[]> list = query.getResultList();

		for (int i = 0; i < list.size(); i++) {
			System.out.println("Element : " + i + list.get(i)[0] + list.get(i)[1] + list.get(i)[2]);
		}
		return list;
	}

	@SuppressWarnings("unchecked")
	public List<Object[]> SelectFilmNotInWishPool() {

		String Hql = " select f .filmId , f. filmName from  FilmBean as f  where f.filmId not in (select v.FilmID from VoteBean as v)";
		// sql = select film.filmname ,filmid from Film where FilmID not in (select	 FilmID from Vote) 
		Query<Object[]> query = this.session().createQuery(Hql);
		List<Object[]> list = query.getResultList();
		
		for (int i = 0; i < list.size(); i++) {
			System.out.println("Element " + i + " :  " + list.get(i)[0] + list.get(i)[1]);
			System.out.println("qq");
		}

		return list;
	}

	@Override
	public boolean DeleteFilmInWishPool(int FilmID) {
		VoteBean bean = this.select(FilmID);
		if (bean != null) {
			System.out.println(bean);
			this.session().delete(bean);
			return true;
		} else
			return false;
	}

	@Override
	public List<String[]> SelectAllFilmIdAndNameInWishpool() {
		String Hql = " select v.FilmID , v.FilmName from VoteBean as v";
		Query<Object[]> query = this.session().createQuery(Hql);
		List<Object[]> list = query.getResultList();
//		for (int i = 0; i < list.size(); i++) {
//			System.out.println("Element " + i + " :  " + list.get(i)[0] + list.get(i)[1]);
//		}
		
		
		return null;
	}

	@Override
	public List<Object[]> InsertIntoVoteDetail(VotingDetailBean bean) {
		
		this.session().save(bean);			
		return null;
	}
	

	@Override
	public List<Object[]> SelectMemberData(int id) {
		String Hql = " select m.registration_date , m.gender from MemberBean as m where m.memberId = (select MemberID from VotingDetailBean as vd where vd.FilmID =:Fid)";
		//select Member.gender , member.birthday from  Member where memberId = ( select MemberID from VoteDetail where FilmID = 100  ) = (select MemberID form VotingDetailBean as vd where vd.FilmID =?)
		
		Query<Object[]> query = this.session().createQuery(Hql);
		query.setParameter("Fid",id);
		List<Object[]> list = query.getResultList();
		
		
		
//		for (int i = 0; i < list.size(); i++) {
//		System.out.println("Element " + i + " :  " + list.get(i)[0] + list.get(i)[1]);
//	}
			
		return list;
	}
	
	@Override
	public List<MemberBean> SelectMemberData2() {
		String Hql = "from MemberBean";
		//select Member.gender , member.birthday from  Member where memberId = ( select MemberID from VoteDetail where FilmID = 100  ) = (select MemberID form VotingDetailBean as vd where vd.FilmID =?)
		
		Query<MemberBean> query = this.session().createQuery(Hql);
		
		List<MemberBean> list = query.getResultList();
		
		
		
//		for (int i = 0; i < list.size(); i++) {
//		System.out.println("Element " + i + " :  " + list.get(i)[0] + list.get(i)[1]);
//	}
			
		return list;
	}
	
	
	

}
