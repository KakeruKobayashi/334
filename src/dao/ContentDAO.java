package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Content;

public class ContentDAO {
	private Connection connection;

	public ContentDAO(Connection connection) {
		this.connection = connection;
	}

	public List<Content> selectContent(String courseName){
		PreparedStatement statement = null;

		try {
			String sql = "SELECT con.contentName, con.contentTime FROM content AS con JOIN course AS cou ON con.courseName = ?";
			statement = connection.prepareStatement(sql);
			statement.setString(1, courseName);

			ResultSet result = statement.executeQuery();

			List<Content> resultList = new ArrayList<Content>();

			while(result.next()) {
				Content content = new Content();
				content.setContentName(result.getString(1));
				content.setContentTime(result.getInt(2));
				resultList.add(content);
			}

			return resultList;

		}catch (SQLException e) {

			e.printStackTrace();
			throw new RuntimeException("SQLの実行に失敗しました", e);

		} finally {
			try {
				if (statement != null) {

					statement.close();
					System.out.println("ステートメントの解放に成功しました");

				}
			} catch (SQLException e) {

				throw new RuntimeException("SQLの実行の後処理に失敗しました", e);

			}
		}
	}

	public List<Content> selectContentByTime(int courseID, int contentTime){
		PreparedStatement statement = null;

		try {
			String sql = "SELECT contentName, contentTime FROM content WHERE contentTime >= 20 AND contentTime <= ? AND courseID = ?";
			statement = connection.prepareStatement(sql);
			statement.setInt(1, contentTime);
			statement.setInt(2, courseID);

			ResultSet result = statement.executeQuery();

			List<Content> resultList = new ArrayList<Content>();

			while(result.next()) {
				Content content = new Content();
				content.setContentName(result.getString(1));
				content.setContentTime(result.getInt(2));
				resultList.add(content);
			}
			return resultList;

		}catch (SQLException e) {

			e.printStackTrace();
			throw new RuntimeException("SQLの実行に失敗しました", e);

		} finally {
			try {
				if (statement != null) {

					statement.close();
					System.out.println("ステートメントの解放に成功しました");

				}
			} catch (SQLException e) {

				throw new RuntimeException("SQLの実行の後処理に失敗しました", e);

			}
		}
	}
}
