package member.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

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
	private java.util.Date birthday;
	private java.sql.Timestamp registTime;
	private java.sql.Timestamp lastLoginTime;
	private String filmAdType;
	private String giftAdType;
	private String identityStatus;
	private String identityCode;

	public MemberBean() {
		super();
	}

	public MemberBean(String email, String password, String name, String address, String phoneNumber, String gender,
			Date birthday) {
		super();
		this.email = email;
		this.password = password;
		this.name = name;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.gender = gender;
		this.birthday = birthday;
	}

	@Override
	public String toString() {
		return "MemberBean [memberId=" + memberId + ", email=" + email + ", password=" + password + ", name=" + name
				+ ", address=" + address + ", phoneNumber=" + phoneNumber + ", gender=" + gender + ", birthday="
				+ birthday + ", registTime=" + registTime + ", lastLoginTime=" + lastLoginTime + ", filmAdType="
				+ filmAdType + ", giftAdType=" + giftAdType + ", identityStatus=" + identityStatus + ", identityCode="
				+ identityCode + "]";
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

	public java.util.Date getBirthday() {
		return birthday;
	}

	public void setBirthday(java.util.Date birthday) {
		this.birthday = birthday;
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
