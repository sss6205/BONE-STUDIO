package login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/session2_servlet/*")
public class SessionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, 
	IOException {
		String uri=request.getRequestURI();
		System.out.println(uri);
		BoneDAO dao=new BoneDAO();
		if(uri.indexOf("login.do") != -1){//로그인 처리
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			BoneDTO dto=new BoneDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			String result=dao.loginCheck(dto);
			System.out.println(result);
			String page="/project/login.jsp";
			if(!result.equals("로그인 실패")) {//로그인 성공
				//세션 객체 생성
				HttpSession session=request.getSession();
				//세션에 값을 저장
				session.setAttribute("userid", userid);
				session.setAttribute("message", result);
				page="/project/home.jsp?message=login";
				response.sendRedirect(request.getContextPath()+page);
			}else {//로그인 실패
				response.sendRedirect(
						request.getContextPath()+
						page+"?message=error");
			      }
			}else if(uri.indexOf("logout.do") != -1) {//로그아웃 처리
				HttpSession session=request.getSession();
				//세션을 비움(초기화시킴)
				session.invalidate();
				String page=request.getContextPath()
						+"/project/home.jsp?message=logout";
				response.sendRedirect(page);
			}else if(uri.indexOf("join.do") != -1) {//회원등록
				String userid=request.getParameter("userid");
				String passwd=request.getParameter("passwd");
				String name=request.getParameter("name");
				String email=request.getParameter("email");
				String hp=request.getParameter("hp");
				BoneDTO dto=new BoneDTO();//boneDTO생성
				dto.setUserid(userid);
				dto.setPasswd(passwd);
				dto.setName(name);
				dto.setEmail(email);
				dto.setHp(hp);
				dao.insert(dto);//추가
				
			}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
