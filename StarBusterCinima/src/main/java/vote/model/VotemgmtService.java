package vote.model;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class VotemgmtService {
	@Autowired
	VoteDAO voteDAO;
	
	
	public List <Object[]> loaddata(){		
		List <Object[]> list =   voteDAO.SelectFilmNotInWishPool();		
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
	
	
}
