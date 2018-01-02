package gift.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "OrderHistoryBrief")
public class OrderHistoryBriefBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderId;
	@Override
	public String toString() {
		return "OrderHistoryBriefBean [orderId=" + orderId + ", memberEmail=" + memberEmail + ", totalAmountOriginal="
				+ totalAmountOriginal + ", discount=" + discount + ", totalAmountFinal=" + totalAmountFinal
				+ ", payMethod=" + payMethod + ", receiverName=" + receiverName + ", receiverAddressArea="
				+ receiverAddressArea + ", receiverAddressMainPart=" + receiverAddressMainPart + ", receiverPhone="
				+ receiverPhone + ", orderStatus=" + orderStatus + ", purchasedTime=" + purchasedTime + "]";
	}
	private String memberEmail;
	private int totalAmountOriginal;
	private int discount;
	private int totalAmountFinal;
	private String payMethod;
	private String receiverName;
	private String receiverAddressArea;
	private String receiverAddressMainPart;
	private String receiverPhone;
	private String orderStatus;
	private java.sql.Timestamp purchasedTime;
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getTotalAmountOriginal() {
		return totalAmountOriginal;
	}
	public void setTotalAmountOriginal(int totalAmountOriginal) {
		this.totalAmountOriginal = totalAmountOriginal;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getTotalAmountFinal() {
		return totalAmountFinal;
	}
	public void setTotalAmountFinal(int totalAmountFinal) {
		this.totalAmountFinal = totalAmountFinal;
	}
	public String getPayMethod() {
		return payMethod;
	}
	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	public String getReceiverAddressArea() {
		return receiverAddressArea;
	}
	public void setReceiverAddressArea(String receiverAddressArea) {
		this.receiverAddressArea = receiverAddressArea;
	}
	public String getReceiverAddressMainPart() {
		return receiverAddressMainPart;
	}
	public void setReceiverAddressMainPart(String receiverAddressMainPart) {
		this.receiverAddressMainPart = receiverAddressMainPart;
	}
	public String getReceiverPhone() {
		return receiverPhone;
	}
	public void setReceiverPhone(String receiverPhone) {
		this.receiverPhone = receiverPhone;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public java.sql.Timestamp getPurchasedTime() {
		return purchasedTime;
	}
	public void setPurchasedTime(java.sql.Timestamp purchasedTime) {
		this.purchasedTime = purchasedTime;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
}
