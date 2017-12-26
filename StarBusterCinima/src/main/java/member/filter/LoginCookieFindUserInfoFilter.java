package member.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import misc.CipherUtils;

@WebFilter("/member/login.jsp")
public class LoginCookieFindUserInfoFilter implements Filter {
	FilterConfig filterConfig;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		if (request instanceof HttpServletRequest && response instanceof HttpServletResponse) {
			HttpServletRequest req = (HttpServletRequest) request;
			HttpServletResponse resp = (HttpServletResponse) response;

			HttpSession session = req.getSession();
			Cookie[] cookies = req.getCookies();
			String cookieName = "";
			String user = "";
			String password = "";
			String rememberMe = "";
			if (cookies != null) {
				for (Cookie cookie : cookies) {
					cookieName = cookie.getName();
					if (cookieName.equals("user")) {
						user = cookie.getValue();
					} else if (cookieName.equals("password")) {
						String temp = cookie.getValue();
						password = CipherUtils.decryptString(CipherUtils.DEFAULTKEY, temp);
					} else if (cookieName.equals("rm")) {
						rememberMe = cookie.getValue();
					}
				}
			} else {
			}
			session.setAttribute("rememberMe", rememberMe);
			session.setAttribute("user", user);
			session.setAttribute("password", password);
			chain.doFilter(request, response);
		}
	}

	@Override
	public void destroy() {

	}

}
