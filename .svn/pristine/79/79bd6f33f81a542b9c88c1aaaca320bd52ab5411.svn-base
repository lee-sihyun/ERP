package site.itwill.utill;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import site.itwill.dto.EmployeeDTO;

//인터셉터 클래스는 반드시 HandlerInterceptorAdapter 클래스를 상속받아 작성
// => Spring Bean으로 등록해야만 인터셉터 클래스의 메소드 호출

//로그인 관련 권한 처리를 위한 인터셉터 클래스 
// => 비로그인 상태인 경우 로그인정보 입력페이지로 이동
public class LoginAuthInterceptor extends HandlerInterceptorAdapter {
	//요청처리 메소드의 명령이 실행되기 전에 호출되는 메소드
	// => 메소드에서 false를 반환하면 요청처리 메소드의 명령 미실행
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session=request.getSession();
		EmployeeDTO emp = (EmployeeDTO)session.getAttribute("loginUserinfo");
		
		if(session.getAttribute("loginUserinfo")==null || emp.getEmpState().equals("퇴직")) {
			String uri=request.getRequestURI().substring(request.getContextPath().length());
			String query=request.getQueryString();
			if(query==null) {
				query="";
			} else {
				query="?"+query;
			}
			
			if(request.getMethod().equals("GET")) {
				session.setAttribute("destURI",uri+query);
			}
				
			response.sendRedirect(request.getContextPath()+"/login");
			return false;
		}
		return true;
	}
	
	//요청처리 메소드의 명령이 실행된 후에 호출되는 메소드
	// => 요청처리 메소드에서 예외가 발생된 경우 미호출
	// => 요청처리 메소드의 반환값을 조작할 경우 사용
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}
	
	//요청처리 메소드의 명령이 실행된 후에 호출되는 메소드
	// => 요청처리 메소드에서 예외가 발생된 경우 호출
	// => 예외처리를 하고자 할 경우 사용
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		super.afterCompletion(request, response, handler, ex);
	}
}











