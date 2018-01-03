//package delivery.controller;
//
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.LinkedList;
//import java.util.List;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.json.simple.JSONArray;
//import org.json.simple.JSONObject;
//import org.json.simple.parser.JSONParser;
//import org.json.simple.parser.ParseException;
//
//import gift.tool.DataGenerator;
//
//@WebServlet("/OrderDelivery")
//public class OrderDeliveryProcessor extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		doPost(request, response);
//	}
//
//	@SuppressWarnings("unchecked")
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//
//		List<JSONObject> listResult = new ArrayList<JSONObject>();
//		String tdata = request.getParameter("s");
//		HttpSession session = request.getSession(false);
//		if (session != null) {
//			JSONParser jParser = new JSONParser();
//			int itemNum = 0;
//			int itemQtySum = 0;
//			try {
//				Object d = jParser.parse(tdata);
//				JSONArray de = (JSONArray) d;
//				for (int i = 0; i < de.size() - 1; i++) {
//					JSONObject j = (JSONObject) jParser.parse(de.get(i).toString());
//					String itemQty = (String) j.get("數量");
//					int itemQtyInt = Integer.parseInt(itemQty);
//					String itemSumA = (String) j.get("小計");
//					int itemSum = Integer.parseInt(itemSumA);
//					if (itemQtyInt != 0) {
//						itemNum = itemNum + itemSum;
//						itemQtySum = itemQtySum + itemQtyInt;
//						listResult.add(j);
//					}
//				}
//				String goodsCode = DataGenerator.getRandomString(12, false, false);
//				String directoryInfo = "http://" + request.getLocalAddr() + ":" + request.getLocalPort()
//						+ request.getContextPath();
//				java.util.Date dl = DataGenerator.getCurrentTime(7);
//				String deadline = DataGenerator.getFormattedTime(dl);
//				deadline = deadline.substring(0, deadline.indexOf(" "));
//				dl = DataGenerator.getCurrentTime(1);
//				String deliveryDeadline = DataGenerator.getFormattedTime(dl);
//				session.setAttribute("getItemDeadline", deadline.trim());
//				session.setAttribute("intTotalItemCount", itemQtySum);
//				session.setAttribute("intTotalAmount", itemNum);
//				session.setAttribute("deliveryDeadline", deliveryDeadline);
//				session.setAttribute("goodsCode", goodsCode);
//				session.setAttribute("directoryInfo", directoryInfo);
//				session.setAttribute("oJson", listResult);
//				LinkedList<String> itemNameHiddenList = (LinkedList<String>) session.getAttribute("itemNameHiddenList");
//				session.setAttribute("itemNameHiddenList", itemNameHiddenList);
//			} catch (ParseException e) {
//				e.printStackTrace();
//			}
//		}
//
//	}
//}
