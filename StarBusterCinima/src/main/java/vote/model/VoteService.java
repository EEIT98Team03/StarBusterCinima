package vote.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class VoteService {	
	@Autowired
	VoteDAO voteDAO;	
	
	public void main(String[] args[]) {
		VoteAMovie("F0001");
		System.out.println("asdf");
	}
	
	
	public int VoteAMovie(String filmID){
		
		VoteBean bean = voteDAO.select(filmID);		
		voteDAO.updateBallotCount(bean);
		System.out.println(bean.getBallotCount());
		
		
		return 0;
	}	
}
