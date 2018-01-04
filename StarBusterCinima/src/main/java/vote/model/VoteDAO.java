package vote.model;

import java.util.List;

import films.model.FilmBean;
import member.model.MemberBean;

public interface VoteDAO {

	// ---------------------------------------------------------SELECT---------------------------------------------------------//

	// 用電影ID選取一部在許願池的電影
	VoteBean select(int filmID);
	// 選前五名
	List<VoteBean> selecttop5();
	// 選全部
	List<Object[]> selectall();
	// 選在FILM但沒再WISHPOOL的電影
	List<Object[]> SelectFilmNotInWishPool();
	// 選許願池裡全部東西
	List<Object[]> SelectAllFilmIdAndNameInWishpool();
	// 給ID選MEMBER資料
	List<Object[]> SelectMemberData(int id);
	int SelectGenderofMember() ;
	List<FilmBean> UpMovie();
	// ---------------------------------------------------------INSERT---------------------------------------------------------//
	// 把一個電影加到許願池
	Boolean insert(int filmId, int VoteGoal);

	// 把投票人資訊存到VOTEDETAIL
	List<Object[]> InsertIntoVoteDetail(VotingDetailBean bean);

	// ---------------------------------------------------------UPDATE---------------------------------------------------------//
	// 投一票
	VoteBean updateBallotCount(VoteBean bean);

	// 更改狀態
	VoteBean updateVoteStatus(VoteBean bean, String status);
	
	VoteBean updateVoteGoal(VoteBean bean, int FilmID, int VoteGoal);
	
	boolean doUpMovie(int FilmID);

	// ---------------------------------------------------------DELETE---------------------------------------------------------//

	// 刪一個許願池的電影
	boolean DeleteFilmInWishPool(int FilmID);
	
	

}
