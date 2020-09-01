package dept;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.ConnectionManager;

public class DeptDAO {
	PreparedStatement stmt;
	ArrayList<DeptVO> list = new ArrayList<DeptVO>();
	Connection conn;
	ResultSet rs = null;
	public ArrayList<DeptVO> selectAll() {
		DeptVO resultVO = null;
		try {
			String sql = "select * from departments";
			conn = ConnectionManager.getConnnect();
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()) {
				resultVO = new DeptVO(rs.getInt("department_id"),rs.getString("department_name"),rs.getInt("manager_id"),rs.getInt("location_id"));
				list.add(resultVO);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			ConnectionManager.close(rs, stmt, conn);
		}
		return list;
	}
	public DeptVO selectOne(DeptVO deptVO) {
		DeptVO resultVO = null;
		try {
			String sql = "select * from departments where department_id = ?";
			conn = ConnectionManager.getConnnect();
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, deptVO.getDepartment_id());
			rs = stmt.executeQuery();
			if(rs.next()) {
				resultVO = new DeptVO(rs.getInt("department_id"),rs.getString("department_name"),rs.getInt("manager_id"),rs.getInt("location_id"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			ConnectionManager.close(rs, stmt, conn);
		}
		return resultVO;
	}
	public void insert(DeptVO deptVO) {
		
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "insert into departments(department_id,department_name) values(?,?)";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, deptVO.getDepartment_id());
			stmt.setString(2, deptVO.getDepartment_name());
			int r = stmt.executeUpdate();
			if(r == 1) {
				System.out.println(r+" case Processed");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ConnectionManager.close(conn);
		
		}
	public void update(DeptVO deptVO) {
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "update departments set department_name = ? where department_id = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, deptVO.getDepartment_name());
			stmt.setInt(2, deptVO.getDepartment_id());
			int r = stmt.executeUpdate();
			if(r == 1) {
				System.out.println(r+" case Processed");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ConnectionManager.close(conn);
	}
	public void delete(DeptVO deptVO) {
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "delete from departments where department_id = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, deptVO.getDepartment_name());
			int r = stmt.executeUpdate();
			if(r == 1) {
				System.out.println(r+" case Processed");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ConnectionManager.close(conn);
	}
}
