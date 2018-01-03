package vote.model;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class VoteService {
	@Autowired
	VoteDAO voteDAO;

	public VoteBean VoteAMovie(int filmID,int MemberID) {// add selected film's bollotcount once and return the bean after changed.
		int n = 1;
		VoteBean bean = voteDAO.select(filmID);
		
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		VotingDetailBean beeeean = new VotingDetailBean(filmID, MemberID, sqlDate);	
		
		

		if (bean != null) {
			
			if (MemberID == 79)
				n=voteDAO.select(filmID).getVoteGoal();
			// if ballotcount over the goal change status to elected
			if (bean.getBallotCount() + n >= bean.getVoteGoal())
				voteDAO.updateVoteStatus(bean, "Elected");

			bean.setBallotCount(bean.getBallotCount() + n);
			voteDAO.updateBallotCount(bean);
			voteDAO.InsertIntoVoteDetail(beeeean);
		}

		return bean;
	}

	public void insertvote(int FilmID, int VoteGoal) { // insert new film into wish pool
		voteDAO.insert(FilmID, VoteGoal);
	}

	public List<VoteBean> selecttop5() {
		List<VoteBean> Bl = voteDAO.selecttop5();
		return Bl;

	}

	public List<Object[]> selectall() {// select all in the vote table and return all beans.

		List<Object[]> Bl = voteDAO.selectall();
		return Bl;
	}
	
	public int[] selectmemberdata(int id){
//		List<Object[]> Bl = voteDAO.SelectMemberData(id);
		int[] age= {0,0,0,0,0};
		
		voteDAO.SelectGenderofMember();
//		
//		for (int i = 0; i < Bl.size(); i++) {
////		System.out.println("Element " + i + " :  "+ Bl);
//			int year =2017 - Integer.parseInt(Bl.get(i)[0].toString().split("-")[0]);			
//			
//			if(year>=20 && year<=40)
//				age[0]++;
//			else if(year>40 && year<=60)
//				age[1]++;
//			else if(year>60)
//				age[2]++;	
//			
//			if(Bl.get(i)[1].toString().equals("Man"))
//				age[3]++;
//			else if(Bl.get(i)[1].toString().equals("Man"))
//				age[4]++;
//	}
		return age;		
	}
	
	
	
	
}
