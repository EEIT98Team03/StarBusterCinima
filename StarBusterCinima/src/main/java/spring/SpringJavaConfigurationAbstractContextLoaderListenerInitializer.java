package spring;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.context.AbstractContextLoaderInitializer;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;

import films.model.FilmBean;
import films.model.FilmSectionBean;
import gift.model.GiftItemBean;
import gift.model.OrderHistoryBriefBean;
import gift.model.OrderHistoryDetailBean;
import gift.model.PotentialItemListBean;

import ad.model.AdRepositoryBean;
import ad.model.AdRepositoryDataNoImageBean;
import adminstrator.model.AdministratorBean;
import member.model.MemberBean;
import member.model.QuestionRecordBean;
import smart.model.QuestionRepositoryBean;
import smart.model.RobotResponseRecordBean;

@Configuration
@ComponentScan(basePackages = { "member.model", "gift.model","smart.model","ad.model","adminstrator.model", "booking.model", "vote.model","films.model"})
@EnableTransactionManagement
public class SpringJavaConfigurationAbstractContextLoaderListenerInitializer extends AbstractContextLoaderInitializer {
	@Bean
	public DataSource dataSource() {
		try {
			Context ctx = new InitialContext();
			return (DataSource) ctx.lookup("java:comp/env/jdbc/sqlserver");
		} catch (NamingException e) {
			e.printStackTrace();
			throw new ExceptionInInitializerError(e);
		}
	}
	
	@Bean
	public SessionFactory sessionFactory() {
		LocalSessionFactoryBuilder builder = new LocalSessionFactoryBuilder(dataSource());
		builder.setProperty("hibernate.dialect", "org.hibernate.dialect.SQLServerDialect");
//		.setProperty("hibernate.current_session_context_class", "thread")
//		.setProperty("hibernate.show_sql", "true")


		//加入要受hibernate管理的Bean
		builder.addAnnotatedClasses(MemberBean.class, FilmBean.class,QuestionRepositoryBean.class,QuestionRecordBean.class,RobotResponseRecordBean.class,AdRepositoryBean.class,AdRepositoryDataNoImageBean.class,AdministratorBean.class,GiftItemBean.class, OrderHistoryBriefBean.class, OrderHistoryDetailBean.class, PotentialItemListBean.class, FilmSectionBean.class);//加入要受hibernate管理的Bean

		return builder.buildSessionFactory();
	}
	@Bean
	public PlatformTransactionManager transactionManager() {
		return new HibernateTransactionManager(sessionFactory());
	}
	
	@Override
	protected WebApplicationContext createRootApplicationContext() {
		AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
		context.register(SpringJavaConfigurationAbstractContextLoaderListenerInitializer.class);
		return context;
	}

}
