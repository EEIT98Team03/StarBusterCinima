package vote.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "VOTEDETAIL")	
public class VotingDetailBean {
	@Id
	private String FilmID;
	private String MemberID;
	private Date VoteTime;
	
	
	
	
	
	
	
}
