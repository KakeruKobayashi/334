package service;

import java.sql.Connection;
import java.util.List;

import dao.CourseDAO;
import db.ConnectionManager;
import model.Course;

public class CourseService {
	public List<Course> selectCourse(String courseName) {
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

	 public String commentCourse(String genre) {
	        ConnectionManager connectionManager = new ConnectionManager();
	        try {
	            Connection connection = connectionManager.getConnection();
	            CourseDAO courseDAO = new CourseDAO(connection);
	            String courseComment = courseDAO.commentCourse(genre);
	            connectionManager.commit();
	            return courseComment;
	        } catch (RuntimeException e) {
	            connectionManager.rollback();
	            throw e;
	        } finally {
	            connectionManager.closeConnection();
	        }
	    }
}

