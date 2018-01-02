package gift.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "OrderHistoryBrief")
public class OrderHistoryBriefBean {
	@Override
	public String toString() {
		return "OrderHistoryBriefBean [orderId=" + orderId + ", memberId=" + memberId + ", totalAmountOriginal="
				+ totalAmountOriginal + ", discount=" + discount + ", totalAmountFinal=" + totalAmountFinal
				+ ", payMethod=" + payMethod + ", receiverName=" + receiverName + ", receiverAddressArea="
				+ receiverAddressArea + ", receiverAddressZipCode=" + receiverAddressZipCode
				+ ", receiverAddressMainPart=" + receiverAddressMainPart + ", receiverPhone=" + receiverPhone
				+ ", orderStatus=" + orderStatus + ", purchasedTime=" + purchasedTime + "]";
	}
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderId;
	public OrderHistoryBriefBean(int orderId, int memberId, int totalAmountOriginal, int discount,
			int totalAmountFinal, String payMethod, String receiverName, String receiverAddressArea,
			int receiverAddressZipCode, String receiverAddressMainPart, String receiverPhone, String orderStatus,
			Timestamp purchasedTime) {
		super();
		this.orderId = orderId;
		this.memberId = memberId;
		this.totalAmountOriginal = totalAmountOriginal;
		this.discount = discount;
		this.totalAmountFinal = totalAmountFinal;
		this.payMethod = payMethod;
		this.receiverName = receiverName;
		this.receiverAddressArea = receiverAddressArea;
		this.receiverAddressZipCode = receiverAddressZipCode;
		this.receiverAddressMainPart = receiverAddressMainPart;
		this.receiverPhone = receiverPhone;
		this.orderStatus = orderStatus;
		this.purchasedTime = purchasedTime;
	}
	public OrderHistoryBriefBean() {
		super();
	}
	private int memberId;
	private int totalAmountOriginal;
	private int discount;
	private int totalAmountFinal;
	private String payMethod;
	private String receiverName;
	private String receiverAddressArea;
	private int receiverAddressZipCode;
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
	public int getReceiverAddressZipCode() {
		return receiverAddressZipCode;
	}
	public void setReceiverAddressZipCode(int receiverAddressZipCode) {
		this.receiverAddressZipCode = receiverAddressZipCode;
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
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
}
