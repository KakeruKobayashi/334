package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserCourseDAO {
	private Connection connection;

	public UserCourseDAO(Connection connection) {
		this.connection = connection;
	}

	public int insertUserCourse(String nickname, String courseName) {
		PreparedStatement statement = null;

		try {
			String sql = "INSERT INTO t_userCourse VALUES ((SELECT userID FROM t_user WHERE nickname = ?), (SELECT courseID FROM course WHERE courseName = ?))";
			statement = connection.prepareStatement(sql);
			statement.setString(1, nickname);
			statement.setString(2, courseName);

			int result = statement.executeUpdate();

			return result;

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

	public String selectUserCourse(String nickname) {
		PreparedStatement statement = null;

		try {
			String sql = "SELECT courseName FROM t_userCourse WHERE userID = (SELECT userID FROM t_user WHERE nickname = ?)";
			statement = connection.prepareStatement(sql);
			statement.setString(1, nickname);

			ResultSet result = statement.executeQuery();
			String courseName = "";

			if(result.next()) {
				courseName = result.getString(1);
			}

			return courseName;

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
