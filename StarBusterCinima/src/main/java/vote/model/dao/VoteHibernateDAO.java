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
	// ---------------------------------------------------------SELECT---------------------------------------------------------//

	@Override
	public VoteBean select(int FilmID) {// 用電影ID選取一部在許願池的電影

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
		String Hql = "select v.FilmID , f.filmName , v.BallotCount , v.VoteGoal  , f.posterLarge from  VoteBean as v INNER JOIN FilmBean as f on v.FilmID = f.filmId "
				+ "and v.VoteStatus != 'Elected'   order by v.BallotCount DESC";

		Query<Object[]> query = this.session().createQuery(Hql);
		List<Object[]> list = query.getResultList();

		for (int i = 0; i < list.size(); i++) {
			System.out.println("Element : " + i + list.get(i)[0] + list.get(i)[1] + list.get(i)[2] + list.get(i)[3] + list.get(i)[4]);
		}
		return list;
	}

	@SuppressWarnings("unchecked")
	public List<Object[]> SelectFilmNotInWishPool() {

		String Hql = "select f .filmId , f. filmName from  FilmBean as f  where f.filmId not in (select v.FilmID from VoteBean as v)";
		// sql = select film.filmname ,filmid from Film where FilmID not in (select FilmID from Vote)

		Query<Object[]> query = this.session().createQuery(Hql);
		List<Object[]> list = query.getResultList();

		for (int i = 0; i < list.size(); i++) {
			System.out.println("Element " + i + " :  " + list.get(i)[0] +  list.get(i)[1]);
			System.out.println("qq");
		}
		return list;
	}

	@Override
	public List<Object[]> SelectAllFilmIdAndNameInWishpool() {
		String Hql = " select v.FilmID , v.FilmName from VoteBean as v";
		Query<Object[]> query = this.session().createQuery(Hql);
		List<Object[]> list = query.getResultList();
		// for (int i = 0; i < list.size(); i++) {
		// System.out.println("Element " + i + " : " + list.get(i)[0] + list.get(i)[1]);
		// }

		return list;
	}

	@Override
	public List<Object[]> SelectMemberData(int id) {
		String Hql = " select m.registration_date , m.gender from MemberBean as m where m.memberId = (select MemberID from VotingDetailBean as vd where vd.FilmID =:Fid group by MemberID)";
//		 select Member.gender , member.birthday from Member where memberId = ( select
//		 MemberID from VoteDetail where FilmID = 100 ) = (select MemberID form
//		 VotingDetailBean as vd where vd.FilmID =?)
		
		
		

		Query<Object[]> query = this.session().createQuery(Hql);
		query.setParameter("Fid", id);
		List<Object[]> list = query.getResultList();

		// for (int i = 0; i < list.size(); i++) {
		// System.out.println("Element " + i + " : " + list.get(i)[0] + list.get(i)[1]);
		// }

		return list;
	}

	
	@Override
	public List<VoteBean> UpMovie() {
		String Hql = "from VoteBean as v where v.VoteStatus = 'Elected'";

		Query<VoteBean> query = this.session().createQuery(Hql);

		List<VoteBean> list = query.getResultList();

		// for (int i = 0; i < list.size(); i++) {
		// System.out.println("Element " + i + " : " + list.get(i)[0] + list.get(i)[1]);
		// }

		return list;
	}
	
	public boolean IsMemberVoted(int MemberID) {
		if(this.session().get(VotingDetailBean.class, MemberID) == null)
			return true;	
		else
			return false;
		
		
	}
	
	

	// ---------------------------------------------------------INSERT---------------------------------------------------------//

	@Override
	public Boolean insert(int filmId, int VoteGoal) {
		
		FilmBean B = this.session().load(FilmBean.class, filmId);
		VoteBean bean = new VoteBean();
		bean.setFilmID(filmId);
		bean.setBallotCount(0);
		bean.setVoteGoal(VoteGoal);
		bean.setVoteStatus("during");
		System.out.println(bean.getFilmID());
		this.session().save(bean);

		return false;
	}

	

	@Override
	public List<Object[]> InsertIntoVoteDetail(VotingDetailBean bean) {

		this.session().save(bean);
		return null;
	}

	
	// ---------------------------------------------------------UPDATE---------------------------------------------------------//

	@Override
	public VoteBean updateBallotCount(VoteBean bean) {// 投一票
		this.session().update(bean);
		return bean;
	}

	@Override
	public VoteBean updateVoteStatus(VoteBean bean, String status) {// 更改狀態

		bean.setVoteStatus(status);
		this.session().update(bean);
		return bean;
	}
	
	@Override
	public VoteBean updateVoteGoal(VoteBean bean,int FilmID,int VoteGoal) {// 投一票
		System.out.println(VoteGoal + " " + bean);
		bean.setVoteGoal(VoteGoal);
		this.session().update(bean);
		return bean;
	}

	// ---------------------------------------------------------DELETE---------------------------------------------------------//

	@Override
	public boolean DeleteFilmInWishPool(int FilmID) {
		VoteBean bean = this.select(FilmID);
		System.out.println(bean);
		if (bean != null) {
			System.out.println(bean);
			this.session().delete(bean);
			return true;
		} else
			return false;
	}
	
	public int SelectGenderofMember() {
//		String Hql = "from MemberBean as m join on (select v.MemberID from VotingDetailBean as v where v.FilmID = 1110 group by v.MemberID) as t on m.memberId = t.MemberID";
//		Query query = this.session().createQuery(Hql);		
//		System.out.println(query.getResultList());
		//select v.MemberID from VotingDetailBean as v where v.FilmID = 1110 group by v.MemberID
		//select COUNT(gender) from Member  join (select MemberID from VoteDetail where FilmID = 1110 group by MemberID) as t on Member.memberId = t.MemberID where gender='man'
		return 0;
		
	}

	@Override
	public boolean UpMovie(int FilmID) {
		
		
		return false;
	}

}
