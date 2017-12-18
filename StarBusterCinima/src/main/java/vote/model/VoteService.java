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

	public VoteBean VoteAMovie(String FilmID) {// add selected film's bollotcount once and return the bean after changed.
		VoteBean bean = voteDAO.select(FilmID);

		if (bean != null) {
			
			//if ballotcount over the goal change status to elected
 			if (bean.getBallotCount() + 1 > bean.getVoteGoal())
				voteDAO.updateVoteStatus(bean, "Elected");

			bean.setBallotCount(bean.getBallotCount() + 1);
			voteDAO.updateBallotCount(bean);
		}

		return bean;
	}

	public VoteBean selectBallotCount(String FilmID) {

		
		return null;
	}

	public List<VoteBean> selecttop5() {
		List<VoteBean> Bl = voteDAO.selecttop5();

		return Bl;

	}

	public List<VoteBean> selectall() {// select all  that is in the vote table and return all beans.

		List<VoteBean> Bl = voteDAO.selectall();

		return Bl;
	}

}
