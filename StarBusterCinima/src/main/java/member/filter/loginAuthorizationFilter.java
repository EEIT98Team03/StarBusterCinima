package member.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.MemberBean;

@WebFilter(urlPatterns= {"/*"},initParams= {
//		@WebInitParam(name = "mustLogin1", value = "/shopping/*"), 
		@WebInitParam(name = "mustLogin2", value = "/film/*"),
		@WebInitParam(name = "mustLogin3", value = "/member/memberManagement/*") 
//		@WebInitParam(name = "mustLogin3", value = "/wishpool/*"),
//		@WebInitParam(name = "mustLogin4", value = "/???/*")
})
public class loginAuthorizationFilter implements Filter {
	List<String> mustLoginUrls = new ArrayList<String>();
	String requestURI="";//contextPath + servletPath + PathInfo
	String contextPath="";
	String servletPath="";
	HttpSession session ;
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		Enumeration<String> initParam = filterConfig.getInitParameterNames();
		while(initParam.hasMoreElements()) {
			String mustLoginName = initParam.nextElement();
			mustLoginUrls.add(filterConfig.getInitParameter(mustLoginName));
		}
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		if(req instanceof HttpServletRequest && resp instanceof HttpServletResponse) {
			HttpServletRequest request =(HttpServletRequest)req;
			HttpServletResponse response =(HttpServletResponse)resp;
			requestURI = request.getRequestURI();
			contextPath = request.getContextPath();
			servletPath = request.getServletPath();
			session= request.getSession();
			boolean sessionIdStatus = request.isRequestedSessionIdValid();
			//true if this request has an id for a valid session in the current session context; false otherwise
			if(mustLogin()) {
				if(checkLogin()) {
					chain.doFilter(request, response);
					//有登入很好繼續使用
				}else {
					//沒登入好吧，讓你跳轉至login，兩種情況自願點login登入or原本要看XX結果被跳轉login這邊有夠煩人
					session.setAttribute("requestURI", requestURI);
					
					if(!sessionIdStatus) {
						session.setAttribute("timeOut", "使用逾時，請重新登入");
					}
					
					response.sendRedirect(contextPath+"/member/login.jsp");
					return;
				}
				
			}else {//不進行跳轉login頁面
				chain.doFilter(request, response);
			}
		}else {
			throw new ServletException("Request / Response 型態錯誤");
		}
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}
	private boolean mustLogin() {
		boolean login = false;
		for(String url:mustLoginUrls) {
			if(url.endsWith("*")) {
				String sURL = url.substring(0, url.length()-1);
				if(servletPath.startsWith(sURL)) {
					login=true;
					break;
				}
			}else {
				if(servletPath.equals(url)) {
					login=false;
					break;
				}
			}
		}
		return login;
	}
	private boolean checkLogin() {
		MemberBean bean = (MemberBean)session.getAttribute("loginUserInfo");
		if(bean!=null) {
			return true;
		}
		return false;
	}

}
