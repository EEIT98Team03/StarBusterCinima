package gift.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;

import gift.model.OrderHistoryDetailBean;

@WebServlet("/g.login.admin")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = -6622112648495251701L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		try {
			String idToken = request.getParameter("id_token");
			GoogleIdToken.Payload payLoad = IdTokenVerifierAndParser.getPayload(idToken);
			String name = (String) payLoad.get("name");
			String email = payLoad.getEmail();
			String picture = (String) payLoad.get("picture");

			HttpSession session = request.getSession();
			OrderHistoryDetailBean beanDetail = new OrderHistoryDetailBean();
			session.setAttribute("userName", name);
			session.setAttribute("email", email);
			session.setAttribute("picture", picture);
			session.setAttribute("login_time", new java.util.Date(System.currentTimeMillis()));
			session.setAttribute("beanDetail", beanDetail);
			
			response.sendRedirect("shopping/admin.jsp");

		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
