package vote.model;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.model.MemberBean;

@Service
@Transactional
public class VotemgmtService {
	@Autowired
	VoteDAO voteDAO;
	
	
	public List <Object[]> loaddata(){		
		List <Object[]> list =  voteDAO.SelectFilmNotInWishPool();	
		System.out.println("qq");
		for (int i = 0; i < list.size(); i++) {
			System.out.println("Element " + i + " :  " + list.get(i)[0] + list.get(i)[1]);
			System.out.println("qq");
		}
		return list;		
	}
	
	
	public boolean DeleteFilmInWishPool(int FilmID) {
		
		voteDAO.DeleteFilmInWishPool(FilmID);
		return false;		
	}
	
	public List<String[]> SelectFilmInWishPool() {		
		
		return voteDAO.SelectAllFilmIdAndNameInWishpool();
	}
	
	public Boolean InsertFilmIntoWishPool(int FilmID,int VoteGoal) {
		return voteDAO.insert(FilmID, VoteGoal);
	}
	
	public List<MemberBean> SelectMemberData() {
		
		
		List<MemberBean> bean = voteDAO.SelectMemberData2();	
		
		
		
		return bean;		
	}
	
	
}
