package test;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServ
 */
@WebServlet("/hello")
public class HelloServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("client ip = " + request.getRemoteAddr());
		System.out.println("client agent = " + request.getHeader("User-Agent"));
		System.out.println("uri : " + request.getRequestURI());
		System.out.println("urL : " + request.getRequestURL());
		System.out.println("query string :  " + request.getQueryString());
		
		DeptDAO dao = new DeptDAO();
		int id = Integer.parseInt(request.getParameter("department_id"));
		DeptVO dept = dao.selectOne(new DeptVO(id,""));
		request.setAttribute("dept", dept);
		request.getRequestDispatcher("deptSelect.jsp").forward(request, response);
	}



	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		System.out.println("init execute");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

}
