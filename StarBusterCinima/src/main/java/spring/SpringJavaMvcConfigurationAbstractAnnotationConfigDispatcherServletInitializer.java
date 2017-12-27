package spring;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.core.io.Resource;
import org.springframework.web.context.support.ServletContextResource;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import org.springframework.web.servlet.view.XmlViewResolver;

@Configuration
@ComponentScan(basePackages = { "member.controller", "gift.controller","smart.controller","ad.controller","adminstrator.controller","booking.controller", "films.controller" ,"vote.controller"})
@EnableWebMvc
public class SpringJavaMvcConfigurationAbstractAnnotationConfigDispatcherServletInitializer
		extends AbstractAnnotationConfigDispatcherServletInitializer implements WebMvcConfigurer {
	@Autowired
	ServletContext servletContext;
	
//	<bean id="multipartResolver"
//	        class="org.springframework.web.multipart.commons.CommonsMultipartResolver">
//	        <property name="maxUploadSize" value="10485760"/>
//	        <property name="maxInMemorySize" value="40960" />
//	</bean>
	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver cmr = new CommonsMultipartResolver();
		cmr.setMaxInMemorySize(40960);
		cmr.setMaxUploadSize(10485760);
		return cmr;
	}
	@Bean
	public ViewResolver viewResolver() {
		XmlViewResolver xvr = new XmlViewResolver();
		Resource location = new ServletContextResource(servletContext, "/WEB-INF/views.xml");
		xvr.setLocation(location);
		return xvr;
	}
	//國際化
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		LocaleChangeInterceptor lci =  new LocaleChangeInterceptor();
		lci.setParamName("changeLanguage");
		registry.addInterceptor(lci);
	}
	@Bean
	public LocaleResolver localeResolver() {
		SessionLocaleResolver slr = new SessionLocaleResolver();
		slr.setDefaultLocale(LocaleContextHolder.getLocale());
		return slr;
	}
	//國際化
	
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] { SpringJavaMvcConfigurationAbstractAnnotationConfigDispatcherServletInitializer.class };
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}

}
