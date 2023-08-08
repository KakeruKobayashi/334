package service;

import java.sql.Connection;

import dao.UserCourseDAO;
import db.ConnectionManager;
import model.User;

public class UserCourseService {
	public int insertUser(User user) {
		ConnectionManager connectionManager = new ConnectionManager();
		try {
			Connection connection = connectionManager.getConnection();
			UserCourseDAO userCourseDAO = new UserCourseDAO(connection);
			int result = userCourseDAO.insertUserCourse();
			connectionManager.commit();
			return result;
		} catch (RuntimeException e) {
			connectionManager.rollback();
			throw e;
		} finally {
			connectionManager.closeConnection();
		}
	}
}
