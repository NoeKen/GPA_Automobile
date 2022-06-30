package com.GPA_services.services;

import java.io.IOException;
import java.sql.SQLException;

import com.GPA_services.beans.Admin;
import com.GPA_services.dao.AdminDaoImpl;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminServices {
	

	private void register(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
		Admin admin = new Admin();
		//			String id = request.getParameter("id");
//				admin.setAvatar(req)
		admin.setFirstName(request.getParameter("firstName"));
		admin.setLastName(request.getParameter("lastName"));
		admin.setTel(request.getParameter("tel"));
		admin.setCNI(request.getParameter("cni"));
		admin.setPassword(request.getParameter("password"));
		admin.setEmail(request.getParameter("email"));
		admin.setUsername(request.getParameter("userName"));
		
		AdminDaoImpl adminDaoImpl = new AdminDaoImpl();
		Boolean result = adminDaoImpl.ajouter(admin);
		System.out.println("Admin ajoute ? "+ result);
		//			this.setPage("displayClient.js");
		//		adminDaoImpl.editAmin(Integer.parseInt(id), admin);
		response.sendRedirect("http://localhost:8080/GPA_Automobile/Welcome?page=usermanagement");
	}
	
	private void deleteAdmin(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
		AdminDaoImpl adminDaoImpl = new AdminDaoImpl();
		boolean result = adminDaoImpl.deleteAdmin(Integer.parseInt(request.getParameter("idAdmin")));
		System.out.println("L'admin : "+ request.getParameter("idAdmin")+"a bien ete supprime? "+result);
		response.sendRedirect("http://localhost:8080/GPA_Automobile/Welcome?page=usermanagement");
	}
	
	private void updateAdmin(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
		Admin admin = new Admin();
		//			String id = request.getParameter("id");
//				admin.setAvatar(req)
		admin.setFirstName(request.getParameter("firstName"));
		admin.setLastName(request.getParameter("lastName"));
		admin.setTel(request.getParameter("tel"));
		admin.setCNI(request.getParameter("cni"));
		admin.setPassword(request.getParameter("password"));
		admin.setEmail(request.getParameter("email"));
		admin.setUsername(request.getParameter("userName"));
		
		AdminDaoImpl adminDaoImpl = new AdminDaoImpl();
		Admin result = adminDaoImpl.editAmin(admin);
		System.out.println("Admin mis a jour ? "+ result.getUsername()+" "+result.getEmail());
		//			this.setPage("displayClient.js");
		//		adminDaoImpl.editAmin(Integer.parseInt(id), admin);
		response.sendRedirect("http://localhost:8080/GPA_Automobile/Welcome?page=usermanagement");
	}
}
