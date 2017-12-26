package vote.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import vote.model.VotemgmtService;

@Controller
@RequestMapping("/vote/controller/votemgmt.controller")
@ResponseBody
public class VotemgmtController {
	@Autowired
	VotemgmtService votemgmtservice;

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	
	@RequestMapping(value = "LoadData1",method = { RequestMethod.GET })
	public List<Object[]> method1(Model model) {
		List<Object[]> list = votemgmtservice.loaddata();	
		return list;
	}
	
	@RequestMapping(value = "SelectAllFilmIdAndNameInWishpool",method = { RequestMethod.GET })
	public List<String[]> method2(Model model ,@RequestParam("FilmID") int FilmID) {
		
		
		return votemgmtservice.SelectFilmInWishPool();
	}
	
	
	
	
	@RequestMapping(value = "DeleteFilmInWishPool",method = { RequestMethod.GET })
	public Boolean method3(Model model ,@RequestParam("FilmID") int FilmID) {

		votemgmtservice.DeleteFilmInWishPool(FilmID);
		
		return false;
	}
	
	@RequestMapping(value = "InsertFilmIntoWishPool",method = { RequestMethod.GET })
	public Boolean method4(Model model ,@RequestParam("FilmID")int FilmID,int VoteGoal) {
		votemgmtservice.InsertFilmIntoWishPool(FilmID, VoteGoal);
		
		return false;
	}
	
	
	
	
	

}
