package member.model;

import java.sql.Timestamp;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MemberService {
	@Autowired
	MemberDAO memberDAO;

//	List<MemberBean> allMemberInfo = new ArrayList<MemberBean>();
//
//	public MemberService() {
//		this.allMemberInfo = getMemberList();
//		System.out.println(allMemberInfo);
//	}

	@Transactional(readOnly = true)
	public MemberBean checkLogin(String userEmail, String userPassword) {//登入驗證
		if (userEmail != null && userEmail.trim().length() != 0) {
			boolean exit = this.EmailExists(userEmail);
			if (exit) {
				Iterator<MemberBean> result = this.getMemberList().iterator();
				while (result.hasNext()) {
					MemberBean bean = result.next();
					if (bean.getPassword().trim().equals(userPassword)) {
						return bean;
					}
				}
			}
		}
		return null;
	}

	public MemberBean addNewMember(MemberBean bean) {// 註冊會員
		if (bean != null) {
			if (!this.EmailExists(bean.getEmail())) {
				bean.setRegistTime(new Timestamp(new java.util.Date().getTime()));
				bean.setFilmAdType("A");
				bean.setGiftAdType("A");
				return memberDAO.insert(bean);
			}
		}
		return bean;
	}

	@Transactional(readOnly = true)
	public boolean EmailExists(String userEmail) {// 檢查Email是否有被使用過
		if (userEmail != null && userEmail.trim().length() != 0) {
			Iterator<MemberBean> it = this.getMemberList().iterator();
			while (it.hasNext()) {
				MemberBean bean = it.next();
				String dbEmail = bean.getEmail();
				
				if (dbEmail.trim().equals(userEmail.trim())) {
					
					System.out.println("有重複Email無法新增");
					return true;
				}
			}
		}
		return false;
	}
	@Transactional(readOnly = true)
	public List<MemberBean> getMemberList() {// 查詢所有會員資訊
		return memberDAO.select();
	}

	public MemberBean updateMemberInfo(MemberBean bean) {// 更改會員個人資料
		if (bean != null) {
			return memberDAO.update(bean.getMemberId(), bean.getEmail(), bean.getPassword(), bean.getName(),
					bean.getAddress(), bean.getPhoneNumber(), bean.getGender(), bean.getBirthday(),
					bean.getRegistTime(), bean.getFilmAdType(), bean.getGiftAdType());
		}
		return bean;
	}
}
