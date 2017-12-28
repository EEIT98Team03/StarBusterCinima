package booking.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Repository;

@Repository
@Entity
@Table(name = "TICKETORDER")
public class TicketOrderBean {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ticketOrderId;
	private Timestamp ticketOrderDate;
	private Timestamp filmsectiontime;
	private int ticketCount;
	private String seatNum;
	private int ticketOrderPrice;
	private int ticketState;
	private int filmId;
	private int memberId;
	public int getTicketOrderId() {
		return ticketOrderId;
	}
	public void setTicketOrderId(int ticketOrderId) {
		this.ticketOrderId = ticketOrderId;
	}
	public Timestamp getTicketOrderDate() {
		return ticketOrderDate;
	}
	public void setTicketOrderDate(Timestamp ticketOrderDate) {
		this.ticketOrderDate = ticketOrderDate;
	}


	public Timestamp getFilmsectiontime() {
		return filmsectiontime;
	}
	public void setFilmsectiontime(Timestamp filmsectiontime) {
		this.filmsectiontime = filmsectiontime;
	}
	public int getTicketCount() {
		return ticketCount;
	}
	public void setTicketCount(int ticketCount) {
		this.ticketCount = ticketCount;
	}
	public String getSeatNum() {
		return seatNum;
	}
	public void setSeatNum(String seatNum) {
		this.seatNum = seatNum;
	}

	public int getTicketOrderPrice() {
		return ticketOrderPrice;
	}
	public void setTicketOrderPrice(int ticketOrderPrice) {
		this.ticketOrderPrice = ticketOrderPrice;
	}
	public int getTicketState() {
		return ticketState;
	}
	public void setTicketState(int ticketState) {
		this.ticketState = ticketState;
	}
	public int getFilmId() {
		return filmId;
	}
	public void setFilmId(int filmId) {
		this.filmId = filmId;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	@Override
	public String toString() {
		return "TicketOrderBean [ticketOrderId=" + ticketOrderId + ", ticketOrderDate=" + ticketOrderDate
				+ ", filmsectiontime=" + filmsectiontime + ", ticketCount=" + ticketCount + ", seatNum=" + seatNum
				+ ", ticketOrderPrice=" + ticketOrderPrice + ", ticketState=" + ticketState + ", filmId=" + filmId
				+ ", memberId=" + memberId + "]";
	}

	
	
	
//	public int getTicketorderid() {
//		return ticketorderid;
//	}
//	public void setTicketorderid(int ticketorderid) {
//		this.ticketorderid = ticketorderid;
//	}
//	public Timestamp getTicketorderdate() {
//		return ticketorderdate;
//	}
//	public void setTicketorderdate(Timestamp ticketorderdate) {
//		this.ticketorderdate = ticketorderdate;
//	}
//	public Timestamp getDatetime() {
//		return datetime;
//	}
//	public void setDatetime(Timestamp datetime) {
//		this.datetime = datetime;
//	}
//	public int getTicketcount() {
//		return ticketcount;
//	}
//	public void setTicketcount(int ticketcount) {
//		this.ticketcount = ticketcount;
//	}
//	public String getSeatnum() {
//		return seatnum;
//	}
//	public void setSeatnum(String seatnum) {
//		this.seatnum = seatnum;
//	}
//	public int getTicketorderamount() {
//		return ticketorderamount;
//	}
//	public void setTicketorderamount(int ticketorderamount) {
//		this.ticketorderamount = ticketorderamount;
//	}
//	public int getTicketstate() {
//		return ticketstate;
//	}
//	public void setTicketstate(int ticketstate) {
//		this.ticketstate = ticketstate;
//	}
//	public int getFilmid() {
//		return filmid;
//	}
//	public void setFilmid(int filmid) {
//		this.filmid = filmid;
//	}
//	public int getMemberid() {
//		return memberid;
//	}
//	public void setMemberid(int memberid) {
//		this.memberid = memberid;
//	}
//	@Override
//	public String toString() {
//		return "TicketOrderBean [ticketorderid=" + ticketorderid + ", ticketorderdate=" + ticketorderdate
//				+ ", datetime=" + datetime + ", ticketcount=" + ticketcount + ", seatnum=" + seatnum
//				+ ", ticketorderamount=" + ticketorderamount + ", ticketstate=" + ticketstate + ", filmid=" + filmid
//				+ ", memberid=" + memberid + "]";
//	}

	
	
}
