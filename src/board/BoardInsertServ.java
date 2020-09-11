package board;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import common.FileRenamePolicy;

/**
 * Servlet implementation class BoardInsertServ
 */
@MultipartConfig(location = "c:/upload", maxRequestSize = 1024 * 1024 * 10)
@WebServlet("/board/boardInsert.do")
public class BoardInsertServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("boardInsert.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 파라미터 VO에 담기
		BoardVO board = new BoardVO();

		board.setPoster(request.getParameter("poster"));
		board.setSubject(request.getParameter("subject"));
		board.setContents(request.getParameter("contents"));
		//////////////////////////////////////////
		Part part = request.getPart("filename");
		String filename = getFileName(part);
		String path = request.getServletContext().getRealPath("/images");
		System.out.println(path);
		//중복체크
		File renamefile = FileRenamePolicy.rename(new File(path,filename));
		part.write(path + "/" + renamefile.getName());
		board.setFilename(renamefile.getName());

		
		
		try { // 위의 파라미터 한꺼번에 담아주는거
			BeanUtils.copyProperties(board, request.getParameterMap());
		} catch (Exception e) {
			e.printStackTrace();
		}

//		System.out.println("============map============");
//		Map<String,String[]> map = request.getParameterMap();
//		System.out.println(map);
//		System.out.println("no=" + map.get("no"));
//		
//		System.out.println("============names============");
//		Enumeration<String> pnames = request.getParameterNames();  // 파라미터 이름만 읽어오기 가능
//		while(pnames.hasMoreElements()) {
//			System.out.println(pnames.nextElement());
//		}

		// DB 등록 처리
		BoardDAO dao = new BoardDAO();
		dao.insert(board);

		// 목록으로 이동
		response.sendRedirect("boardSelectAll.do");
	}

	private String getFileName(Part part) throws UnsupportedEncodingException {
		for (String cd : part.getHeader("Content-Disposition").split(";")) {
			if (cd.trim().startsWith("filename")) {
				return cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
			}
		}
		return null;
	}

}