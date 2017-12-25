package booking.model;

public class SeatsBean {

	private String SeatID ;
	private String Seats ;
	private int SeatsState;
	
	@Override
	public String toString() {
		return "Seats [SeatID=" + SeatID + ", Seats=" + Seats + ", SeatsState=" + SeatsState + "]";
	}
	public String getSeatID() {
		return SeatID;
	}
	public void setSeatID(String seatID) {
		SeatID = seatID;
	}
	public String getSeats() {
		return Seats;
	}
	public void setSeats(String seats) {
		Seats = seats;
	}
	public int getSeatsState() {
		return SeatsState;
	}
	public void setSeatsState(int seatsState) {
		SeatsState = seatsState;
	}
	
	
}
