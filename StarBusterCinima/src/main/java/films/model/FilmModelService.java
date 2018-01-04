package films.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class FilmModelService {
	
	@Autowired
	FilmDAO filmDAO;
	
	
	@Transactional(readOnly = true)
	public boolean insertFilm(FilmBean bean) {
		return filmDAO.insertFilm(bean);
	}
	
}
