package ad.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import ad.model.AdRepositoryBean;
import ad.model.AdRepositoryDataNoImageBean;
import ad.model.AdRepositoryService;

@RestController
@RequestMapping("/adManagements")
public class AdRepositoryController {
	@Autowired
	AdRepositoryService adRepositoryService;

	@RequestMapping(method = { RequestMethod.POST }) // textkeywordsanswer @RequestPart("file") MultipartFile file,
	public void insert(AdRepositoryBean bean, @RequestPart("file") MultipartFile file) {
		bean.setUploadTime(new java.sql.Timestamp(new java.util.Date().getTime()));
		try {
			InputStream is = file.getInputStream();
			byte[] sizeInBytes = file.getBytes();
			is.read(sizeInBytes);
			adRepositoryService.insert(bean, is, sizeInBytes);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping(method = { RequestMethod.POST },value="/PUT") // textkeywordsanswer @RequestPart("file") MultipartFile file,
	public void update(AdRepositoryBean bean, @RequestPart("file") MultipartFile file) {
		try {
			InputStream is = file.getInputStream();
			byte[] sizeInBytes = file.getBytes();
			is.read(sizeInBytes);
			adRepositoryService.update(bean, is, sizeInBytes);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	// textkeywordsanswer @RequestPart("file") MultipartFile file,
	@RequestMapping(method = { RequestMethod.POST },value="/PUTNOCHANGEIMAGE")
	public void update(AdRepositoryBean bean) {
		adRepositoryService.update(bean);
	}
	
	@RequestMapping(method = { RequestMethod.POST },value="/ViewCount={id}") 
	public void updateViewCount(@PathVariable int id) {
		adRepositoryService.updateViewCount(id);
	}
	
	@RequestMapping(method = { RequestMethod.POST },value="/ClickCount={id}") 
	public void updateClickCount(@PathVariable  int id) {
		adRepositoryService.updateClickCount(id);
	}
	
	@RequestMapping(method= {RequestMethod.DELETE},value="/{id}")
	public boolean delete(@PathVariable int id){
		return adRepositoryService.delete(id);
	}

	@RequestMapping(method= {RequestMethod.GET},produces= {"application/json"})
	public List<AdRepositoryDataNoImageBean> selectAllAd(){
		return adRepositoryService.selectAllDataNoImageJson();
	}
	
	//http://localhost:8080/StarBusterCinima/adManagements/type=電影,position=首頁輪播
	@RequestMapping(method= {RequestMethod.GET},value="/type={type},position={position}",produces= {"application/json"})
	public List<Map<Object,Object>> getImageIdUrlByTypePositionASC(@PathVariable String type,@PathVariable String position) {
		return adRepositoryService.getImageIdUrlByTypePositionASC(type, position);
		
	}
	
	
}
