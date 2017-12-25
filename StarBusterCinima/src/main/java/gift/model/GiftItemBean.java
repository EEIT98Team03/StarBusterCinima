package gift.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "GiftItem")
public class GiftItemBean {
	@Override
	public String toString() {
		return "GiftItemBean [itemId=" + itemId + ", itemName=" + itemName + ", itemNameHidden=" + itemNameHidden
				+ ", unitPrice=" + unitPrice + ", spec=" + spec + "]";
	}
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int itemId;
	public GiftItemBean(int itemId, String itemCategoryId, String itemCategoryName, String itemName, String itemNameHidden, int unitPrice,
			String spec, String itemPhoto) {
		super();
		this.itemId = itemId;
		this.itemCategoryId = itemCategoryId;
		this.itemCategoryName = itemCategoryName;
		this.itemName = itemName;
		this.itemNameHidden = itemNameHidden;
		this.unitPrice = unitPrice;
		this.spec = spec;
		this.itemPhoto = itemPhoto;
	}
	public GiftItemBean() {
		super();
	}
	private String itemCategoryId;
	private String itemCategoryName;
	private String itemName;
	private String itemNameHidden;
	public String getItemNameHidden() {
		return itemNameHidden;
	}
	public void setItemNameHidden(String itemNameHidden) {
		this.itemNameHidden = itemNameHidden;
	}
	private int unitPrice;
	private String spec;
	private String itemPhoto;
	
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
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
	public int getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(int unitPrice) {
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
	
}
