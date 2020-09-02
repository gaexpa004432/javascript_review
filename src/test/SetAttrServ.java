package test;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SetAttrServ
 */
@WebServlet("/test/SetAttr")
public class SetAttrServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SetAttrServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		ServletContext application = this.getServletContext();
		
		ShareObject obj1 = new ShareObject();
		obj1.setStr("req");
		request.setAttribute("data", obj1);
		
		
		ShareObject obj2 = new ShareObject();
		obj2.setStr("ses");
		session.setAttribute("data", obj2);
		

		ShareObject obj3 = new ShareObject();
		obj3.setStr("app");
		application.setAttribute("data", obj3);
		
		
		request.getRequestDispatcher("getAttr.jsp?name=choi").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
