package member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberLoginServ
 */
@WebServlet({"/member/MemberLogin","/member/MemberLogout"})
public class MemberLoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLoginServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().invalidate(); //세션 객체 삭제 
		
		response.sendRedirect("../index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MemberVO membervo = new MemberVO();
		membervo.setId(Integer.parseInt(request.getParameter("id")));
		membervo.setPw("pw");
		// db 처리구문
		// 단건조회 dao 추가요망 MemberVO resultvo = MemberDAO.getInstance().select();
		String page = "";
		if(membervo == null) {
			request.setAttribute("no id","no id");
			page = "login.jsp";
		}else {
//			if(membervo.getPw().equals(resultVO.getPw())) {
//				request.getSession().setAttribute("login", resultVO);
//				request.getSession().setAttribute("id", resultVO.getId());
//				page = "../index.jsp";
//			}else {
			request.setAttribute("no pw", "no pw ");
//				page = "login.jsp";
//			}
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}

}
