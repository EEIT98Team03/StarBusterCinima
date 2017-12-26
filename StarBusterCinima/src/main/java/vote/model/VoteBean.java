package vote.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import films.model.FilmBean;

@Entity
@Table(name = "VOTE")
public class VoteBean {
	@Id	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int FilmID;
	private int BallotCount;	
	private int VoteGoal ;
	private String VoteStatus ;		
	public VoteBean() {
		super();
		// TODO Auto-generated constructor stub
	}	
	
	public VoteBean(int filmID, int ballotCount, int voteGoal, String voteStatus) {
		super();
		this.FilmID = filmID;
		this.BallotCount = ballotCount;
		this.VoteGoal = voteGoal;
		this.VoteStatus = voteStatus;
	}


	@Override
	public String toString() {
		return "VoteBean [FilmID=" + FilmID + ", BallotCount=" + BallotCount + ", VoteGoal=" + VoteGoal
				+ ", VoteStatus=" + VoteStatus + "]";
	}
	public int getFilmID() {
		return FilmID;
	}
	public void setFilmID(int filmID) {
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
