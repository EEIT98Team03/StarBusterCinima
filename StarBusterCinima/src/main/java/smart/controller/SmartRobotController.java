package smart.controller;

import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import member.model.MemberBean;
import member.model.MemberService;
import member.model.QuestionRecordBean;
import member.model.QuestionRecordService;
import smart.model.QuestionRepositoryBean;
import smart.model.QuestionRepositoryService;
import smart.model.RobotResponseRecordBean;
import smart.model.RobotResponseRecordService;

//http://localhost:8080/StarBusterCinima/smartRobot/68/李子瑋/訊息內容
@RestController
@RequestMapping("/smartRobot")
public class SmartRobotController {
	@Autowired
	QuestionRecordService questionRecordService;
	@Autowired
	QuestionRepositoryService questionRepositoryService;
	@Autowired
	RobotResponseRecordService robotResponseRecordService;
	@Autowired
	MemberService memberService;
	@InitBinder
	public void initialize() {

	}

	@RequestMapping(method = { RequestMethod.GET }, value = { "/{memberId}/{name}/{userMessage}" }, produces = {
			"application/json" })
	public List<String> method(@PathVariable String userMessage, @PathVariable int memberId, @PathVariable String name,
			HttpServletResponse response) {
		response.setContentType("UTF-8");
		List<String> list = new ArrayList<String>();// 儲存結果
		// 排除無效問答
		if (userMessage != null && userMessage.trim().length() != 0) {

			if (!userMessage.matches("^[A-Za-z0-9]{" + userMessage.length() + "}$")&&userMessage.length()>3) {// 判斷是否為純數字or純英文or純英數字混合

				int count = 0;
				// ------------------------------------------------取出函式庫成 type,keywords 成 map
				Map<String, String> typeAndKewords = new IdentityHashMap<String, String>();// type
				List<QuestionRepositoryBean> questionRepositorylist = questionRepositoryService.selectAll();
				Iterator<QuestionRepositoryBean> it = questionRepositorylist.iterator();
				while (it.hasNext()) {
					QuestionRepositoryBean bean = it.next();
					typeAndKewords.put(bean.getType(), bean.getKeywords());
					count++;
				}
				System.out.println("知識庫共有" + count + "筆");
				// -------------------------------------------------

				// -------------------------------------------------處理map成set:keyset&collection:values
				Set<String> set = typeAndKewords.keySet();
				Iterator<String> sit = set.iterator();
				while (sit.hasNext()) {
					String typeFragement = sit.next();
					if (userMessage.contains(typeFragement)) {
						
						
						
						String keyFragement = typeAndKewords.get(typeFragement);
						String[] vsplit = keyFragement.split(",");
						
						// --------------------------------------------------keywords成獨立key begin
//						Collection<String> value = typeAndKewords.values();
//						Iterator<String> vit = value.iterator();
//						while (vit.hasNext()) {
//							String[] vsplit = vit.next().split(",");
							for (String key : vsplit) {
								// --------------------------------------------------比對是否有key配對到 begin
								if (userMessage.contains(key)) {
									System.out.println("配對成功 : type=" + typeFragement + ";key=" + key + ";userMessage="
											+ userMessage);// 配對成功
									String result = questionRepositoryService.getAnswer(typeFragement, key);
									list.add(result);
									
									//紀錄資料以便統計報表
									RobotResponseRecordBean rrrb =  new RobotResponseRecordBean();
									MemberBean memberInfo = memberService.getMemberInfoById(memberId);
									rrrb.setMemberId(memberId);
									rrrb.setGender(memberInfo.getGender());
									rrrb.setBirthday(memberInfo.getRegistration_date());
									rrrb.setTypekeyWord(typeFragement+key);
									robotResponseRecordService.insertRecord(rrrb);
									
									return list;
								}
								// --------------------------------------------------比對是否有key配對到 end
//							}
						}
						// --------------------------------------------------keywords成獨立key end
						
						
						
						
						
						
						
						
						
						
					}
				}
				System.out.println("------------------------");

				// System.out.println("memberId="+memberId);
				// System.out.println("name="+name);
				// System.out.println("userMessage="+userMessage);

				// 讓使用者等待一秒
				// try {
				// new Thread().sleep(1000);
				// } catch (InterruptedException e) {
				// e.printStackTrace();
				// }

				// getGiftItem
				// if (userMessage.contains("電影")) {
				// System.out.println("film");
				// list.add("film");
				// return list;
				// } else if (userMessage.contains("商品")) {
				//
				// }

				list.add("你的問題將會有專人為你解答，處理完成後寄送email給你");
				// 如果知識庫沒辦法回應，且經過無效問答處理，則存入record等待管理員處理
				 QuestionRecordBean bean = new QuestionRecordBean();
				 bean.setMemberId(memberId);
				 bean.setName(name);
				 bean.setQuestionContext(userMessage);
				 questionRecordService.insert(bean);
			} else {
				// 有輸入但為無效訊息
				list.add("Robot無法了解你的訊息，請將問題說明詳細");

			}
		} else {
			// 輸入為空值
			list.add("輸入為空值");
		}

		return list;
	}
}
