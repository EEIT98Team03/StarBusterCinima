package vote.model;



public interface VoteDAO {
	VoteBean updateBallotCount(VoteBean bean);
	VoteBean updateVoteStatus(VoteBean bean , String status);
	VoteBean insert(VoteBean bean);
	VoteBean select(String filmID);
	
}
