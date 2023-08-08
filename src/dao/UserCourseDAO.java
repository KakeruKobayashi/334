package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Course;

public class UserCourseDAO {
	private Connection connection;

	public UserCourseDAO(Connection connection) {
		this.connection = connection;
	}

	public int insertUserCourse() {
		PreparedStatement statement = null;

		try {
			String sql = "";
			statement = connection.prepareStatement(sql);

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
}
