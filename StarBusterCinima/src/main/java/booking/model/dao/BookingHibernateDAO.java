package booking.model.dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import booking.model.BookingDAO;
import booking.model.TicketOrderBean;
import films.model.FilmBean;
import films.model.FilmSectionBean;
import member.model.MemberBean;
@Repository
public class BookingHibernateDAO implements BookingDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public Session session() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public TicketOrderBean insert(TicketOrderBean bean) {
		Serializable theKey = this.session().save(bean);
//		System.out.println("(BookingHibernateDAO) insertOrderSuccess. the key is: "+theKey+"  the bean is: "+bean);
		return bean;
	}

	@Override
	public String selectNameById(int filmId) {
		FilmBean bean = this.session().get(FilmBean.class, filmId);
		return bean.getFilmName();
		 
	}
	
	
	@Override
	public String updateUnavailableSeats(int sectionId,String selectedSeats) {
		
		Query<FilmSectionBean> query = this.session().createQuery("from FilmSectionBean where filmSectionId=?", FilmSectionBean.class);
		query.setParameter(0, sectionId);
		String oldData = query.getResultList().get(0).getUnavailableSeats();
//		if("null".equals(oldData.toLowerCase())) {
//			oldData = "";
//		}
		String newData = oldData+","+selectedSeats;
		if(newData.substring(0, 1).equals(",")) {
			newData = newData.replaceFirst(",","");
		}
//		System.out.println("測試"+newData.substring(0, 1)==",");
		String hql = "UPDATE FilmSectionBean set unavailableSeats = :unavailableSeats"+" where filmSectionId = :filmSectionId";
		Query update = this.session().createQuery(hql);
		update.setParameter("unavailableSeats", newData);
		update.setParameter("filmSectionId", sectionId);
		int result = update.executeUpdate();
//		System.out.println("(BookingHibernateDAO > updateUnavailableSeats): " + result+">>>"+newData);
		
		
		return newData;
		
	}
	
	
	
	
	@Override
	public Map<String, String> pickSeats(int sectionId) {
		Map<String,String> result = new HashMap<String,String>();
		//select roomSeats,unavailableSeats from FilmSection where filmsectionid=?
		Query<FilmSectionBean> query = this.session().createQuery("from FilmSectionBean where filmSectionId=?", FilmSectionBean.class);
		query.setParameter(0, sectionId);
//		System.out.println("TESTsectionId= "+sectionId );
//		result.put("roomSeats", query.getResultList().get(0).getRoomSeats());
		System.out.println("TTTEST sectionId "+sectionId);
		System.out.println("TTTEST query.getResultList() "+query.getResultList());
		
//		if(query.getResultList().len) {
			result.put("unavailableSeats", query.getResultList().get(0).getUnavailableSeats());
//		}
		return result;
	}
	
	
	@Override
	public int makeSectionId(int filmId , Timestamp filmsectiontime) {
//		System.out.println("BBB filmId "+filmId);
//		System.out.println("BBB filmsectiontime "+filmsectiontime);
		
		
//		String connUrl = "jdbc:sqlserver://192.168.40.19:1433;database=StarBusterCinima";
		String connUrl = "jdbc:sqlserver://localhost:1433;database=StarBusterCinima";
		String sql = "select * from FilmSection where filmid=? AND Convert(varchar, filmsectiontime,120) LIKE ? ";
		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null ;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String str = df.format(filmsectiontime);
		

		int filmSectionId = 0;
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection(connUrl, "sa", "passw0rd");
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, filmId);
			pstmt.setString(2, str+"%");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
//				result.put("roomSeats", rs.getString("roomSeats"));
//				result.put("unavailableSeats", rs.getString("unavailableSeats"));
				filmSectionId = rs.getInt("filmSectionId");
//				System.out.println("filmSectionIdXXX="+filmSectionId);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}finally{
	        try {
	            if(rs != null){
	                rs.close();
	            }
	            if(pstmt != null){
	            	pstmt.close();
	            }
	            if(conn != null){
	                conn.close();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
//		System.out.println("(BookingHibernateDAO)"+filmSectionId);
		return filmSectionId;
	}

//public static void main(String[] args) {
//	String a = "abc";
//	
//}


}
