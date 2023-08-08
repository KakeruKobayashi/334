package dao;

import java.sql.Connection;

public class UserCourseDAO {
	private Connection connection;

	public UserCourseDAO(Connection connection) {
		this.connection = connection;
	}


}
