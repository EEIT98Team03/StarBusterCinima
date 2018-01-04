package gift.controller.report;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ReportForGoldMembers {

	@SuppressWarnings("unchecked")
	@RequestMapping("/ViewGoldMembers")
	public @ResponseBody String processTableData(){
		JSONObject jsObj1 = new JSONObject();
		jsObj1.put("TotalItemsPurchased", 152000);
		jsObj1.put("MemberEmail", "biea326hu");
		
		JSONObject jsObj2 = new JSONObject();
		jsObj2.put("TotalItemsPurchased", 125000);
		jsObj2.put("MemberEmail", "kengyuhotw");
		
		JSONObject jsObj3 = new JSONObject();
		jsObj3.put("TotalItemsPurchased", 109000);
		jsObj3.put("MemberEmail", "sarahchun1995");
		
		JSONObject jsObj4 = new JSONObject();
		jsObj4.put("TotalItemsPurchased", 99000);
		jsObj4.put("MemberEmail", "brianhuang0211");
		
		JSONObject jsObj5 = new JSONObject();
		jsObj5.put("TotalItemsPurchased", 63000);
		jsObj5.put("MemberEmail", "newjudyliang");
		
		JSONObject jsObj6 = new JSONObject();
		jsObj6.put("TotalItemsPurchased", 55000);
		jsObj6.put("MemberEmail", "meicheng19961108");
		
		JSONObject jsObj7 = new JSONObject();
		jsObj7.put("TotalItemsPurchased", 41000);
		jsObj7.put("MemberEmail", "candydesignc");

		JSONObject jsObj8 = new JSONObject();
		jsObj8.put("TotalItemsPurchased", 33000);
		jsObj8.put("MemberEmail", "louisasasak");
		
		JSONObject jsObj9 = new JSONObject();
		jsObj9.put("TotalItemsPurchased", 32000);
		jsObj9.put("MemberEmail", "pjlee");
		
		JSONObject jsObj10 = new JSONObject();
		jsObj10.put("TotalItemsPurchased", 31000);
		jsObj10.put("MemberEmail", "tkyeh2003");
		
		JSONObject jsObj11 = new JSONObject();
		jsObj11.put("TotalItemsPurchased", 5492000);
		jsObj11.put("MemberEmail", "The rest of members");
		
		JSONArray list = new JSONArray();
		list.add(jsObj1);
		list.add(jsObj2);
		list.add(jsObj3);
		list.add(jsObj4);
		list.add(jsObj5);
		list.add(jsObj6);
		list.add(jsObj7);
		list.add(jsObj8);
		list.add(jsObj9);
		list.add(jsObj10);
		list.add(jsObj11);
		
		return list.toJSONString();
	}
}

