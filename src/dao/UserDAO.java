package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.User;

public class UserDAO {
	private Connection connection;

	public UserDAO(Connection connection) {
		this.connection = connection;
	}

	public int insertUser(User user) {
		PreparedStatement statement = null;

		try {
			String sql = "INSERT INTO t_user VALUES (?, ?, ?, ?, ?)";
			statement = connection.prepareStatement(sql);
			statement.setString(1, user.getNickname());
			statement.setString(2, user.getFullname());
			statement.setDate(3, user.getBirthday());
			statement.setString(4, user.getOccpation());
			statement.setString(5, user.getField());

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

	public int updateUser(int personalQuestionResult, String nickname) {
		PreparedStatement statement = null;

		try {
			String sql = "UPDATE t_user SET personalQuestionResult = ? WHERE nickname = ?";
			statement = connection.prepareStatement(sql);
			statement.setInt(1, personalQuestionResult);
			statement.setString(2, nickname);

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
}
