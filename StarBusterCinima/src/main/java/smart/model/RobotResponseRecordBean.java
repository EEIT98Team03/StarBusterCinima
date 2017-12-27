package smart.model;

import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "RobotResponseRecord")
public class RobotResponseRecordBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int sequenceId;
	private int memberId;
	private String gender;
	private java.sql.Date birthday;
	private java.sql.Timestamp responseTime;
	private String typekeyWord;

	@Override
	public String toString() {
		return "RobotResponseRecordBean [sequenceId=" + sequenceId + ", memberId=" + memberId + ", gender=" + gender
				+ ", birthday=" + birthday + ", responseTime=" + responseTime + ", typekeyWord=" + typekeyWord + "]";
	}

	public RobotResponseRecordBean() {
		super();
	}

	public RobotResponseRecordBean(int sequenceId, int memberId, String gender, Date birthday, Timestamp responseTime,
			String typekeyWord) {
		super();
		this.sequenceId = sequenceId;
		this.memberId = memberId;
		this.gender = gender;
		this.birthday = birthday;
		this.responseTime = responseTime;
		this.typekeyWord = typekeyWord;
	}

	public int getSequenceId() {
		return sequenceId;
	}

	public void setSequenceId(int sequenceId) {
		this.sequenceId = sequenceId;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public java.sql.Date getBirthday() {
		return birthday;
	}

	public void setBirthday(java.sql.Date birthday) {
		this.birthday = birthday;
	}

	public java.sql.Timestamp getResponseTime() {
		return responseTime;
	}

	public void setResponseTime(java.sql.Timestamp responseTime) {
		this.responseTime = responseTime;
	}

	public String getTypekeyWord() {
		return typekeyWord;
	}

	public void setTypekeyWord(String typekeyWord) {
		this.typekeyWord = typekeyWord;
	}
}
