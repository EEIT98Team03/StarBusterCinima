package gift.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "OrderHistoryDetail")
public class OrderHistoryDetailBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderId;
	private int memberId;
	private int itemCategoryId;
	private String itemCategoryName;
	private int itemId;
	private String itemName;
	private int unitPrice;
	private int itemQquantity;
	private int sumTotal;

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public int getItemCategoryId() {
		return itemCategoryId;
	}

	public void setItemCategoryId(int itemCategoryId) {
		this.itemCategoryId = itemCategoryId;
	}

	public String getItemCategoryName() {
		return itemCategoryName;
	}

	public void setItemCategoryName(String itemCategoryName) {
		this.itemCategoryName = itemCategoryName;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
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

	public int getItemQquantity() {
		return itemQquantity;
	}

	public void setItemQquantity(int itemQquantity) {
		this.itemQquantity = itemQquantity;
	}

	public int getSumTotal() {
		return sumTotal;
	}

	public void setSumTotal(int sumTotal) {
		this.sumTotal = sumTotal;
	}

	public OrderHistoryDetailBean() {
		super();
	}

	public OrderHistoryDetailBean(int orderId, int memberId, int itemCategoryId, String itemCategoryName,
			int itemId, String itemName, int unitPrice, int itemQquantity, int sumTotal, Timestamp purchasedTime) {
		super();
		this.orderId = orderId;
		this.memberId = memberId;
		this.itemCategoryId = itemCategoryId;
		this.itemCategoryName = itemCategoryName;
		this.itemId = itemId;
		this.itemName = itemName;
		this.unitPrice = unitPrice;
		this.itemQquantity = itemQquantity;
		this.sumTotal = sumTotal;
	}
}
