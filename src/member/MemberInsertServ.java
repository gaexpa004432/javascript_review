package member;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

/**
 * Servlet implementation class MemberInsertServ
 */
@WebServlet("/member/MemberInsertServ")
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
		response.setContentType("text/html; charset=UTF-8");
		
		String hobby[] = request.getParameterValues("hobby");
		String hobby1 = null;
		for(String a : hobby) {
		hobby1 += a+",";
		};
		MemberVO memberVo = new MemberVO(Integer.parseInt(request.getParameter("id")),request.getParameter("pw"),request.getParameter("gender"),request.getParameter("job")
				,request.getParameter("mailYn"),request.getParameter("content"),hobby1,"");
//		out.print(memberVo.toString());
//		Integer.parseInt(request.getParameter("id"));
//		request.getParameter("pw");
//		request.getParameter("gender");
//		request.getParameter("job");
//		request.getParameter("mailYn");
//		request.getParameter("content");
	
//		try {
//			BeanUtils.copyProperties(memberVo, request.getParameterMap());
//		} catch (IllegalAccessException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (InvocationTargetException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
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
