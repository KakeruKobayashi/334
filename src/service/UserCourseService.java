package service;

import java.sql.Connection;

import dao.UserCourseDAO;
import db.ConnectionManager;

public class UserCourseService {

	public int insertUserCourse(String nickname, String courseName) {
		ConnectionManager connectionManager = new ConnectionManager();

		try {
			Connection connection = connectionManager.getConnection();
			UserCourseDAO userCourseDAO = new UserCourseDAO(connection);
			int result = userCourseDAO.insertUserCourse(nickname, courseName);
			connectionManager.commit();
			return result;
		} catch (RuntimeException e) {
			connectionManager.rollback();
			throw e;
		} finally {
			connectionManager.closeConnection();
		}
	}

	public String selectCourseName(String nickname) {
		ConnectionManager connectionManager = new ConnectionManager();

		try {
			Connection connection = connectionManager.getConnection();
			UserCourseDAO userCourseDAO = new UserCourseDAO(connection);
			String courseName = userCourseDAO.selectUserCourse(nickname);
			return courseName;
		}catch (RuntimeException e) {
			connectionManager.rollback();
			throw e;
		} finally {
			connectionManager.closeConnection();
		}
	}
}
