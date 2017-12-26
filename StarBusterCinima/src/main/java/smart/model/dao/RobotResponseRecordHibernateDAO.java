package smart.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import smart.model.RobotResponseRecordBean;
import smart.model.RobotResponseRecordDAO;

@Repository
public class RobotResponseRecordHibernateDAO implements RobotResponseRecordDAO {
	@Autowired
	SessionFactory sessionFactory;

	public Session session() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public boolean insert(RobotResponseRecordBean bean) {
		if (bean != null) {
			this.session().save(bean);
			return true;
		}
		return false;
	}

//    { x: new Date(2012, 00, 1), y: 2600 },
//    { x: new Date(2012, 01, 1), y: 3800 },
//    { x: new Date(2012, 02, 1), y: 4300 },
//    { x: new Date(2012, 03, 1), y: 2900 },
//    { x: new Date(2012, 04, 1), y: 4100 },
//    { x: new Date(2012, 05, 1), y: 4500 },
//    { x: new Date(2012, 06, 1), y: 8600 },
//    { x: new Date(2012, 07, 1), y: 6400 },
//    { x: new Date(2012, 08, 1), y: 5300 },
//    { x: new Date(2012, 09, 1), y: 6000 }
//	[
//	    {
//	        "65up": 0,
//	        "31-45": 0,
//	        "21-30": 0,
//	        "46-65": 0,
//	        "0-20": 5
//	    }
//	]
	@Override
	public List<Map<String, Object>> selectAgeLevelCount() {
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		
		//0-20 21-30 31-45 46-65 65up
		
		//0-20
		Map<String, Object> map0_20 = new LinkedHashMap<String, Object>();
		Query query = this.session().createQuery("select count(birthday) from RobotResponseRecordBean where year(birthday)>1997 group by birthday");
		List list1 = query.getResultList();
		
		map0_20.put("y",(list1.size()==0)?0:list1.get(0));
		map0_20.put("indexLabel","0-20");
		list.add(map0_20);
		//21-30
		Map<String, Object> map21_30 = new LinkedHashMap<String, Object>();
		query = this.session().createQuery("select count(birthday) from RobotResponseRecordBean where year(birthday) between 1987 and 1996 group by birthday");
		list1 = query.getResultList();
		map21_30.put("y",(list1.size()==0)?0:list1.get(0));
		map21_30.put("indexLabel","21-30");
		list.add(map21_30);
		//31-45
		Map<String, Object> map31_45 = new LinkedHashMap<String, Object>();
		query = this.session().createQuery("select count(birthday) from RobotResponseRecordBean where year(birthday) between 1972 and 1986 group by birthday");
		list1 = query.getResultList();
		map31_45.put("y",(list1.size()==0)?0:list1.get(0));
		map31_45.put("indexLabel","31-45");
		list.add(map31_45);
		//46-65
		Map<String, Object> map46_65 = new LinkedHashMap<String, Object>();
		query = this.session().createQuery("select count(birthday) from RobotResponseRecordBean where year(birthday) between 1952 and 1971 group by birthday");
		list1 = query.getResultList();
		map46_65.put("y",(list1.size()==0)?0:list1.get(0));
		map46_65.put("indexLabel","46-65");
		list.add(map46_65);
		//65up
		Map<String, Object> map65up = new LinkedHashMap<String, Object>();
		query = this.session().createQuery("select count(birthday) from RobotResponseRecordBean where year(birthday)<1952 group by birthday");
		list1 = query.getResultList();
		map65up.put("y",(list1.size()==0)?0:list1.get(0));
		map65up.put("indexLabel","65up");
		list.add(map65up);
		
		return list;
	}
//List<Map<String, Object>>
//	[{  y: 4181563, indexLabel: "PlayStation 3" },
//	{  y: 2175498, indexLabel: "Wii" }]
	@Override
	public List<Map<String, Object>> selectBoyGirlCount() {
		// select count(gender) from RobotResponseRecord group by gender having gender =
		// 'Man'
		// select count(gender) from RobotResponseRecordBean group by gender having
		// gender = 'Man'
		List<Map<String, Object>> allList = new ArrayList<Map<String, Object>>();
		
		
		Map<String, Object> manMap = new LinkedHashMap<String, Object>();
		Query<?> query1 = this.session()
				.createQuery("select count(gender) from RobotResponseRecordBean group by gender having gender = 'Man'");
		List<?> manResult = query1.getResultList();
		if (!manResult.isEmpty()) {
			manMap.put("y", manResult.get(0));
			manMap.put("indexLabel","Man");
			allList.add(manMap);
		}else {
			manMap.put("y",0);
			manMap.put("indexLabel","Man");
			allList.add(manMap);
		}
		
		
		Query<?> query2 = this.session().createQuery(
				"select count(gender) from RobotResponseRecordBean group by gender having gender = 'Woman'");
		List<?> womanResult = query2.getResultList();
		Map<String, Object> womanMap = new HashMap<String, Object>();
		if (!womanResult.isEmpty()) {
			womanMap.put("y", womanResult.get(0));
			womanMap.put("indexLabel","Woman");
			allList.add(womanMap);
		}else {
			womanMap.put("y", 0);
			womanMap.put("indexLabel","Woman");
			allList.add(womanMap);
		}
		return allList;
	}
//	{ x: 1, y: 1001, label: "Venezuela"},
//    { x: 2, y: 417,  label: "Saudi" },
//    { x: 3, y: 310,  label: "Canada"},
//    { x: 4, y: 580,  label: "Iran"},
//    { x: 5, y: 100,  label: "Russia"},
//    { x: 6, y: 80, label: "UAE"},
//    { x: 7, y: 62,  label: "US"},
//    { x: 8, y: 50,  label: "China"}
//	[
//	    {
//	        "商品熱銷": 5
//	    }
//	]
	@Override
	public List<List> selectTypeKeyCount() {
		List  innerList=null;
		List<List> list1 = new ArrayList<>();
		Query query = this.session().createQuery(
				"select typekeyWord , count(typekeyWord) from RobotResponseRecordBean group by typekeyWord order by count(typekeyWord) desc");
		List<Object[]> list2 = query.getResultList();
		for(int i=0;i<list2.size();i++) {
			Object[] obj = list2.get(i);
			for(int j=0;j<obj.length;j++) {
				innerList=new ArrayList();
				innerList.add(obj[0]);
				innerList.add(obj[1]);
//				map.put(obj[0],obj[1]);//key value
			}
			list1.add(innerList);
		}
//		for(Object[] obj:list) {
//			for(Object obj2:obj) {
//				System.out.println(obj+":"+obj2);
//			}
//		}
//		List<Map<String, Integer>> list = (List<Map<String, Integer>>) query.getResultList();
		return list1;
	}

}
