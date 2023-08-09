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

	public int selectUserCourse(String nickname) {
		PreparedStatement statement = null;

		try {
			String sql = "SELECT courseID FROM t_userCourse WHERE userID = (SELECT userID FROM t_user WHERE nickname = ?)";
			statement = connection.prepareStatement(sql);
			statement.setString(1, nickname);

			ResultSet result = statement.executeQuery();
			int courseID = 0;

			if(result.next()) {
				courseID = result.getInt(1);
			}

			return courseID;

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
