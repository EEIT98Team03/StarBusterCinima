package misc;

import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.*;
//<dependency>
//<groupId>com.sun.mail</groupId>
//<artifactId>javax.mail</artifactId>
//<version>1.5.1</version>
//</dependency>
//<dependency>
//<groupId>javax.activation</groupId>
//<artifactId>activation</artifactId>
//<version>1.1.1</version>
//</dependency>
public class EmailUtil {
	// 假設從gmail端發送
	private static final String host = "smtp.gmail.com";
	// gmail port
	private static final int port = 587;
	// company Email
	private static final String username = "starbustercinima01@gmail.com";
	private static final String password = "starbustercinima";

	public static void main(String[] args) {
		String result = EmailUtil.sendEmail("biea326hu@hotmail.com", "identity",
				"<h1>StarBusterCinima</h1><br><a href='http://yahoo.com.tw'>雅虎奇摩<a/>","D:\\123.jpg");
		System.out.println(result);
	}

	public static String sendEmail(String receiver, String subject, String htmlMessage, String imagePath) {
		long begin = System.currentTimeMillis();
		try {
			// 初始設定，username 和 password 非必要
			Properties props = new Properties();
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.port", port);
			// props.setProperty("mail.user", "starbustercinima01@gmail.com");
			// props.setProperty("mail.password", "starbustercinima");

			Session mailSession = Session.getDefaultInstance(props, new Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username, password);
				}
			});
			Transport transport = mailSession.getTransport();

			// 產生整封 email 的主體 message
			MimeMessage message = new MimeMessage(mailSession);

			// 設定主旨
			message.setSubject(subject);

			// 文字部份，注意 img src 部份要用 cid:接下面附檔的header
			MimeBodyPart textPart = new MimeBodyPart();
			StringBuffer html = new StringBuffer();
			// html.append("<h3>?????</h3><br>");
			// html.append("<a href='http://yahoo.com.tw'>雅虎奇摩</a>");
			html.append(htmlMessage);
			Multipart email = new MimeMultipart();
			email.addBodyPart(textPart);
			if (imagePath != null && imagePath.trim().length() != 0) {
				html.append("<img src='cid:image'/><br>");

				// 圖檔部份，注意 html 用 cid:image，則header要設<image>
				MimeBodyPart picturePart = new MimeBodyPart();
				FileDataSource fds = new FileDataSource(imagePath);
				picturePart.setDataHandler(new DataHandler(fds));
				picturePart.setFileName(fds.getName());
				picturePart.setHeader("Content-ID", "<image>");
				email.addBodyPart(picturePart);
				
			}
			textPart.setContent(html.toString(), "text/html; charset=UTF-8");

			message.setContent(email);
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(receiver));
			transport.connect();
			transport.sendMessage(message, message.getRecipients(Message.RecipientType.TO));
			transport.close();
		} catch (AddressException e) {
			e.printStackTrace();
			return "address error";
		} catch (NoSuchProviderException e) {
			e.printStackTrace();
			return "no such sender address";
		} catch (MessagingException e) {
			e.printStackTrace();
			return "please input correct message";
		}
		long end = System.currentTimeMillis();

		return "Send Success Cost : " + String.valueOf((end - begin) / 1000 + "second");
	}
	
	public static String autoLookupEmailAddress(String email) {
		String outlookLogin =  "https://outlook.live.com/";
		String googleLogin = "https://accounts.google.com/";
		String yahooLogin = "https://login.yahoo.com/";
		String[] result = email.split("@");
		System.out.println(result[1]);
		String emailAddress =  result[1];
		if(emailAddress!=null&&emailAddress.trim().length()!=0) {
			if(result[1].startsWith("hotmail") || result[1].startsWith("outlook")) {
				return outlookLogin;
			}else if(result[1].startsWith("gmail")){
				return googleLogin;
			}else if(result[1].startsWith("yahoo")) {
				return yahooLogin;
			}else {
				return "";
			}
		}
		return "";
	}
}
