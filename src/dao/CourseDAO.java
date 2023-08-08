package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Course;

public class CourseDAO {
	private Connection connection;

	public CourseDAO(Connection connection) {
		this.connection = connection;
	}

	public List<Course> selectCourse(String genre){
		PreparedStatement statement = null;

		try {
			String sql = "SELECT * FROM t_course WHERE genre = ?";
			statement = connection.prepareStatement(sql);
			statement.setString(1, genre);

			ResultSet result = statement.executeQuery();

			List<Course> resultList = new ArrayList<Course>();

			while(result.next()) {
				Course course = new Course();
				course.setCoursename(result.getString(1));
				course.setExamdate(result.getDate(2));
				course.setGenre(result.getString(3));
				resultList.add(course);
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
