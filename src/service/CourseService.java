package service;

import java.sql.Connection;
import java.util.List;

import dao.CourseDAO;
import db.ConnectionManager;
import model.Course;

public class CourseService {
	public List<Course> selectContent(String courseName) {
		ConnectionManager connectionManager = new ConnectionManager();
		try {
			Connection connection = connectionManager.getConnection();
			CourseDAO contentDAO = new CourseDAO(connection);
			List<Course> resultList = contentDAO.selectCourse(courseName);
			connectionManager.commit();
			return resultList;
		} catch (RuntimeException e) {
			connectionManager.rollback();
			throw e;
		} finally {
			connectionManager.closeConnection();
		}
	}
}

