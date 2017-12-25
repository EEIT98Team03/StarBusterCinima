package smart.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import smart.model.RobotResponseRecordService;

@RestController
@RequestMapping("/charts")
public class RobotChartFacade {
	@Autowired
	RobotResponseRecordService robotResponseRecordService;
	@RequestMapping(method= {RequestMethod.GET},value= {"/BoyGirlCount"},produces= {"application/json"})
	public List<Map<String, Object>> selectBoyGirlCount(){
		return robotResponseRecordService.selectBoyGirlCount();
	}
	@RequestMapping(method= {RequestMethod.GET},value= {"/TypeKeyCount"},produces= {"application/json"})
	public List<List> selectTypeKeyCount(){
		return robotResponseRecordService.selectTypeKeyCount();
	}
	@RequestMapping(method= {RequestMethod.GET},value= {"/AgeLevelCount"},produces= {"application/json"})
	public List<Map<String, Object>> selectAgeLevelCount(){
		return robotResponseRecordService.selectAgeLevelCount();
	}
}
