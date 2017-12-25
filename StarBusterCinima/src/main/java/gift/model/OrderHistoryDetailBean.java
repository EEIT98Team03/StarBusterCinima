package gift.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "OrderHistoryDetail")
public class OrderHistoryDetailBean {
	@Override
	public String toString() {
		return "OrderHistoryDetailBean [orderId=" + orderId + ", memberEmail=" + memberEmail + ", itemId=" + itemId
				+ ", itemName=" + itemName + ", itemHiddenName=" + itemHiddenName + ", unitPrice=" + unitPrice
				+ ", itemQquantity=" + itemQquantity + ", sumTotal=" + sumTotal + "]";
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderId;
	private String memberEmail;
	private int itemId;
	private String itemName;
	private String itemHiddenName;
	public String getItemHiddenName() {
		return itemHiddenName;
	}

	public void setItemHiddenName(String itemHiddenName) {
		this.itemHiddenName = itemHiddenName;
	}

	private int unitPrice;
	private int itemQquantity;
	private int sumTotal;

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
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
}
