package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.DBUtil;
import entity.User;

public class UserDAO {
	public boolean addUser(User u) throws Exception {
		if(get(u.getUser_id())!=null)
			return false;
		Connection conn=DBUtil.getConnection();
		String sql="" +
				"insert into person_info" +
				"(user_id,user_name,user_sex," +
				"user_question,user_answer,user_number)" +
				"values(" +
				"?,?,?,?,?,?)";
		PreparedStatement ptmt=conn.prepareStatement(sql);
        ptmt.setString(1, u.getUser_id());
        ptmt.setString(2, u.getUser_name());
        ptmt.setString(3, u.getUser_sex());
        ptmt.setString(4, u.getUser_question());
        ptmt.setString(5, u.getUser_answer());
        ptmt.setString(6, u.getUser_number()); 
        ptmt.execute();
        //为什么不执行呢？
        String sql1=""+
        			"insert into user_sign"+
        			"(user_nick,user_code,user_id,user_right)"+
        			"values(" +
        			"?,?,?,?)";
        PreparedStatement ptmt1=conn.prepareStatement(sql1);
        ptmt1.setString(1, u.getUser_nick());
        ptmt1.setString(2, u.getUser_code());
        ptmt1.setString(3, u.getUser_id());
        ptmt1.setInt(4, u.getUser_right());
        ptmt1.execute();
        return true;
	}
	public void updateUser_code(User u) throws SQLException {
		//ֻ�ṩ�޸�����Ĳ���
		
		Connection conn=DBUtil.getConnection();
		String sql1=""+
     			" update user_sign "+
     			" set user_code=? "+
     			" where user_id=? ";
		PreparedStatement ptmt1=conn.prepareStatement(sql1);
		ptmt1.setString(1, u.getUser_code());
		ptmt1.setString(2, u.getUser_id());
		ptmt1.execute();
	}
	
	public void updateUser_questionn(User u) throws SQLException {
		//更新密保问题答案
		
		Connection conn=DBUtil.getConnection();
		String sql1=""+
     			" update person_info "+
     			" set user_answer=? "+
     			" where user_id=? ";
		PreparedStatement ptmt1=conn.prepareStatement(sql1);
		ptmt1.setString(1, u.getUser_answer());
		ptmt1.setString(2, u.getUser_id());
		ptmt1.execute();
	}
	
	public List<User> query() throws Exception{
		Connection conn=DBUtil.getConnection();
		//3.返回全部的用户信息
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery("select user_id,user_name from person_info ");
		List<User> gs=new ArrayList<User>();
		User u=null;
		while(rs.next())
		{
			u=new User();
			u.setUser_name(rs.getString("user_name"));
		    u.setUser_id(rs.getString("user_id"));
            gs.add(u);
		}
		return gs;
	}
	
	public User get(String id) throws SQLException{
		User u=null;
		Connection conn=DBUtil.getConnection();
		String sql="" +
				" select * from person_info " +
				" where user_id=?";
		PreparedStatement ptmt=conn.prepareStatement(sql);
		ptmt.setString(1, id);
		ResultSet rs=ptmt.executeQuery();
		String sql1="" +
				" select * from user_sign " +
				" where user_id=?";
		PreparedStatement ptmt1=conn.prepareStatement(sql1);
		ptmt1.setString(1, id);
		ResultSet rs1=ptmt1.executeQuery();
		while(rs.next()){
			u=new User();
			u.setUser_id(rs.getString("user_id"));
			u.setUser_name(rs.getString("user_name"));
			u.setUser_sex(rs.getString("user_sex"));
			u.setUser_number(rs.getString("user_number"));
			u.setUser_question(rs.getString("user_question"));
			u.setUser_answer(rs.getString("user_answer"));
		}
		while(rs1.next()) {
			u.setUser_nick(rs1.getString("user_nick"));
			u.setUser_right(rs1.getInt("user_right"));
			u.setUser_code(rs1.getString("user_code"));
		}
		return u;
	}
}
