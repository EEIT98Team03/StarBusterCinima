package films.model.dao;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import films.model.FilmBean;
import films.model.FilmDAO;
import films.model.FilmSectionBean;
import smart.model.RobotResponseRecordBean;

@Repository
public class FilmHibernateDAO implements FilmDAO {

	@Autowired
	SessionFactory sessionFactory;

	public Session session() {
		return sessionFactory.getCurrentSession();
	}
	
	
	
	@Override
	public boolean insertFilm(FilmBean bean) {
		if (bean != null) {
			this.session().save(bean);
			return true;
		}
		return false;
	}
	
	
	

	@Override
	public FilmBean selectById(int filmId) {
		return this.session().get(FilmBean.class, filmId);
	}

	@Override
	public FilmBean selectByFilmName(String filmName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FilmBean selectByEngName(String engName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FilmBean> selectAll() {
		Query<FilmBean> query = this.session().createQuery("from FilmBean", FilmBean.class);
		return query.getResultList();
	}

	@Override
	public List<FilmBean> selectMovieByGenre(String genre) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FilmBean> selectMovieByDirector(String director) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FilmBean> selectMovieByActor(String actor) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FilmBean> selectMovieByScore(int score) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FilmBean insert(FilmBean bean) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(int memberId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public FilmBean update(String filmId, String filmName, String engName, String shortIntro, String longIntro,
			String lengthOfFilm, String genre, String filmLevel, Date udate, Date ddate, String director, String actor,
			String posterLarge, byte[] posterMedium, String trailer, float scoreImdb, int scoreRt, int scoreMember,
			String language) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateposter(String img, int filmId) {
		FilmBean bean = this.session().get(FilmBean.class, filmId);
		bean.setPosterMedium(img);
		this.session().update(bean);

		return false;
	}

	@Override
	public List<Object[]> SelectFilmSectionAndFilm() {
		// sql=select FilmSection.filmid ,
		// FilmSection.filmsectionid,filmsectiontime,Film.filmname,
		// Film.lengthofFilm from FilmSection join Film on FilmSection.filmid =
		// Film.filmid
		String Hql = "select fs.filmId,fs.filmSectionTime,fs.sectionroom ,f.filmName ,f.lengthOfFilm ,fs.filmSectionId from FilmSectionBean  as fs join FilmBean as f on fs.filmId = f.filmId and f.upstatus = 'intheaters'";

		Query<Object[]> query = this.session().createQuery(Hql);
		List<Object[]> list = query.getResultList();

		return list;

	}

	@Override
	public boolean InsertFilmSection(FilmSectionBean bean) {

		System.out.println(bean);
		this.session().save(bean);
		return false;
	}

	@Override
	public boolean DeleteFilmSection(int filmsectionId) {

		FilmSectionBean bean = new FilmSectionBean();
		bean = this.SelectFilmSection(filmsectionId);
		System.out.println(bean);
		if (bean != null) {
			this.session().delete(bean);
			System.out.println("delete Success");
			return true;
		}

		return false;
	}

	@Override
	public FilmSectionBean SelectFilmSection(int filmsectionId) {
		// String Hql = "From FilmSectionBean as fs where fs.FilmSectionID = :id";
		// Query query = this.session().createQuery(Hql);
		// query.setParameter("id",filmsectionId);
		// FilmSectionBean temp = query.get();
		//
		//
		// System.out.println(temp);
		//
		//
		// FilmSectionBean bean = new FilmSectionBean();
		// bean.setFilmSectionID(temp.get(1).FilmSectionID);

		// bean.setFilmID(t);

		return this.session().get(FilmSectionBean.class, filmsectionId);
	}

	@Override
	public boolean UpdateFilmSection(int filmsectionId, Timestamp filmsectiontime) {
		System.out.println(filmsectionId);
		FilmSectionBean bean = this.SelectFilmSection(filmsectionId);
		System.out.println(bean);
		bean.setFilmSectionTime(filmsectiontime);

		this.session().update(bean);
		return false;
	}

	@Override
	public boolean updateposter(byte[] img, int FilmID) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean UptdteFilmstatus(int filmId) {
		FilmBean bean = this.selectById(filmId);
		bean.setUpstatus("intheaters");
		this.session().update(bean);

		return false;
	}

	public List<Object[]> SelectSectionCount() {
		String Hql = "select fs.filmId,COUNT(fs.filmId) as fc from FilmSectionBean as fs  group by fs.filmId order by fc desc";
		
		//select Film.filmid,Film.filmname,b.fc from Film join (select fs.filmid,COUNT(fs.filmid) as fc from FilmSection as fs   group by fs.filmid )as b on Film.filmid =b.filmid order by fc desc
		Query query = this.session().createQuery(Hql);
		List<Object[]> list = query.getResultList();
		
		
		
		for(int i = 0;i<list.size();i++) {
//			System.out.println(list.get(i)[0]  + " " +list.get(i)[1]);
			System.out.println(this.selectById(Integer.parseInt(list.get(i)[0].toString())).getFilmName());	
			list.get(i)[0] = this.selectById(Integer.parseInt(list.get(i)[0].toString())).getFilmName()+"-"+this.selectfilmLength(Integer.parseInt(list.get(i)[0].toString()));
			System.out.println(list.get(i)[0] + ""+list.get(i)[1]+"");
			
		}

		return list;

	}

	@Override
	public int selectfilmLength(int filmId) {
		
		return Integer.parseInt(this.session().get(FilmBean.class,filmId).getLengthOfFilm());
	}

}
