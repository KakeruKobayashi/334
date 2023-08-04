package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
* [機 能] 文字コード変更サーブレット<br>
* [説 明] 文字コードをUTF-8に変更する。<br>
* @author murata
*/
@WebFilter("/*")
public class encodingFilter implements Filter {

	public encodingFilter() {
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

	/**
	* [機 能] doFilterメソッド<br>
	* @param request クライアントからのリクエスト情報
	* @param response クライアントへのレスポンス情報
	* @throws ServletException
	* @throws IOException
	*/
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		chain.doFilter(request, response);
	}

	public void destroy() {
	}

}