package member.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.sql.Blob;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;

import member.model.MemberBean;
import member.model.MemberService;
import misc.SystemUtils;

@Controller
@RequestMapping("/image/member")
public class GetImageMemberDB {
	@Autowired
	MemberService memberService;
	@Autowired
	ServletContext servletContext;

	@RequestMapping(method = { RequestMethod.GET }, value = { "/{memberId}" })
	public void method(@PathVariable int memberId, HttpServletResponse response) throws SQLException {
		response.setContentType("image/jpeg");
		if(memberId==0) {
			response.setContentType("image/png");
			try (InputStream is = servletContext.getResourceAsStream("images/robot.png");
					OutputStream os = response.getOutputStream();) {
				int count = 0;
				byte[] bytes = new byte[819200];
				while ((count = is.read(bytes)) != -1) {
					os.write(bytes, 0, count);
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
		Blob blob = memberService.getMemberImage(memberId);
		if (blob!=null && blob.length() != 0) {
			try (InputStream is = blob.getBinaryStream(); OutputStream os = response.getOutputStream();) {

				byte[] bytes = new byte[1024];
				while (is.read(bytes) != -1) {
					os.write(bytes);
				}

			} catch (Exception e1) {
				e1.printStackTrace();
				System.out.println("讀取會員" + memberId + "照片失敗");
			}
		} else {
			MemberBean bean = memberService.getMemberInfoById(memberId);
			String path="";
			if(bean!=null) {
				if(bean.getGender().equals("Man")) {
					path = "/images/defaultMan.jpg";
				}else {
					path = "/images/defaultWoman.jpg";
				}
			}else {
				path = "/images/defaultMember.jpg";
			}
			try (InputStream is = servletContext.getResourceAsStream(path);
					OutputStream os = response.getOutputStream();) {

				int count = 0;
				byte[] bytes = new byte[8192];
				while ((count = is.read(bytes)) != -1) {
					os.write(bytes, 0, count);
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
