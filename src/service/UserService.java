package service;

import java.sql.Connection;

import dao.UserDAO;
import db.ConnectionManager;
import model.User;

public class UserService {


	public int insertUser(User user) {
		ConnectionManager connectionManager = new ConnectionManager();
		try {
			Connection connection = connectionManager.getConnection();
			UserDAO userDAO = new UserDAO(connection);
			int result = userDAO.insertUser(user);
			connectionManager.commit();
			return result;
		} catch (RuntimeException e) {
			connectionManager.rollback();
			throw e;
		} finally {
			connectionManager.closeConnection();
		}
	}

	public int updateUser(int personalQuestionResult, String nickname) {
		ConnectionManager connectionManager = new ConnectionManager();
		try {
			Connection connection = connectionManager.getConnection();
			UserDAO userDAO = new UserDAO(connection);
			int result = userDAO.updateUser(personalQuestionResult, nickname);
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
