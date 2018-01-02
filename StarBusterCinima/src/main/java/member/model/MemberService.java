package member.model;

import java.io.InputStream;
import java.sql.Blob;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import misc.CipherUtils;
import misc.EmailUtil;

@Service
@Transactional
public class MemberService {
	@Autowired
	MemberDAO memberDAO;

	// List<MemberBean> allMemberInfo = new ArrayList<MemberBean>();
	//
	// public MemberService() {
	// this.allMemberInfo = getMemberList();
	// System.out.println(allMemberInfo);
	// }

	@Transactional(readOnly=true)
	public MemberBean getMemberInfoById(int memberId) {
		return memberDAO.select(memberId);
	}

	public MemberBean checkLogin(String userEmail, String userPassword) {// 登入驗證
		if (userEmail != null && userEmail.trim().length() != 0) {
			MemberBean bean = this.EmailExistsGetMemberBean(userEmail);
			if (bean != null) {
				if (bean.getPassword().trim().equals(CipherUtils.getStringMD5(userPassword))) {
					bean.setLastLoginTime(new Timestamp(new Date().getTime()));//更改登入時間
					this.updateMemberInfo(bean);
					return bean;
				}
			}
		}
		return null;
	}

	public MemberBean addNewMember(MemberBean bean, InputStream is, byte[] sizeInBytes) {// 註冊會員
		if (bean != null) {
			if (!this.EmailExists(bean.getEmail())) {
				bean.setRegistTime(new Timestamp(new java.util.Date().getTime()));
				bean.setLastLoginTime(new Timestamp(new java.util.Date().getTime()));
				bean.setIdentityStatus("unverified");
				bean.setPassword(CipherUtils.getStringMD5(bean.getPassword()));// 密碼進行MD5編碼
				// 將email轉為MD5當驗證碼
				String userEmail = bean.getEmail();
				// http://localhost:8080/StarBusterCinima/member/EmailVerify.controller/?userEmail=biea326hu@hotmail.com&emailEncryption=XXXXX
				String emailEncryption = CipherUtils.getStringMD5(userEmail);
				bean.setIdentityCode(emailEncryption);// 儲存加密的資料到資料庫
				EmailUtil.sendEmail(bean.getEmail(), "StarBusterCinima 會員帳號電子信箱驗證信件",
						"<p>此為系統自動發送的信件，並不接收回信，請勿回覆。</p><br /><p>Hi, " + bean.getName()
								+ "</p><p>請點擊下方連結完成帳號的啟用</p> <a href='http://localhost:8080/StarBusterCinima/member/EmailVerify.controller/?userEmail="
								+ userEmail + "&emailEncryption=" + emailEncryption
								+ "'>請點選此處進行驗證</a><br /><p>注意事項：</p><p>1. 若您沒有申請這項服務，請忽略這封信件。</p><p> 2. 如收到多封信件，請以最新的一封進行操作。</p><p>3. 請於兩天內點選以下連結完成帳號啟用，超過期限該連結將自動失效。</p><p> 4. 若連結無法直接點擊，請手動複製連結貼至瀏覽器網址前往。</p>",
						null);
				bean.setFilmAdType("A");
				bean.setGiftAdType("A");
				return memberDAO.insert(bean, is, sizeInBytes);
			}
		}
		return bean;
	}

	@Transactional(readOnly = true)
	public boolean EmailExists(String userEmail) {// 檢查Email是否有被使用過
		if (userEmail != null && userEmail.trim().length() != 0) {
			MemberBean result = memberDAO.selectEmail(userEmail);
			if (result == null) {
				return false;
			} else {
				return true;
			}
		}
		return false;
	}

	@Transactional(readOnly = true)
	public MemberBean EmailExistsGetMemberBean(String userEmail) {// 讀取Email的資訊
		if (userEmail != null && userEmail.trim().length() != 0) {
			MemberBean result = memberDAO.selectEmail(userEmail);
			return result;
		}
		return null;
	}

	@Transactional(readOnly = true)
	public List<MemberBean> getMemberList() {// 查詢所有會員資訊
		return memberDAO.select();
	}

	public MemberBean updateMemberInfo(MemberBean bean) {// 更改會員個人資料
		if (bean != null) {
			return memberDAO.update(bean.getMemberId(), bean.getEmail(), bean.getPassword(), bean.getName(),
					bean.getAddress(), bean.getPhoneNumber(), bean.getGender(), bean.getRegistration_date(),
					bean.getRegistTime(), bean.getFilmAdType(), bean.getGiftAdType(), bean.getIdentityStatus(),
					bean.getIdentityCode());
		}
		return bean;
	}

	public boolean deleteMemeber(int memberId) {
		boolean result = memberDAO.delete(memberId);
		return result;
	}

	@Transactional(readOnly = true)
	public Blob getMemberImage(int memberId) {
		Blob blob = null;
		if (memberId > 0) {

			MemberBean member = memberDAO.select(memberId);
			if (member != null) {
				blob = member.getMemberImage();
			}
		}
		return blob;
	}
	
	public boolean resendEmail(int memberId) {
			MemberBean bean = this.getMemberInfoById(memberId);
			if(bean!=null) {
				String userEmail = bean.getEmail();
				String emailEncryption = CipherUtils.getStringMD5(userEmail);
				bean.setIdentityCode(emailEncryption);// 儲存加密的資料到資料庫
				EmailUtil.sendEmail(userEmail, "StarBusterCinima 會員帳號電子信箱驗證信件",
						"<p>此為系統自動發送的信件，並不接收回信，請勿回覆。</p><br /><p>Hi, " + bean.getName()
								+ "</p><p>請點擊下方連結完成帳號的啟用</p> <a href='http://localhost:8080/StarBusterCinima/member/EmailVerify.controller/?userEmail="
								+ userEmail + "&emailEncryption=" + emailEncryption
								+ "'>請點選此處進行驗證</a><br /><p>注意事項：</p><p>1. 若您沒有申請這項服務，請忽略這封信件。</p><p> 2. 如收到多封信件，請以最新的一封進行操作。</p><p>3. 請於兩天內點選以下連結完成帳號啟用，超過期限該連結將自動失效。</p><p> 4. 若連結無法直接點擊，請手動複製連結貼至瀏覽器網址前往。</p>",
						null);
				memberDAO.resendEmail(bean, emailEncryption);
				return true;
			}
		return false;
	}
	
	public MemberBean updateChangeInfo(MemberBean bean, InputStream is, byte[] sizeInBytes) {
		MemberBean select = this.getMemberInfoById(bean.getMemberId());
		if (select != null) {
			return memberDAO.updateChangeInfo(bean, is, sizeInBytes);
		}
		return select;
	}
	
	public MemberBean updateChangePassword(int memberId, String password) {
		return memberDAO.updateChangePassword(memberId, CipherUtils.getStringMD5(password));// 密碼進行MD5編碼
	}
	
	
}
