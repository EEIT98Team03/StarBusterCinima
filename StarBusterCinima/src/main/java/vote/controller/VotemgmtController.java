package vote.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import booking.model.QuickBookingService;
import films.model.FilmBean;
import member.model.MemberBean;
import vote.model.VoteBean;
import vote.model.VoteService;
import vote.model.VotemgmtService;

@Controller
@RequestMapping("/wishpool/votemgmt.controller")
@ResponseBody
public class VotemgmtController {
	@Autowired
	VotemgmtService votemgmtservice;
	VoteService voteService;
	QuickBookingService quickBookingService;

	@RequestMapping(value = "LoadData1", method = { RequestMethod.GET }, produces = "text/html;charset=UTF-8")
	public String LoadData1(Model model) {
		List<Object[]> list = votemgmtservice.loaddata();

		for (int i = 0; i < list.size(); i++) {

			System.out.println(list.get(i)[0]);
		}

		Gson J = new Gson();
		String jbl = J.toJson(list);
		return jbl;
	}

	@RequestMapping(value = "SelectAllFilmIdAndNameInWishpool", method = { RequestMethod.GET })
	public List<Object[]> SelectAllFilmIdAndNameInWishpool(Model model, @RequestParam("FilmID") int FilmID) {

		List<Object[]> list = votemgmtservice.loaddata();

		for (int i = 0; i < list.size(); i++) {

			System.out.println(list.get(i)[0]);
		}

		return votemgmtservice.SelectFilmInWishPool();
	}

	@RequestMapping(value = "DeleteFilmInWishPool", method = { RequestMethod.GET })
	public Boolean DeleteFilmInWishPool(Model model, @RequestParam("FilmID") int FilmID) {
		votemgmtservice.DeleteFilmInWishPool(FilmID);
		return false;
	}

	@RequestMapping(value = "InsertFilmIntoWishPool", method = { RequestMethod.GET })
	public Boolean InsertFilmIntoWishPool(Model model, @RequestParam("FilmID") int FilmID, int VoteGoal) {

		votemgmtservice.InsertFilmIntoWishPool(FilmID, VoteGoal);
		return false;
	}

	@RequestMapping(value = "UpMovie", method = { RequestMethod.GET }, produces = "text/html;charset=UTF-8")
	public String UpMovie(Model model) {

		List<FilmBean> bean = votemgmtservice.UpMovie();
		Gson J = new Gson();
		String jbl = J.toJson(bean);

		return jbl;
	}

	@RequestMapping(value = "doUpMovie", method = { RequestMethod.GET }, produces = "text/html;charset=UTF-8")
	public void doUpMovie(Model model, @RequestParam("FilmID") int filmID) {
		votemgmtservice.doUpMovie(filmID);

	}

	@RequestMapping(value = "UpdateVoteGoal", method = { RequestMethod.GET }, produces = "text/html;charset=UTF-8")
	public void UpdateVoteGoal(Model model, @RequestParam("FilmID") int filmID,
			@RequestParam("VoteGoal") int VoteGoal) {
		votemgmtservice.UpdateVoteGoal(filmID, VoteGoal);
	}
	


}
