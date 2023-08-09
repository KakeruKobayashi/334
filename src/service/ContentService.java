package service;

import java.sql.Connection;
import java.util.List;

import dao.ContentDAO;
import db.ConnectionManager;
import model.Content;

public class ContentService {
	public List<Content> selectContent(String contentName) {
		ConnectionManager connectionManager = new ConnectionManager();
		try {
			Connection connection = connectionManager.getConnection();
			ContentDAO contentDAO = new ContentDAO(connection);
			List<Content> resultList = contentDAO.selectContent(contentName);
			connectionManager.commit();
			return resultList;
		} catch (RuntimeException e) {
			connectionManager.rollback();
			throw e;
		} finally {
			connectionManager.closeConnection();
		}
	}

	public List<Content> selectContentByTime(String contentID, int contentTime) {
		ConnectionManager connectionManager = new ConnectionManager();
		try {
			Connection connection = connectionManager.getConnection();
			ContentDAO contentDAO = new ContentDAO(connection);
			List<Content> resultList = contentDAO.selectContentByTime(contentID, contentTime);
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
