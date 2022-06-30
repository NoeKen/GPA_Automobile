package com.GPA_services.services;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.GPA_services.beans.Parking;
import com.GPA_services.dao.ParkingDaoImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ParkingServices {
	protected void listParking(HttpServletRequest request, HttpServletResponse response, String route) throws ServletException, IOException {
		ParkingDaoImpl parkingDaoImpl = new ParkingDaoImpl();
		List<Parking> parkings = new ArrayList<Parking>();
		parkings = parkingDaoImpl.lister();
		request.setAttribute("parkings", parkings);
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//		this.getServletContext().getRequestDispatcher("/pages/"+route).forward(request, response);
		response.sendRedirect("http://http://localhost:8080/GPA_Automobile/Welcome?page=parkingslot");
		}
	
	private void create(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
		Parking parking = new Parking();
		parking.setNumero(Integer.parseInt(request.getParameter("numero")));
		parking.setStatut(request.getParameter("statut"));
		
		ParkingDaoImpl parkiparking = new ParkingDaoImpl();
		Boolean result = parkiparking.ajouter(parking);
		System.out.println("Parking ajoute ? "+ result);
		response.sendRedirect("http://http://localhost:8080/GPA_Automobile/Welcome?page=parkingslot");
	}
	
	private void deleteParking(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
		ParkingDaoImpl parkingDaoImpl = new ParkingDaoImpl();
		boolean result = parkingDaoImpl.deleteParking(Integer.parseInt(request.getParameter("idAdmin")));
		System.out.println("L'admin : "+ request.getParameter("idAdmin")+"a bien ete supprime? "+result);
		response.sendRedirect("http://localhost:8080/GPA_Automobile/Welcome?page=usermanagement");
	}
	
	private void updateParking(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
		Parking parking = new Parking();
		
		parking.setNumero(Integer.parseInt(request.getParameter("numero")));
		parking.setStatut(request.getParameter("statut"));
		
		ParkingDaoImpl parkingDaoImpl = new ParkingDaoImpl();
		Parking result = parkingDaoImpl.editParking(parking);
		System.out.println("Admin mis a jour ? "+ result.getNumero()+" "+result.getStatut());
		//			this.setPage("displayClient.js");
		//		adminDaoImpl.editAmin(Integer.parseInt(id), admin);
		response.sendRedirect("http://http://localhost:8080/GPA_Automobile/Welcome?page=parkingslot");
	}
}
