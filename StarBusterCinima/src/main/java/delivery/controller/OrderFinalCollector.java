//package delivery.controller;
//
//import java.io.IOException;
//import java.net.HttpURLConnection;
//import java.net.URL;
//import java.util.Iterator;
//import java.util.LinkedList;
//import java.util.List;
//import java.util.Map;
//import java.util.Set;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.Transaction;
//import org.hibernate.cfg.Configuration;
//import org.json.simple.JSONObject;
//import org.json.simple.parser.JSONParser;
//import org.json.simple.parser.ParseException;
//
//import gift.model.OrderHistoryBriefBean;
//import gift.model.OrderHistoryDetailBean;
//import gift.tool.DataGenerator;
//
//@WebServlet("/OrderFinalCollector")
//public class OrderFinalCollector extends HttpServlet {
//	private static final long serialVersionUID = -3904760917018066770L;
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		doPost(request, response);
//	}
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		HttpSession session = request.getSession(false);
//		String userName = (String) session.getAttribute("userName");
//		String email = (String) session.getAttribute("email");
//		String picture = (String) session.getAttribute("picture");
//		session.invalidate();
//		session = request.getSession(true);
//		session.setAttribute("userName", userName);
//		session.setAttribute("email", email);
//		session.setAttribute("picture", picture);
//		String orderContentFull = request.getParameter("orderContentFull");
//
//		if (orderContentFull != null && !orderContentFull.isEmpty()) {
//
//			if (session != null) {
//				JSONParser jParser = new JSONParser();
//				Object d;
//				try {
//					d = jParser.parse(orderContentFull);
//					JSONObject d2 = (JSONObject) d;
//					int totalSumForThisOrder = Integer.parseInt((String) d2.get("totalSumForThisOrder"));
//					String memberEmail = (String) d2.get("currentUserEmail");
//					String receiverName = (String) d2.get("receiverName");
//					String receierPhone = (String) d2.get("receierPhone");
//					String receiverRegion = (String) d2.get("receiverRegion");
//					String receiverAdress = (String) d2.get("receiverAdress");
//					Set<?> keys = d2.keySet();
//					Iterator<?> ite = keys.iterator();
//					OrderHistoryBriefBean beanBrief = new OrderHistoryBriefBean();
//					// beanBrief.setOrderId(NewOrderId);
//					beanBrief.setMemberEmail(memberEmail);
//					beanBrief.setTotalAmountOriginal(totalSumForThisOrder);
//					beanBrief.setDiscount(0);
//					beanBrief.setTotalAmountFinal(totalSumForThisOrder);
//					beanBrief.setPayMethod("貨到付款");
//					beanBrief.setReceiverName(receiverName);
//					beanBrief.setReceiverAddressArea(receiverRegion);
//					beanBrief.setReceiverAddressMainPart(receiverAdress);
//					beanBrief.setReceiverPhone(receierPhone);
//					beanBrief.setOrderStatus("訂單成立，備貨中");
//					beanBrief.setPurchasedTime(DataGenerator.getCurrentTimeSQL());
//					SessionFactory factory;
//					factory = new Configuration().configure().buildSessionFactory();
//					Session sessionFactory = factory.openSession();
//					Transaction tx = sessionFactory.beginTransaction();
//					int NewOrderId = (int) sessionFactory.save(beanBrief);
//					tx.commit();
//					// 發送簡訊
//					String HTTP_MESSAGE_ADDRESS = "http://www.engfly.info/send.php?OrderId=" + NewOrderId + "&uemail="
//							+ email;
//
//					URL url = new URL(HTTP_MESSAGE_ADDRESS);
//					HttpURLConnection URLConn = (HttpURLConnection) url.openConnection();
//					Map<String, List<String>> mp = URLConn.getHeaderFields();
//					mp.isEmpty();
//					session.setAttribute("beanBrief", beanBrief);
//					List<OrderHistoryDetailBean> listOrderItem = new LinkedList<OrderHistoryDetailBean>();
//					while (ite.hasNext()) {
//						String key = (String) ite.next();
//						Object value = d2.get(key);
//						if (value instanceof JSONObject) {
//							JSONObject realItem = (JSONObject) value;
//							String itemName = (String) realItem.get("商品名稱");
//							String temp = (String) realItem.get("價格");
//							temp = temp.substring(temp.indexOf("$") + 1);
//							int itemUnitPrice = Integer.parseInt(temp);
//							int itemQty = Integer.parseInt((String) realItem.get("數量"));
//							int itemSum = Integer.parseInt((String) realItem.get("小計"));
//							String itemHiddenName = (String) realItem.get("標籤");
//							OrderHistoryDetailBean beanDetail = new OrderHistoryDetailBean();
//							beanDetail.setItemId(NewOrderId);
//							beanDetail.setItemName(itemName);
//							beanDetail.setItemHiddenName(itemHiddenName);
//							beanDetail.setItemQquantity(itemQty);
//							beanDetail.setSumTotal(itemSum);
//							beanDetail.setMemberEmail(memberEmail);
//							beanDetail.setUnitPrice(itemUnitPrice);
//							listOrderItem.add(beanDetail);
//							tx = sessionFactory.beginTransaction();
//							sessionFactory.save(beanDetail);
//							tx.commit();
//						}
//						session.setAttribute("NewOrderId", NewOrderId);
//						session.setAttribute("listBeanDetail", listOrderItem);
//					}
//
//				} catch (ParseException e) {
//					e.printStackTrace();
//				}
//			}
//		}
//
//	}
//
//}
