package gift.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PotentialItemList")
public class PotentialItemListBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int potentialId;
	private int memberID;
	private String itemCategoryID;
	private String itemCategoryName;
	private int itemID;
	private String itemName;
	private java.sql.Timestamp createdTime;
	
	public PotentialItemListBean() {
		super();
	}
	public int getPotentialId() {
		return potentialId;
	}
	public void setPotentialId(int potentialId) {
		this.potentialId = potentialId;
	}
	public int getMemberID() {
		return memberID;
	}
	public void setMemberID(int memberID) {
		this.memberID = memberID;
	}
	public String getItemCategoryID() {
		return itemCategoryID;
	}
	public void setItemCategoryID(String itemCategoryID) {
		this.itemCategoryID = itemCategoryID;
	}
	public String getItemCategoryName() {
		return itemCategoryName;
	}
	public void setItemCategoryName(String itemCategoryName) {
		this.itemCategoryName = itemCategoryName;
	}
	public int getItemID() {
		return itemID;
	}
	public void setItemID(int itemID) {
		this.itemID = itemID;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public java.sql.Timestamp getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(java.sql.Timestamp createdTime) {
		this.createdTime = createdTime;
	}
}
