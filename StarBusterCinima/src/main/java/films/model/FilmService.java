package films.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class FilmService {
	
	@Autowired
	FilmDAO filmDAO;
	
	
	@Transactional
	public FilmBean selectById(int filmId) {
		
		FilmBean result = filmDAO.selectById(filmId);
		return result;
	
	}
	
	public List<FilmBean> selectAllfilms(){//搜尋所有電影		
		
		List<FilmBean> filmResult = filmDAO.selectAll();
		System.out.println(filmResult);
		return filmResult;
	}
}
