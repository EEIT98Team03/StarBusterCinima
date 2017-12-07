package member.model.dao;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import member.model.MemberBean;
import member.model.MemberDAO;

@Repository
public class MemberHibernateDAO implements MemberDAO {
	@Autowired
	SessionFactory sessionFactory;

	public Session session() {
		return sessionFactory.getCurrentSession();
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
	public MemberBean insert(MemberBean bean) {
		MemberBean insert = this.select(bean.getMemberId());
		if (insert == null) {
			this.session().save(bean);
		}
		return bean;
	}

	@Override
	public MemberBean update(int memberId, String email, String password, String name, String address,
			String phoneNumber, String gender, Date birthday, Timestamp registTime, String filmAdType,
			String giftAdType) {
		MemberBean update = this.select(memberId);
		if (update != null) {
			update.setEmail(email);
			update.setPassword(password);
			update.setName(name);
			update.setAddress(address);
			update.setPhoneNumber(phoneNumber);
			update.setFilmAdType(filmAdType);
			update.setGiftAdType(giftAdType);
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
}