package ad.model.dao;

import java.io.InputStream;
import java.sql.Blob;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.rowset.serial.SerialBlob;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ad.model.AdRepositoryBean;
import ad.model.AdRepositoryDAO;
import ad.model.AdRepositoryDataNoImageBean;

@Repository
public class AdRepositoryHibernateDAO implements AdRepositoryDAO {
	@Autowired
	SessionFactory sessionFactory;

	public Session session() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public AdRepositoryBean selectById(int id) {
		return this.session().get(AdRepositoryBean.class, id);
	}

	@Override
	public List<AdRepositoryBean> selectAll() {
		Query<AdRepositoryBean> query = this.session().createQuery("from AdRepositoryBean", AdRepositoryBean.class);
		List<AdRepositoryBean> list = query.getResultList();
		return list;
	}

	@Override
	public List<AdRepositoryDataNoImageBean> selectAllNoImageJson() {
		Query<AdRepositoryDataNoImageBean> query = this.session().createQuery("from AdRepositoryDataNoImageBean",
				AdRepositoryDataNoImageBean.class);
		List<AdRepositoryDataNoImageBean> list = query.getResultList();
		return list;
	}

	@Override
	public boolean insert(AdRepositoryBean bean, InputStream is, byte[] sizeInBytes) {
		AdRepositoryBean select = this.selectById(bean.getId());
		if (select == null) {
			try {
				is.read(sizeInBytes);
				bean.setImage(new SerialBlob(sizeInBytes));
			} catch (Exception e) {
				e.printStackTrace();
			}
			this.session().save(bean);
			return true;
		}
		return false;
	}

	
	@Override
	public boolean update(AdRepositoryBean bean, InputStream is, byte[] sizeInBytes) {
		AdRepositoryBean select = this.selectById(bean.getId());
		if (select != null) {
			select.setType(bean.getType());
			select.setTitle(bean.getTitle());
			try {
				is.read(sizeInBytes);
				select.setImage(new SerialBlob(sizeInBytes));
			} catch (Exception e) {
				e.printStackTrace();
			}
			select.setUrl(bean.getUrl());
			select.setSequence(bean.getSequence());
			select.setPosition(bean.getPosition());
			select.setStatus(bean.getStatus());
			select.setViewCount(bean.getViewCount());
			select.setClickCount(bean.getClickCount());
			return true;
		}
		return false;
	}

	public boolean update(AdRepositoryBean bean) {
		AdRepositoryBean select = this.selectById(bean.getId());
		if (select != null) {
			select.setType(bean.getType());
			select.setTitle(bean.getTitle());
			select.setUrl(bean.getUrl());
			select.setSequence(bean.getSequence());
			select.setPosition(bean.getPosition());
			select.setStatus(bean.getStatus());
			return true;
		}
		return false;
	}

	@Override
	public boolean delete(int id) {
		AdRepositoryBean select = this.selectById(id);
		if (select != null) {
			this.session().delete(select);
			return true;
		}
		return false;
	}

	public Blob getImageById(int id) {
		AdRepositoryBean select = this.selectById(id);
		if (select != null) {
			return select.getImage();
		}
		return null;
	}
	
	public List<Map<Object,Object>> getImageIdUrlByTypePositionASC(String type, String position) {
		Map<Object,Object> map = null ;
		List<Map<Object,Object>> list0 = new ArrayList<Map<Object,Object>>();
		Query<Object[]> query = this.session().createQuery(
				"select id,url,title from AdRepositoryBean where  type=:type and status='開啟' and position=:position order by sequence ");
		query.setParameter("type", type);
		query.setParameter("position", position);
		List<Object[]> list = query.getResultList();
		for(int j = 0;j<list.size();j++) {
			Object[] obj1 = list.get(j);
				map= new HashMap<Object,Object>();
				map.put("id", obj1[0]);
				map.put("url", obj1[1]);
				map.put("title", obj1[2]);
				list0.add(map);
		}
		
		return list0;
	}
	public List<Blob> getImageByTypePositionSequence(String type, String position, int sequence) {
		Query<Blob> query = this.session().createQuery(
				"select image from AdRepositoryBean where  type=:type and status='開啟' and position=:position and sequence=:sequence ",
				java.sql.Blob.class);
		query.setParameter("type", type);
		query.setParameter("position", position);
		query.setParameter("sequence", sequence);
		List<Blob> list = query.getResultList();
		return list;
	}

}
