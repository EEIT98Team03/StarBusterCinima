package ad.model;

import java.io.InputStream;
import java.sql.Blob;
import java.util.List;
import java.util.Map;

public interface AdRepositoryDAO {
	//select by id
	AdRepositoryBean selectById(int id);
	//select all
	List<AdRepositoryBean> selectAll();
	//select no image json
	List<AdRepositoryDataNoImageBean> selectAllNoImageJson();
	//select imageId url
	List<Map<Object,Object>> getImageIdUrlByTypePositionASC(String type, String position) ;
	//insert
	boolean insert(AdRepositoryBean bean,InputStream is,byte[] sizeInBytes);
	//update
	boolean update(AdRepositoryBean bean,InputStream is,byte[] sizeInBytes);
	//update no change image
	boolean update(AdRepositoryBean bean);
	//delete
	boolean delete(int id);
	
	Blob getImageById(int id);
	
	List<Blob> getImageByTypePositionSequence(String type,String position,int sequence);
}
