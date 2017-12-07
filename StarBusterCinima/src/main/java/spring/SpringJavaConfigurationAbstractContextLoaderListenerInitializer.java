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

import member.model.MemberBean;

@Configuration
@ComponentScan(basePackages = { "member.model" })
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
		builder.setProperty("hibernate.dialect", "org.hibernate.dialect.SQLServerDialect")
//		.setProperty("hibernate.current_session_context_class", "thread")
//		.setProperty("hibernate.show_sql", "true")
		;
		builder.addAnnotatedClasses(MemberBean.class);//加入要受hibernate管理的Bean
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