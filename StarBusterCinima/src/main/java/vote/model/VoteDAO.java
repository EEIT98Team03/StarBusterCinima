package vote.model;

import java.sql.Date;
import java.util.List;

import member.model.MemberBean;

public interface VoteDAO {
	VoteBean updateBallotCount(VoteBean bean);
	VoteBean updateVoteStatus(VoteBean bean , String status);	
	VoteBean select(int filmID);
	List<VoteBean> selecttop5();
	List<Object[]> selectall();		
	List<Object[]> SelectFilmNotInWishPool();
	boolean DeleteFilmInWishPool(int FilmID);
	List<String[]> SelectAllFilmIdAndNameInWishpool();
	Boolean insert(int filmId, int VoteGoal);
	List<Object[]> InsertIntoVoteDetail(VotingDetailBean bean);
	List<Object[]> SelectMemberData(int id);
	List<MemberBean> SelectMemberData2();
}
