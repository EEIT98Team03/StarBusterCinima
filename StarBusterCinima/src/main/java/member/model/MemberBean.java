package member.model;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.bind.annotation.RequestMapping;
@Entity
@Table(name = "MEMBER")
public class MemberBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int memberId;
	private String email;
	private String password;
	private String name;
	private String address;
	private String phoneNumber;
	private String gender;
	@Column(name = "birthday")
	private java.sql.Date registration_date;
	private java.sql.Timestamp registTime;
	private java.sql.Timestamp lastLoginTime;
	private String filmAdType;
	private String giftAdType;
	private String identityStatus;
	private String identityCode;
	@Column(name = "memberImage")
	private Blob file_nm;
	public Blob getMemberImage() {
		return file_nm;
	}

	public void setMemberImage(Blob memberImage) {
		this.file_nm = memberImage;
	}

	public MemberBean() {
		super();
	}

	public MemberBean(String email, String password, String name, String address, String phoneNumber, String gender,
			java.sql.Date birthday) {
		super();
		this.email = email;
		this.password = password;
		this.name = name;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.gender = gender;
		this.registration_date = birthday;
	}

	@Override
	public String toString() {
		return "MemberBean [memberId=" + memberId + ", email=" + email + ", password=" + password + ", name=" + name
				+ ", address=" + address + ", phoneNumber=" + phoneNumber + ", gender=" + gender + ", birthday="
				+ registration_date + ", registTime=" + registTime + ", lastLoginTime=" + lastLoginTime
				+ ", filmAdType=" + filmAdType + ", giftAdType=" + giftAdType + ", identityStatus=" + identityStatus
				+ ", identityCode=" + identityCode + "]";
	}

	public java.sql.Timestamp getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(java.sql.Timestamp lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public String getIdentityStatus() {
		return identityStatus;
	}

	public void setIdentityStatus(String identityStatus) {
		this.identityStatus = identityStatus;
	}

	public String getIdentityCode() {
		return identityCode;
	}

	public void setIdentityCode(String identityCode) {
		this.identityCode = identityCode;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}


	public java.sql.Date getRegistration_date() {
		return registration_date;
	}

	public void setRegistration_date(java.sql.Date registration_date) {
		this.registration_date = registration_date;
	}

	public java.sql.Timestamp getRegistTime() {
		return registTime;
	}

	public void setRegistTime(java.sql.Timestamp registTime) {
		this.registTime = registTime;
	}

	public String getFilmAdType() {
		return filmAdType;
	}

	public void setFilmAdType(String filmAdType) {
		this.filmAdType = filmAdType;
	}

	public String getGiftAdType() {
		return giftAdType;
	}

	public void setGiftAdType(String giftAdType) {
		this.giftAdType = giftAdType;
	}

}
