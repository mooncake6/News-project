package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import entity.News;
import util.DBUtil;

public class NewsDao {
	public boolean newsPublish(News news) {
		Connection conn = null;
		PreparedStatement prep = null;

		try {
			conn = DBUtil.getConnection();
			prep = conn.prepareStatement(
					"INSERT INTO BK0134.NEWS(TITLE,TYPE_ID,NEWS_DATE,AUTHOR,CONTENT) VALUES(?,?,?,?,?)");

			prep.setString(1, news.getTitle());
			prep.setString(2, news.getTypeId());
			prep.setString(3, news.getNewsDate());
			prep.setString(4, news.getAuthor());
			prep.setString(5, news.getContext());

			prep.executeUpdate();
			System.out.println("news publish success!");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		} finally {
			DBUtil.close(conn);
		}
		return true;
	}

	public ArrayList<News> getSearchResult(String author, String typeId, String newsDate) {
		ArrayList<News> resultList = new ArrayList<News>();
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet rs = null;

		String sql = "SELECT *　FROM BK0134.NEWS";
		int position1 = 0;
		int position2 = 0;
		int position3 = 0;

		if (!("".equals(author)) && author != null) {
			sql += " WHERE AUTHOR=?";
			position1++;
		}
		if (!("".equals(typeId)) && typeId != null) {
			if (position1 == 0) {
				sql += "  WHERE TYPE_ID=?";
				position2++;
			} else {
				sql += "  AND TYPE_ID=?";
				position2 += 2;
			}
		}
		if (!("".equals(newsDate)) && newsDate != null) {
			if (position2 == 0) {
				sql += "  WHERE NEWS_DATE=?";
				position3++;
			} else if (position2 == 1) {
				sql += "  AND NEWS_DATE=?";
				position3 += 2;
			} else {
				sql += "  AND NEWS_DATE=?";
				position3 += 3;
			}
		}

		try {
			conn = DBUtil.getConnection();
			prep = conn.prepareStatement(sql);

			if (position1 != 0) {
				prep.setString(position1, author);
			}
			if (position2 != 0) {
				prep.setString(position2, typeId);
			}
			if (position3 != 0) {
				prep.setString(position3, newsDate);
			}

			rs = prep.executeQuery();
			while(rs.next()){
				News news = new News();
				news.setTitle(rs.getString("TITLE"));
				news.setAuthor(rs.getString("AUTHOR"));
				news.setTypeId(rs.getString("TYPE_ID"));
				news.setContext(rs.getString("CONTENT"));
				resultList.add(news);
			}
			System.out.println("news search success!");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(conn);
		}
		return resultList;
	}

}
