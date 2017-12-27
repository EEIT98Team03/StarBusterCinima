package delivery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gift.tool.DataGenerator;
import misc.EmailUtil;

@WebServlet("/SendEmailToMember")
public class SendEmailToMember extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String receiverEmail = request.getParameter("receiver");
		System.out.println(receiverEmail);
		String emailSubject = "您的專屬折扣碼 from 星霸影城購物商城";
		String salesCode = DataGenerator.getRandomString(12, false, false).toUpperCase();
		String emailBody = "親愛的客戶，您好<br />本郵件內含星霸影城購物商城一次性折扣碼，結帳時填入折扣碼，帳單金額立刻 20% Off（可和其他優惠並用，但結帳金額必須大於$1000）<br /><div style='background-color: yellow; color: black; font-weight:900; font-size: 2em; margin:10px;'>" + salesCode + "</div>請妥善保存此折扣碼<br />StarBuster Cinima 祝您購物愉快";
		if (receiverEmail != null && !receiverEmail.isEmpty()) {
			EmailUtil.sendEmail(receiverEmail, emailSubject, emailBody, null);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
