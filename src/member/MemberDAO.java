package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import common.ConnectionManager;



public class MemberDAO {
	PreparedStatement stmt;
	ArrayList<MemberVO> list = new ArrayList<MemberVO>();
	Connection conn;
	ResultSet rs = null;
	public void insert(MemberVO memberVo) {
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "insert into member values(?,?,?,?,?,?,?,sysdate)";
			PreparedStatement stmt = conn.prepareStatement(sql);
			System.out.println(memberVo.getId());
			stmt.setInt(1, memberVo.getId());
			stmt.setString(2, memberVo.getPw());
			stmt.setString(3, memberVo.getGender());
			stmt.setString(4, memberVo.getJob());
			stmt.setString(5, memberVo.getMail());
			stmt.setString(6, memberVo.getMotive());
			stmt.setString(7, memberVo.getHobby());
			int r = stmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			ConnectionManager.close(null, stmt, conn);
		}
		
	}
	
	public ArrayList<MemberVO> select() {
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "select * from member";
			PreparedStatement stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()) {
				
				list.add(new MemberVO(rs.getInt("id"),rs.getString("pw"),rs.getString("gender"),rs.getString("job"),rs.getString("mail"),rs.getString("motive"),rs.getString("hobby"),rs.getString("regdate")));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			ConnectionManager.close(rs, stmt, conn);
		}
		
		return list;
	}
	
	public void delete(MemberVO memberVo) {
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "delete from member where id= ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, memberVo.getId());
			int r = stmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			ConnectionManager.close(null, stmt, conn);
		}
		
	}
	
	public int getMailynCnt() {
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "select count(id) from member where mail='Y'";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			rs.next();
			return rs.getInt("count(id)");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			ConnectionManager.close(rs, stmt, conn);
		}
		return 0;
	}
	
	public List<HashMap<String,Object>> getGenderCnt(){
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String,Object>>();
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "select gender , count(id) cnt from member group by gender";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()) {
				HashMap<String,Object> map = new HashMap<String,Object>();
				map.put("gender", rs.getString("gender"));
				map.put("cnt", rs.getString("cnt"));
				list.add(map);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			ConnectionManager.close(rs, stmt, conn);
		}
		return null;
	}
}
