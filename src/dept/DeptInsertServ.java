package dept;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class DeptInsertServ
 */
@WebServlet("/dept/DeptInsertServ")
public class DeptInsertServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeptInsertServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DeptDAO dao = new DeptDAO();
		DeptVO deptvo = new DeptVO(Integer.parseInt(request.getParameter("department_id")),request.getParameter("department_name"));
		dao.insert(deptvo);
//		response.setContentType("text/html; charset=UTF-8"); // 인코딩
//		PrintWriter out = response.getWriter();
//		out.print("<script>");
//		out.print("alert('등처완')");
//		out.print("</script>");
		System.out.println("insert exe");
		response.sendRedirect("DeptSelectAllServ");
		
//		request.getRequestDispatcher("deptSelect.jsp").forward(request, response);
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}