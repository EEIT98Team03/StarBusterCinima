package delivery.controller;

import java.io.IOException;
import java.util.ArrayList;

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

@WebServlet("/MemberSeeOrderDetail")
public class MemberSeeOrderDetail extends HttpServlet {
	private static final long serialVersionUID = 1923446014727285045L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int itemId = Integer.parseInt(request.getParameter("itemId"));
		String loginEmail = request.getParameter("loginEmail");
		String pTime = request.getParameter("purchasedTime");
		HttpSession session = request.getSession(false);
		if (session != null) {
			SessionFactory factory = new Configuration().configure().buildSessionFactory();
			Session sessionFactory = factory.openSession();
			Transaction tx = sessionFactory.beginTransaction();
			ArrayList<OrderHistoryBriefBean> resultList = (ArrayList<OrderHistoryBriefBean>) sessionFactory.createQuery("from OrderHistoryDetailBean where memberEmail = :loginEmail and itemId = :itemId")
					.setParameter("loginEmail", loginEmail)
					.setParameter("itemId", itemId).getResultList();
			if (resultList != null && resultList.size() > 0) {
				session.setAttribute("beanDetailList", resultList);
				session.setAttribute("purchasedTime", pTime);
			}
			tx.commit();
		}
			
		session.setAttribute("email", loginEmail);
	}

}
