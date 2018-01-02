package vote.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "VOTEDETAIL")	
public class VotingDetailBean {
	@Id
	private int FilmID;
	private int MemberID;
	private Date VoteTime;
	
	
	public VotingDetailBean() {
		super();		
	}
	
	public VotingDetailBean(int filmID, int memberID, Date voteTime) {
		super();
		this.FilmID = filmID;
		this.MemberID = memberID;
		this.VoteTime = voteTime;
	}

	@Override
	public String toString() {
		return "VotingDetailBean [FilmID=" + FilmID + ", MemberID=" + MemberID + ", VoteTime=" + VoteTime + "]";
	}

	public int getFilmID() {
		return FilmID;
	}
	public void setFilmID(int filmID) {
		FilmID = filmID;
	}
	public int getMemberID() {
		return MemberID;
	}
	public void setMemberID(int memberID) {
		MemberID = memberID;
	}
	public Date getVoteTime() {
		return VoteTime;
	}
	public void setVoteTime(Date voteTime) {
		VoteTime = voteTime;
	}
	
	
	
	
	
	
	
}
