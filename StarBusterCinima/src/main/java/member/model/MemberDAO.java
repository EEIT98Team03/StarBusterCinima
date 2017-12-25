package member.model;

import java.io.InputStream;
import java.util.List;

public interface MemberDAO {

	MemberBean select(int memberId);
	MemberBean selectEmail(String email);
	List<MemberBean> select();
	MemberBean insert(MemberBean bean,InputStream is,byte[] sizeInBytes);
	MemberBean update(int memberId,String email,String password,String name,String address,String phoneNumber,String gender,java.sql.Date registration_date,java.sql.Timestamp registTime,String filmAdType,String giftAdType,String identityStatus,String identityCode);
	MemberBean updateChangeInfo(MemberBean bean,InputStream is,byte[] sizeInBytes);
	MemberBean updateChangePassword(int memberId,String password);
	MemberBean resendEmail(MemberBean bean,String identityCode);
	boolean delete(int memberId);
	
}
