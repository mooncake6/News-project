package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DBUtil;

public class UserDao {

	public boolean loginCheck(String name, String password) {
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet rst = null;

		try {
			
			conn = DBUtil.getConnection();
			
			prep = conn.prepareStatement("SELECT * FROM BK0134.USER WHERE NAME=? AND PASSWORD=?");
			prep.setString(1, name);
			prep.setString(2, password);

			rst = prep.executeQuery();
			
			System.out.println("login check success!");

			if (rst.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBUtil.close(conn);
		}
		return false;
	}
}
