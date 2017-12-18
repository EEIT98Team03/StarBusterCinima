package vote.model;

import java.util.List;

public interface VoteDAO {
	VoteBean updateBallotCount(VoteBean bean);
	VoteBean updateVoteStatus(VoteBean bean , String status);
	VoteBean insert(VoteBean bean);	
	VoteBean select(String FilmID);
	List<VoteBean> selecttop5();
	List<VoteBean> selectall();
	
}
