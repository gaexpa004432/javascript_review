package member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberInsertServ
 */
@WebServlet("/member2/MemberInsertServ")
public class MemberInsertServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsertServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		MemberVO memberVo = new MemberVO(Integer.parseInt(request.getParameter("id")),request.getParameter("pw"),request.getParameter("gender"),request.getParameter("job")
				,request.getParameter("mailYn"),request.getParameter("content"));
		response.setContentType("text/html; charset=UTF-8");
//		out.print(memberVo.toString());
//		Integer.parseInt(request.getParameter("id"));
//		request.getParameter("pw");
//		request.getParameter("gender");
//		request.getParameter("job");
//		request.getParameter("mailYn");
//		request.getParameter("content");
	MemberDAO dao = new MemberDAO();
//		dao.insert(memberVo);
	dao.insert(memberVo);
	response.sendRedirect("MemberSelectServ");
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
