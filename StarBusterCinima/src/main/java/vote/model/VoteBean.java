package vote.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Vote")
public class VoteBean {
	@Id
	private String FilmID;
	private int BallotCount;	
	private int VoteGoal ;
	private String VoteStatus ;	
	
	@Override
	public String toString() {
		return "VoteBean [FilmID=" + FilmID + ", BallotCount=" + BallotCount + ", VoteGoal=" + VoteGoal
				+ ", VoteStatus=" + VoteStatus + "]";
	}
	public String getFilmID() {
		return FilmID;
	}
	public void setFilmID(String filmID) {
		FilmID = filmID;
	}
	public int getBallotCount() {
		return BallotCount;
	}
	public void setBallotCount(int ballotCount) {
		BallotCount = ballotCount;
	}
	public int getVoteGoal() {
		return VoteGoal;
	}
	public void setVoteGoal(int voteGoal) {
		VoteGoal = voteGoal;
	}
	public String getVoteStatus() {
		return VoteStatus;
	}
	public void setVoteStatus(String voteStatus) {
		VoteStatus = voteStatus;
	}
	
	
	
}
