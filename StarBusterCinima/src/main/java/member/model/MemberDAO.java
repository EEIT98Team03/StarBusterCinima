package member.model;

import java.util.List;

public interface MemberDAO {

	MemberBean select(int memberId);
	MemberBean selectEmail(String email);
	List<MemberBean> select();
	MemberBean insert(MemberBean bean);
	MemberBean update(int memberId,String email,String password,String name,String address,String phoneNumber,String gender,java.sql.Date registration_date,java.sql.Timestamp registTime,String filmAdType,String giftAdType,String identityStatus,String identityCode);
	boolean delete(int memberId);
	
}
