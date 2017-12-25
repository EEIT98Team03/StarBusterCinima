package smart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import member.model.MemberBean;
import member.model.MemberService;
import member.model.QuestionRecordBean;
import member.model.QuestionRecordService;
import misc.EmailUtil;
import smart.model.QuestionRepositoryBean;
import smart.model.QuestionRepositoryService;
//http://localhost:8080/StarBusterCinima/questions/123
@RestController
@RequestMapping("/questions")
public class QuestionRepositoryFacade {
	@Autowired
	QuestionRepositoryService questionRepositoryService; 
	@Autowired
	QuestionRecordService questionRecordService;
	@Autowired
	MemberService memberService;
	//http://localhost:8080/StarBusterCinima/questions/memberId={memberId}&userMessage={userMessage}&response={response}
	@RequestMapping(method= {RequestMethod.GET},value= {"/{memberId}/{convertDate}/{userMessage}/{response}/{questionId}"})
	public boolean sendEmail(@PathVariable int memberId,@PathVariable String convertDate,@PathVariable String userMessage,@PathVariable String response,@PathVariable int questionId) {
		
		
		//更改處理狀態
//		QuestionRecordBean qrs = questionRecordService.selectById(questionId);
//		qrs.setQuestsionStatus("處理完成");
//		boolean update = questionRecordService.updateQuestionStatus(qrs);
//		System.out.println(update);
		
		
		
		
		
		
//		System.out.println(memberId+userMessage+response);
		MemberBean bean = memberService.getMemberInfoById(memberId);
//		System.out.println(bean);
		if(bean!=null) {
			EmailUtil.sendEmail(bean.getEmail(),"StarBusterCinima 機器人小幫手處理回復", 
			"<p>Dear "+bean.getName()+":</p><br /><p>感謝你在"+convertDate +"的提問 </p>"+
			"<p>你提出的問題:"+userMessage+"</p>"+
	        "<p>小幫手回覆:</p><p>"+response+
	        "</p><p></p><p>StarBusterCinima星霸影城致上</p>",null);
			return true;
		}
		return false;
	}
	
	
	
	@RequestMapping(method= {RequestMethod.GET},value= {"/{questionId}"},produces= {"application/json"})
	public QuestionRepositoryBean selectByQuestionId(@PathVariable int questionId) {
		return questionRepositoryService.selectById(questionId);
	}
	@RequestMapping(method= {RequestMethod.GET},produces= {"application/json"})
	public Map<String,List<QuestionRepositoryBean>> selectAllQuestion() {
		List<QuestionRepositoryBean> result = questionRepositoryService.selectAll();
		Map<String,List<QuestionRepositoryBean>> mp  = new HashMap<String,List<QuestionRepositoryBean>>();
		mp.put("data", result);
		return mp; 
	}
	@RequestMapping(method= {RequestMethod.POST},consumes= {"application/json"})
	public boolean insertQuestion(@RequestBody QuestionRepositoryBean bean) {
		QuestionRepositoryBean result = questionRepositoryService.insertQuestion(bean);
		
		if(result!=null) {
			return true;
		}else{
			return false;
		}
	}
	@RequestMapping(method= {RequestMethod.PUT},consumes= {"application/json"})
	public boolean updateQuestion(@RequestBody QuestionRepositoryBean bean) {

		//更改處理狀態
		QuestionRepositoryBean result = questionRepositoryService.updateQuestion(bean);
		if(result!=null) {
			return true;
		}else {
			return false;
		}
	}
	@RequestMapping(method= {RequestMethod.DELETE},value= {"/{questionId}"})
	public boolean deleteByQuestionId(@PathVariable int questionId) {
		return questionRepositoryService.delete(questionId);
	}

}
