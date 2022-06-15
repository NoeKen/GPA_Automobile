package com.GPA_services.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.GPA_services.DaoFactory.DaoFactory;
import com.GPA_services.InterfacesDao.AdminDao;
import com.GPA_services.beans.Admin;


public class AdminDaoImpl implements AdminDao {
	@Override
	public boolean ajouter(Admin admin) {
		String sql = "insert into admin (first_name,last_name,tel_admin,cni_admin,password) values (?,?,?,?,?)";
		try {
			PreparedStatement prepStatement = DaoFactory.getConnection().prepareStatement(sql);
			
			prepStatement.setString(1, admin.getFirstName());
			prepStatement.setString(2, admin.getLastName());
			prepStatement.setString(3, admin.getTel());
			prepStatement.setString(4, admin.getCNI());
			prepStatement.setString(5, admin.getPassword());
			System.out.println("item inserted successfully\n"+admin);
			return prepStatement.executeUpdate()>0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	@Override
	public boolean deleteAdmin(int id) {
		String sql = "delete from admin where matricule =?";
		try {
			PreparedStatement prepStatement = DaoFactory.getConnection().prepareStatement(sql);
			
			prepStatement.setInt(1, id);
			
			return prepStatement.executeUpdate()>0;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	@Override
	public Admin editAmin(int stdId, Admin admin) {
		String sql = "update admin set first_name = ?,last_name=?,tel_admin=?,cni_admin=? where id_admin = ? ";
		
		try {
			PreparedStatement prepStatement = DaoFactory.getConnection().prepareStatement(sql);
			prepStatement.setString(2, admin.getFirstName());
			prepStatement.setString(3, admin.getLastName());
			prepStatement.setString(4, admin.getTel());
			prepStatement.setString(5, admin.getCNI());
			prepStatement.setString(6, admin.getPassword());
			
			return admin;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return admin;
	}
	
	public Admin getAdmin(String tel, String password) {
		String sql = "select * from admin where tel_Admin = ? AND password = ?";
		
		try {
			PreparedStatement prepStatement = DaoFactory.getConnection().prepareStatement(sql);
			
			prepStatement.setString(1, tel);
			prepStatement.setString(2, password);
			
			ResultSet result = prepStatement.executeQuery();
			
			if(result.next()) {
				Admin admin = new Admin();
//				student.setSdtId(result.getInt(1));
				admin.setFirstName (result.getString(2));
				admin.setLastName(result.getString(3));
				admin.setTel(result.getString(4));
				admin.setCNI(result.getString(5));
				admin.setPassword(result.getString(6));
				
				System.out.println(admin.getTel()+" "+admin.getPassword());
				return admin;
			}else {
				System.out.println("Credentials do not match our records");
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@Override
	public List<Admin> lister() {
		List<Admin> list = new ArrayList<Admin>();
		String sql = "select * from admin	";
		try {
			PreparedStatement prepStatement = DaoFactory.getConnection().prepareStatement(sql);
			ResultSet result = prepStatement.executeQuery();
			
			System.out.println("Get Admin from database: ");
			while (result.next()) {
				Admin admin = new Admin();
				admin.setFirstName (result.getString(2));
				admin.setLastName(result.getString(3));
				admin.setTel(result.getString(4));
				admin.setCNI(result.getString(5));
				
//				student.setSdtId(result.getInt(1));
//				student.setNom(result.getString(2));
//				student.setPrenom(result.getString(3));
//				student.setAge(result.getString(4));
//				student.setMatricule(result.getString(5));
				System.out.println("Name : "+admin.getFirstName()+" "+admin.getLastName());
				list.add(admin);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
