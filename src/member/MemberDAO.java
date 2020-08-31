package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.ConnectionManager;



public class MemberDAO {
	PreparedStatement stmt;
	ArrayList<MemberVO> list = new ArrayList<MemberVO>();
	Connection conn;
	ResultSet rs = null;
	public void insert(MemberVO memberVo) {
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "insert into member values(?,?,?,?,?,?)";
			PreparedStatement stmt = conn.prepareStatement(sql);
			System.out.println(memberVo.getId());
			stmt.setInt(1, memberVo.getId());
			stmt.setString(2, memberVo.getPw());
			stmt.setString(3, memberVo.getGender());
			stmt.setString(4, memberVo.getJob());
			stmt.setString(5, memberVo.getMail());
			stmt.setString(6, memberVo.getMotive());
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
				
				list.add(new MemberVO(rs.getInt("id"),rs.getString("pw"),rs.getString("gender"),rs.getString("job"),rs.getString("mail"),rs.getString("motive")));
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
}
