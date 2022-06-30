package com.GPA_services.dao;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.GPA_services.DaoFactory.DaoFactory;
import com.GPA_services.InterfacesDao.ParkingDao;
import com.GPA_services.beans.Parking;


public class ParkingDaoImpl implements ParkingDao {
	@Override
	public boolean ajouter(Parking parking) {
		String sql = "insert into parking (numero,statut) values (?,?)";
		try {
			PreparedStatement prepStatement = DaoFactory.getConnection().prepareStatement(sql);
			
			prepStatement.setInt(1, parking.getNumero());
			prepStatement.setString(2, parking.getStatut());
			int result = prepStatement.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	@Override
	public boolean deleteParking(int id) {
		String sql = "delete from parking where id_Admin =?";
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
	public Parking editParking(Parking parking) {
		String sql = "update parking set numero = ?,statut=? where id_Parking = ? ";
		
		try {
			PreparedStatement prepStatement = DaoFactory.getConnection().prepareStatement(sql);
			prepStatement.setInt(1, parking.getNumero());
			prepStatement.setString(2, parking.getStatut());
			
			int result = prepStatement.executeUpdate();
			System.out.println("parking  mis a jour? "+result);
			
			return parking;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return parking;
	}
	
	public Parking getParking(int num) {
		String sql = "select * from parking where numero = ? AND password = ?";
		
		try {
			PreparedStatement prepStatement = DaoFactory.getConnection().prepareStatement(sql);
			
			prepStatement.setInt(1, num);
			
			ResultSet result = prepStatement.executeQuery();
			
			if(result.next()) {
				Parking parking = new Parking();
				parking.setIdParking(result.getInt(1));
				parking.setNumero(result.getInt(2));
				parking.setStatut(result.getString(3));
				
				System.out.println(parking.getNumero()+" "+parking.getStatut());
				return parking;
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
	public List<Parking> lister() {
		List<Parking> list = new ArrayList<Parking>();
		String sql = "select * from parking	";
		try {
			PreparedStatement prepStatement = DaoFactory.getConnection().prepareStatement(sql);
			ResultSet result = prepStatement.executeQuery();
			
			while (result.next()) {
				Parking parking = new Parking();
				parking.setIdParking(result.getInt(1));
				parking.setNumero(result.getInt(2));
				parking.setStatut(result.getString(3));
				list.add(parking);
				
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
