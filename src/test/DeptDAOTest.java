package test;

import java.util.ArrayList;

public class DeptDAOTest {
	public static void main(String[] args) {
		ArrayList<DeptVO> list = new ArrayList<DeptVO>();
		DeptDAO dao = new DeptDAO();
		
		dao.selectOne(new DeptVO(1200,""));
		list = dao.selectAll();
		list.forEach(e -> System.out.println(e.getDepartment_id() + e.getDepartment_name()));
		
	}
}
