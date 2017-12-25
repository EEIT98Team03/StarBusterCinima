package booking.model;

public class RoomBean {

	private String RoomID;
	private String RoomName ;
	private int RoomContainer ;
	
	@Override
	public String toString() {
		return "RoomBean [RoomID=" + RoomID + ", RoomName=" + RoomName + ", RoomContainer=" + RoomContainer + "]";
	}
	public String getRoomID() {
		return RoomID;
	}
	public void setRoomID(String roomID) {
		RoomID = roomID;
	}
	public String getRoomName() {
		return RoomName;
	}
	public void setRoomName(String roomName) {
		RoomName = roomName;
	}
	public int getRoomContainer() {
		return RoomContainer;
	}
	public void setRoomContainer(int roomContainer) {
		RoomContainer = roomContainer;
	}
	
	
	
}
