package member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import member.model.QuestionRecordBean;
import member.model.QuestionRecordService;
@RestController
@RequestMapping("/questionsRecords")
public class QuestionRecordFacade {
	@Autowired
	QuestionRecordService questionRecordService;
	//selectAll
	@RequestMapping(method= {RequestMethod.GET},produces= {"application/json"})
	public List<QuestionRecordBean> selectAll() {
		return questionRecordService.selectAll();
	}
	//insert
	@RequestMapping(method= {RequestMethod.POST},consumes= {"application/json"})
	public boolean insert(@RequestBody QuestionRecordBean bean) {
		return questionRecordService.insert(bean);
	}
	//update
	@RequestMapping(method= {RequestMethod.PUT},consumes= {"application/json"})
	public boolean update(@RequestBody QuestionRecordBean bean) {
		System.out.println("QuestionRecordFacade"+bean);
		return questionRecordService.updateQuestionStatus(bean);
	}
	//delete
	@RequestMapping(method= {RequestMethod.DELETE},value= {"/{questionRecordId}"})
	public boolean delete(@PathVariable int questionRecordId) {
		return questionRecordService.deleteQuestion(questionRecordId);
	}
	
}
