package booking.model;

import java.sql.Timestamp;

public class TicketOrderDetailBean {

	private String TicketOrderID ;
	private String TicketOrderDetail; 
	private String FilmID ;
	private int TicketOrderPrice ; 
	private Timestamp TicketOrderDate; 
	private String SeatID  ;
	private String memberID;

	@Override
	public String toString() {
		return "TicketOrderDetailBean [TicketOrderID=" + TicketOrderID + ", TicketOrderDetail=" + TicketOrderDetail
				+ ", FilmID=" + FilmID + ", TicketOrderPrice=" + TicketOrderPrice + ", TicketOrderDate="
				+ TicketOrderDate + ", SeatID=" + SeatID + ", memberID=" + memberID + "]";
	}
	public String getTicketOrderID() {
		return TicketOrderID;
	}
	public void setTicketOrderID(String ticketOrderID) {
		TicketOrderID = ticketOrderID;
	}
	public String getTicketOrderDetail() {
		return TicketOrderDetail;
	}
	public void setTicketOrderDetail(String ticketOrderDetail) {
		TicketOrderDetail = ticketOrderDetail;
	}
	public String getFilmID() {
		return FilmID;
	}
	public void setFilmID(String filmID) {
		FilmID = filmID;
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
	public String getSeatID() {
		return SeatID;
	}
	public void setSeatID(String seatID) {
		SeatID = seatID;
	}
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}  
	
	
	
}
