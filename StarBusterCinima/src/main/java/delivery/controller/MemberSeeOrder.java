package delivery.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import gift.model.OrderHistoryBriefBean;
import gift.tool.DataGenerator;

@WebServlet("/ReadOrderHistory")
public class MemberSeeOrder extends HttpServlet {
	private static final long serialVersionUID = -5856572228609082279L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		java.util.Date threeMonthsAgo = DataGenerator.getCurrentTime(-91);
		String loginUserName = request.getParameter("loginUserName");
		String loginEmail = request.getParameter("loginEmail");
		
		HttpSession session = request.getSession(false);
		if (session != null) {
			if (loginUserName == null || loginUserName.isEmpty()) {
				loginUserName = (String) session.getAttribute("userName");
			}
			if (loginEmail == null || loginEmail.isEmpty()) {
				loginEmail = (String) session.getAttribute("loginEmail");
			}
			
			SessionFactory factory = new Configuration().configure().buildSessionFactory();
			Session sessionFactory = factory.openSession();
			Transaction tx = sessionFactory.beginTransaction();
			List<OrderHistoryBriefBean> resultList = (List<OrderHistoryBriefBean>) sessionFactory.createQuery("from OrderHistoryBriefBean where memberEmail = :loginEmail and purchasedTime > :dateStart order by purchasedTime desc")
					.setParameter("loginEmail", loginEmail)
					.setParameter("dateStart", threeMonthsAgo).getResultList();
			tx.commit();
			session.setAttribute("userName", loginUserName);
			session.setAttribute("email", loginEmail);
			session.setAttribute("beanBrief", resultList);
		}
		
	}

}
