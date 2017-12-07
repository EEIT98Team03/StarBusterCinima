package member.model;

import java.util.List;

public interface MemberDAO {

	MemberBean select(int memberId);
	List<MemberBean> select();
	MemberBean insert(MemberBean bean);
	MemberBean update(int memberId,String email,String password,String name,String address,String phoneNumber,String gender,java.util.Date birthday,java.sql.Timestamp registTime,String filmAdType,String giftAdType);
	boolean delete(int memberId);
	
}
