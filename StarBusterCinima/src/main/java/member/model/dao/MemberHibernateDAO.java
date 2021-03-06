package member.model.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import booking.model.TicketOrderBean;
import films.model.FilmSectionBean;
import member.model.MemberBean;
import member.model.MemberDAO;

@Repository
public class MemberHibernateDAO implements MemberDAO {
	
	@Autowired
	SessionFactory sessionFactory;

	public Session session() {
		return sessionFactory.getCurrentSession();
	}
//	private String posterMedium;
	
//	private int ticketOrderId;
//	private Timestamp ticketOrderDate;
//	private Timestamp filmsectiontime;
//	private int ticketCount;
//	private String seatNum;
//	private int ticketOrderPrice;
//	private int ticketState;
//	private int filmId;
//	private int memberId;
//	private String ticketCode;
	@Override
	public List<Object[]> selectOrdersJoin(int memberId) {
//		 select ticketorderid, postermedium, [filmsectiontime], [ticketcount], [seatnum], [ticketorderprice], [ticketState] 
//		from TicketOrder as t    left outer join    Film as f    on    t.filmid=f.filmid
//		String hqlStmt = "select f.posterMedium, t.filmsectiontime, t.ticketCount, t.seatNum, t.ticketOrderPrice, t.ticketState from TicketOrderBean as t JOIN FilmBean as f on t.filmId=f.filmId where t.memberId = ?";
		String hqlStmt = "select f.posterMedium, t.filmsectiontime, t.ticketCount, t.ticketCode, t.ticketOrderPrice, t.ticketState from TicketOrderBean as t JOIN FilmBean as f on t.filmId=f.filmId where t.memberId = ?";
//		System.out.println("11");
		Query<Object[]> query = this.session().createQuery(hqlStmt);
//		System.out.println("22");
		
		query.setParameter(0, memberId);
		List<Object[]> result = query.getResultList();
		
		return result;
	}

	@Override
	public List<TicketOrderBean> selectOrdersByMemberId(int memberId) {
		Query<TicketOrderBean> query = this.session().createQuery("from TicketOrderBean where memberid =?", TicketOrderBean.class);
		query.setParameter(0, memberId);
		return query.getResultList();
	}

	@Override
	public MemberBean select(int memberId) {
		return this.session().get(MemberBean.class, memberId);
	}

	@Override
	public List<MemberBean> select() {
		Query<MemberBean> query = this.session().createQuery("from MemberBean", MemberBean.class);
		return query.getResultList();
	}

	@Override
	public MemberBean insert(MemberBean bean, InputStream is, byte[] sizeInBytes) {
		MemberBean insert = this.select(bean.getMemberId());
		if (insert == null) {

			try {

				if (is == null) {
					bean.setMemberImage(null);
				} else {
					is.read(sizeInBytes);
					bean.setMemberImage(new SerialBlob(sizeInBytes));
				}
				// else {
				// System.out.println("no image");
				// byte[] bytes = new byte[8192000];
				// int len;
				// while((len=is.read(bytes))!=-1) {
				// is.read(bytes, 0, len);
				// }
				// bean.setMemberImage( new SerialBlob(bytes));
				// }
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			this.session().save(bean);
		}
		return bean;
	}

	@Override
	public MemberBean update(int memberId, String email, String password, String name, String address,
			String phoneNumber, String gender, java.sql.Date registration_date, Timestamp registTime, String filmAdType,
			String giftAdType, String identityStatus, String identityCode) {
		MemberBean update = this.select(memberId);
		if (update != null) {
			update.setEmail(email);
			update.setPassword(password);
			update.setName(name);
			update.setAddress(address);
			update.setRegistration_date(registration_date);
			update.setPhoneNumber(phoneNumber);
			update.setFilmAdType(filmAdType);
			update.setGiftAdType(giftAdType);
			update.setIdentityCode(identityCode);
			update.setIdentityStatus(identityStatus);
		}
		return update;
	}

	@Override
	public boolean delete(int memberId) {
		MemberBean delete = this.select(memberId);
		if (delete != null) {
			this.session().delete(delete);
			return true;
		}
		return false;
	}

	@Override
	public MemberBean selectEmail(String email) {
		Query<MemberBean> query = this.session().createQuery("from MemberBean where email = :xxx", MemberBean.class);
		query.setParameter("xxx", email);
		List<MemberBean> list = query.getResultList();
		if (list.isEmpty()) {
			return null;
		} else {
			return list.get(0);
		}
	}

	@Override
	public MemberBean resendEmail(MemberBean bean, String identityCode) {
		MemberBean select = this.select(bean.getMemberId());
		if (select != null) {
			select.setIdentityCode(identityCode);
		}
		return select;
	}

	@Override
	public MemberBean updateChangeInfo(MemberBean bean, InputStream is, byte[] sizeInBytes) {
		MemberBean select = this.select(bean.getMemberId());
		if (select != null) {
			select.setEmail(bean.getEmail());
			select.setName(bean.getName());
			select.setAddress(bean.getAddress());
			select.setRegistration_date(bean.getRegistration_date());
			select.setPhoneNumber(bean.getPhoneNumber());
			if (is == null) {
				select.setMemberImage(null);
			} else {
				try {
					is.read(sizeInBytes);
					select.setMemberImage(new SerialBlob(sizeInBytes));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return select;
	}

	@Override
	public MemberBean updateChangePassword(int memberId, String password) {
		MemberBean select = this.select(memberId);
		if(select!=null) {
			select.setPassword(password);
		}
		return select;
	}



}
