package adminstrator.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Administrator")
public class AdministratorBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int adminstratorId;
	private String email;
	private String password;
	private String name;
	private String phoneNumber;
	private String department;

	public AdministratorBean() {
		super();
	}

	public AdministratorBean(int adminstratorId, String email, String password, String name, String phoneNumber,
			String department) {
		super();
		this.adminstratorId = adminstratorId;
		this.email = email;
		this.password = password;
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.department = department;
	}

	public int getAdminstratorId() {
		return adminstratorId;
	}

	public void setAdminstratorId(int adminstratorId) {
		this.adminstratorId = adminstratorId;
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

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

}
