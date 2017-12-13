package booking.model;

import java.sql.Timestamp;

public class TicketOrderBean {

	private String TicketOrderID;
	private int TicketOrderPrice;
	private Timestamp TicketOrderDate;
	private int TicketOrderAmount;
	private String memberID;
	private String FilmID;
	private String FilmName;
	
	@Override
	public String toString() {
		return "TicketOrderBean [TicketOrderID=" + TicketOrderID + ", TicketOrderPrice=" + TicketOrderPrice
				+ ", TicketOrderDate=" + TicketOrderDate + ", TicketOrderAmount=" + TicketOrderAmount + ", memberID="
				+ memberID + ", FilmID=" + FilmID + ", FilmName=" + FilmName + "]";
	}
	public String getTicketOrderID() {
		return TicketOrderID;
	}
	public void setTicketOrderID(String ticketOrderID) {
		TicketOrderID = ticketOrderID;
	}
	public int getTicketOrderPrice() {
		return TicketOrderPrice;
	}
	public void setTicketOrderPrice(int ticketOrderPrice) {
		TicketOrderPrice = ticketOrderPrice;
	}
	public Timestamp getTicketOrderDate() {
		return TicketOrderDate;
	}
	public void setTicketOrderDate(Timestamp ticketOrderDate) {
		TicketOrderDate = ticketOrderDate;
	}
	public int getTicketOrderAmount() {
		return TicketOrderAmount;
	}
	public void setTicketOrderAmount(int ticketOrderAmount) {
		TicketOrderAmount = ticketOrderAmount;
	}
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getFilmID() {
		return FilmID;
	}
	public void setFilmID(String filmID) {
		FilmID = filmID;
	}
	public String getFilmName() {
		return FilmName;
	}
	public void setFilmName(String filmName) {
		FilmName = filmName;
	}
	
	
}
