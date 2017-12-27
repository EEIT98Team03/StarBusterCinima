package member.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "QuestionRecord")
public class QuestionRecordBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int questionRecordId;
	private int memberId;
	private String name;
	private java.sql.Timestamp questionTime;
	private String questionContext;
	private String questsionStatus;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "QuestionRecordBean [questionId=" + questionRecordId + ", memberId=" + memberId+ ", name=" + name  + ", questionTime="
				+ questionTime + ", questionContext=" + questionContext + ", questsionStatus=" + questsionStatus + "]";
	}
	public QuestionRecordBean() {
		super();
	}
	public QuestionRecordBean(int questionId, int memberId,String name, Timestamp questionTime, String questionContext,
			String questsionStatus) {
		super();
		this.questionRecordId = questionId;
		this.memberId = memberId;
		this.name=name;
		this.questionTime = questionTime;
		this.questionContext = questionContext;
		this.questsionStatus = questsionStatus;
	}
	public int getQuestionRecordId() {
		return questionRecordId;
	}
	public void setQuestionRecordId(int questionId) {
		this.questionRecordId = questionId;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public java.sql.Timestamp getQuestionTime() {
		return questionTime;
	}
	public void setQuestionTime(java.sql.Timestamp questionTime) {
		this.questionTime = questionTime;
	}
	public String getQuestionContext() {
		return questionContext;
	}
	public void setQuestionContext(String questionContext) {
		this.questionContext = questionContext;
	}
	public String getQuestsionStatus() {
		return questsionStatus;
	}
	public void setQuestsionStatus(String questsionStatus) {
		this.questsionStatus = questsionStatus;
	}
	
	
}
