package gift.controller.report;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ReportForSales {
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/ViewGraph")
	public @ResponseBody String getGraphData(){
		
		JSONObject obj1 = new JSONObject();
        obj1.put("date", "Hogwarts Great Hall 3D Puzzle");
        obj1.put("units", 123850);

		JSONObject obj2 = new JSONObject();
        obj2.put("date", "Gryffindor Scarf");
        obj2.put("units", 71620);

		JSONObject obj3 = new JSONObject();
        obj3.put("date", "Thor Action Figure");
        obj3.put("units", 69050);
 
		JSONObject obj4 = new JSONObject();
        obj4.put("date", "Captain America Shield");
        obj4.put("units", 58600);

		JSONObject obj5 = new JSONObject();
        obj5.put("date", "Doctor Strange Action Figure");
        obj5.put("units", 33770);
        
        JSONArray list = new JSONArray();
        list.add(obj1);
        list.add(obj2);
        list.add(obj3);
        list.add(obj4);
        list.add(obj5);
		
		return list.toJSONString();
	}
}
