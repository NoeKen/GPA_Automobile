package com.GPA_services.DaoFactory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DaoFactory {
	public static Connection connection;
	public static Connection getConnection()  {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/gpa_automobile","root","");
			return connection;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
//    // Récupération du Dao
//    public UtilisateurDao getUtilisateurDao() {
//        return new UtilisateurDaoImpl(this);
//    }
}