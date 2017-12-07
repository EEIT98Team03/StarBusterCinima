package gift.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "GiftItemList")
public class GiftItemBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String itemId;
	private String itemCategoryId;
	private String itemCategoryName;
	private String itemName;
	private long unitPrice;
	private String spec;
	private String itemPhoto;
	private int isAvailable;
	private java.sql.Timestamp createdTime;
	
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	public String getItemCategoryId() {
		return itemCategoryId;
	}
	public void setItemCategoryId(String itemCategoryId) {
		this.itemCategoryId = itemCategoryId;
	}
	public String getItemCategoryName() {
		return itemCategoryName;
	}
	public void setItemCategoryName(String itemCategoryName) {
		this.itemCategoryName = itemCategoryName;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public long getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(long unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public String getItemPhoto() {
		return itemPhoto;
	}
	public void setItemPhoto(String itemPhoto) {
		this.itemPhoto = itemPhoto;
	}
	public int getIsAvailable() {
		return isAvailable;
	}
	public void setIsAvailable(int isAvailable) {
		this.isAvailable = isAvailable;
	}
	public java.sql.Timestamp getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(java.sql.Timestamp createdTime) {
		this.createdTime = createdTime;
	}
	
}
