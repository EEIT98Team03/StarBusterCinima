package ad.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import ad.model.AdRepositoryService;

@RestController
@RequestMapping("/adImages")
public class AdGetImageController {
	@Autowired
	AdRepositoryService adRepositoryService;

	// 後台管理讀取照片
	@RequestMapping(method = { RequestMethod.GET }, value = "/imageId={id}", produces = { "image/jpeg", "image/png",
			"image/gif","video/mp4" })
	public void getImage(@PathVariable int id, HttpServletResponse response) {
		Blob blob = adRepositoryService.getImageById(id);
		InputStream is = null;
		OutputStream os = null;
		byte[] size = new byte[8192000];
		try {
			is = blob.getBinaryStream();
			os = response.getOutputStream();
			is.read(size);
			os.write(size);
		} catch (IOException e) {
//			e.printStackTrace();
//			System.out.println("ad 讀出錯誤");
		} catch (SQLException e) {
//			System.out.println("ad 資料庫讀取錯誤");
//			e.printStackTrace();
		}
	}

	// 前台輪播讀取照片
	// (type, position, sequence)/type="電影",position="首頁輪播",sequence=5
	@RequestMapping(method = {
			RequestMethod.GET }, value = "/type={type},position={position},sequence={sequence}", produces = {
					"image/jpeg", "image/png", "image/gif" })
	public void getImage(@PathVariable String type, @PathVariable String position, @PathVariable int sequence,
			HttpServletResponse response) {
//		System.out.println(type + ":" + position + ":" + sequence);
		List<Blob> list = adRepositoryService.getImageByTypePositionSequence(type, position, sequence);
		if (list.size() == 0) {
			
		} else {

			InputStream is = null;
			OutputStream os = null;
			byte[] size = new byte[819200];
			System.out.println(list.size());
			int number = (int) (Math.random() * list.size());
//			System.out.println(number);
			Blob blob = list.get(number);
			// Iterator<Blob> it = list.iterator();
			// while(it.hasNext()) {
			// Blob blob = it.next();
			try {
				is = blob.getBinaryStream();
				os = response.getOutputStream();
				is.read(size);
				os.write(size);
			} catch (IOException e) {
//				e.printStackTrace();
//				System.out.println("ad 讀出錯誤");
			} catch (SQLException e) {
//				System.out.println("ad 資料庫讀取錯誤");
//				e.printStackTrace();
			}

			// }
		}

	}

}
