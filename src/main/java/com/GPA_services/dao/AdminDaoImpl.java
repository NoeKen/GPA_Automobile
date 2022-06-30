package com.GPA_services.dao;

import java.io.IOException;
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
		System.out.println("Admin pour ajout:"+admin.getFirstName() +admin.getLastName());
		String sql = "insert into admin (first_name,last_name,email,tel_admin,cni_admin,password,userName) values (?,?,?,?,?,?,?)";
		try {
			PreparedStatement prepStatement = DaoFactory.getConnection().prepareStatement(sql);
			
//			prepStatement.setString(1, admin.getAvatar());
			prepStatement.setString(1, admin.getFirstName());
			prepStatement.setString(2, admin.getLastName());
			prepStatement.setString(3, admin.getEmail());
			prepStatement.setString(4, admin.getTel());
			prepStatement.setString(5, admin.getCNI());
			prepStatement.setString(6, admin.getPassword());
			prepStatement.setString(7, admin.getUsername());
			int result = prepStatement.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	@Override
	public boolean deleteAdmin(int id) {
		String sql = "delete from admin where id_Admin =?";
		try {
			PreparedStatement prepStatement = DaoFactory.getConnection().prepareStatement(sql);
			
			prepStatement.setInt(1, id);
			int result = prepStatement.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	@Override
	public Admin editAmin(Admin admin) {
		String sql = "update admin set first_name = ?,last_name=?,email=?,tel_admin=?,cni_admin=?,userName=? where id_Admin = ? ";
		
		try {
			PreparedStatement prepStatement = DaoFactory.getConnection().prepareStatement(sql);
			prepStatement.setString(1, admin.getFirstName());
			prepStatement.setString(2, admin.getLastName());
			prepStatement.setString(3, admin.getEmail());
			prepStatement.setString(4, admin.getTel());
			prepStatement.setString(5, admin.getCNI());
			prepStatement.setString(6, admin.getUsername());
			prepStatement.setInt(7, admin.getIdAdmin());
			
			int result = prepStatement.executeUpdate();
			System.out.println("admin  mis a jour: "+result);
			
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
				admin.setIdAdmin(result.getInt(1));
				admin.setAvatar(result.getBlob(2));
				admin.setFirstName (result.getString(3));
				admin.setLastName(result.getString(4));
				admin.setEmail(result.getString(5));
				admin.setTel(result.getString(6));
				admin.setCNI(result.getString(7));
				admin.setPassword(result.getString(8));
				admin.setUsername(result.getString(9));
				
				System.out.println(admin.getTel()+" "+admin.getPassword());
				return admin;
			}else {
				System.out.println("Credentials do not match our records");
				return null;
			}
		} catch (SQLException | IOException e) {
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
			
			while (result.next()) {
				Admin admin = new Admin();
				admin.setIdAdmin(result.getInt(1));
				admin.setAvatar(result.getBlob(2));
				admin.setFirstName (result.getString(3));
				admin.setLastName(result.getString(4));
				admin.setEmail(result.getString(5));
				admin.setTel(result.getString(6));
				admin.setCNI(result.getString(7));
				admin.setPassword(result.getString(8));
				admin.setUsername(result.getString(9));
				list.add(admin);
				
			}
		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
