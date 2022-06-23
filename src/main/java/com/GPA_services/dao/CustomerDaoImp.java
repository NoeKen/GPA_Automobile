package com.GPA_services.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.GPA_services.DaoFactory.DaoFactory;
import com.GPA_services.InterfacesDao.CustomerDao;
import com.GPA_services.beans.Customer;

public class CustomerDaoImp implements CustomerDao {
	@Override
	public boolean ajouter(Customer customer) {
		String sql = "insert into admin (first_name,last_name,tel_admin,cni_admin,password) values (?,?,?,?,?)";
		try {
			PreparedStatement prepStatement = DaoFactory.getConnection().prepareStatement(sql);
			
			prepStatement.setString(1, customer.getCniChauffeur());
			prepStatement.setString(2, customer.getTel());
			prepStatement.setString(3, customer.getNomChauffeur());
			prepStatement.setInt(4, customer.getIdChauffeur());
			prepStatement.setString(5, customer.getConnexionId());
			System.out.println("item inserted successfully\n"+customer);
			return prepStatement.executeUpdate()>0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	@Override
	public boolean deleteCustomer(int id) {
		String sql = "delete * from chauffeur where matricule =?";
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
	public Customer editCustomer(int id, Customer customer) {
		String sql = "update admin set cni_Chauffeur = ?,tel_Chauffeur=?,nom_Chauffeur=?,voiture_id_voiture=?, connexion_id=? where id_admin = ? ";
		
		try {
			PreparedStatement prepStatement = DaoFactory.getConnection().prepareStatement(sql);
			prepStatement.setInt(1, customer.getIdChauffeur());
			prepStatement.setString(2, customer.getCniChauffeur());
			prepStatement.setString(3, customer.getTel());
			prepStatement.setString(4, customer.getNomChauffeur());
			prepStatement.setInt(5, customer.getIdChauffeur());
			prepStatement.setString(6, customer.getConnexionId());
			return customer;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return customer;
	}
	
	public Customer getCustomer(String tel, String password) {
		String sql = "select * from chauffeur where tel_Admin = ? AND password = ?";
		
		try {
			PreparedStatement prepStatement = DaoFactory.getConnection().prepareStatement(sql);
			
			prepStatement.setString(1, tel);
			prepStatement.setString(2, password);
			
			ResultSet result = prepStatement.executeQuery();
			
			if(result.next()) {
				Customer customer = new Customer();
//				student.setSdtId(result.getInt(1));
				customer.setIdChauffeur(result.getInt(1));
				customer.setCniChauffeur(result.getString(2));
				customer.setTel(result.getString(3));
				customer.setNomChauffeur(result.getString(4));
				customer.setIdVoiture(result.getInt(5));
				customer.setConnexionId(result.getString(6));
				
				System.out.println(customer.getTel()+" "+customer.getNomChauffeur());
				return customer;
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
	public List<Customer> lister() {
		List<Customer> list = new ArrayList<Customer>();
		String sql = "select * from admin	";
		try {
			PreparedStatement prepStatement = DaoFactory.getConnection().prepareStatement(sql);
			ResultSet result = prepStatement.executeQuery();
			
			System.out.println("Get Admin from database: ");
			while (result.next()) {
				Customer customer = new Customer();
				customer.setIdChauffeur(result.getInt(1));
				customer.setCniChauffeur(result.getString(2));
				customer.setTel(result.getString(3));
				customer.setNomChauffeur(result.getString(4));
				customer.setIdVoiture(result.getInt(5));
				customer.setConnexionId(result.getString(6));
				
				System.out.println("Name : "+customer.getNomChauffeur()+" "+customer.getCniChauffeur());
				list.add(customer);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
