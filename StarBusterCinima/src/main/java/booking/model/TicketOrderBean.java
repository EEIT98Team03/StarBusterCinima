package booking.model;

import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TICKETORDER")
public class TicketOrderBean {
	
	
	@Id
	private int ticketOrderID;
	private Date ticketOrderDate;
	private int memberID;
	private int filmID;
	private String seatNum;
	private int ticketCount;
	private int ticketOrderAmount;
	private int ticketState;
	public int getTicketOrderID() {
		return ticketOrderID;
	}
	public void setTicketOrderID(int ticketOrderID) {
		this.ticketOrderID = ticketOrderID;
	}
	public Date getTicketOrderDate() {
		return ticketOrderDate;
	}
	public void setTicketOrderDate(Date ticketOrderDate) {
		this.ticketOrderDate = ticketOrderDate;
	}
	public int getMemberID() {
		return memberID;
	}
	public void setMemberID(int memberID) {
		this.memberID = memberID;
	}
	public int getFilmID() {
		return filmID;
	}
	public void setFilmID(int filmID) {
		this.filmID = filmID;
	}
	public String getSeatNum() {
		return seatNum;
	}
	public void setSeatNum(String seatNum) {
		this.seatNum = seatNum;
	}
	public int getTicketCount() {
		return ticketCount;
	}
	public void setTicketCount(int ticketCount) {
		this.ticketCount = ticketCount;
	}
	public int getTicketOrderAmount() {
		return ticketOrderAmount;
	}
	public void setTicketOrderAmount(int ticketOrderAmount) {
		this.ticketOrderAmount = ticketOrderAmount;
	}
	public int getTicketState() {
		return ticketState;
	}
	public void setTicketState(int ticketState) {
		this.ticketState = ticketState;
	}
	@Override
	public String toString() {
		return "TicketOrderBean [ticketOrderID=" + ticketOrderID + ", ticketOrderDate=" + ticketOrderDate
				+ ", memberID=" + memberID + ", filmID=" + filmID + ", seatNum=" + seatNum + ", ticketCount="
				+ ticketCount + ", ticketOrderAmount=" + ticketOrderAmount + ", ticketState=" + ticketState + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
//	private String ticketOrderId;
//	private Date ticketOrderDate;
//	private int ticketOrderAmount;
//	private int memberID;
//	private String filmId;
//	private String ticketState;
//	private int ticketCount;
//	private String seatNumber;
	
	
	
	

	
	
}
