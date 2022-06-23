package com.GPA_services.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.GPA_services.beans.Admin;
import com.GPA_services.dao.AdminDaoImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Welcome
 */
public class Welcome extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String page = "register.jsp";

	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Welcome() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		System.out.println("page: "+page);
		if(page==null) {
			this.getServletContext().getRequestDispatcher("/pages/index.jsp").forward(request, response);
		}
		else if(page.equals("dashboard")) {	
			
			listAdmins(request, response, "Admin/dashboard.jsp");
		}
		else if(page.equals("booking")) {
			this.getServletContext().getRequestDispatcher("/pages/Admin/booking.jsp").forward(request, response);
		}
		else if(page.equals("owenermanagement")) {
			this.getServletContext().getRequestDispatcher("/pages/Admin/owenermanagement.jsp").forward(request, response);
		}
		else if(page.equals("owenermanagement")) {
			this.getServletContext().getRequestDispatcher("/pages/Admin/owenermanagement.jsp").forward(request, response);
		}
		else if(page.equals("informationmanagement")) {
			this.getServletContext().getRequestDispatcher("/pages/Admin/informationmanagement.jsp").forward(request, response);
		}
		else if(page.equals("parkingslot")) {
			this.getServletContext().getRequestDispatcher("/pages/Admin/parkingslot.jsp").forward(request, response);
		}
		else if(page.equals("payment")) {
			this.getServletContext().getRequestDispatcher("/pages/Admin/payment.jsp").forward(request, response);
		}
		else if(page.equals("usermanagement")) {
			this.getServletContext().getRequestDispatcher("/pages/Admin/usermanagement.jsp").forward(request, response);
		}
		else if(page.equals("category")) {
			this.getServletContext().getRequestDispatcher("/pages/Admin/category.jsp").forward(request, response);
		}
		else if(page.equals("usergroup")) {
			this.getServletContext().getRequestDispatcher("/pages/Admin/usergroup.jsp").forward(request, response);
		}
		else if(page.equals("owenermanagement")) {
			this.getServletContext().getRequestDispatcher("/pages/Admin/owenermanagement.jsp").forward(request, response);
		}
		else if(page.equals("owenermanagement")) {
			this.getServletContext().getRequestDispatcher("/pages/Admin/owenermanagement.jsp").forward(request, response);
		}
		else if(page.equals("owenermanagement")) {
			this.getServletContext().getRequestDispatcher("/pages/Admin/owenermanagement.jsp").forward(request, response);
		}
		else if(page.equals("owenermanagement")) {
			this.getServletContext().getRequestDispatcher("/pages/Admin/owenermanagement.jsp").forward(request, response);
		}
		else if(page.equals("owenermanagement")) {
			this.getServletContext().getRequestDispatcher("/pages/Admin/owenermanagement.jsp").forward(request, response);
		}
		else 
			listAdmins(request, response, "index.jsp");
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Admin admin = new Admin();
		try {
//			String id = request.getParameter("id");
			admin.setFirstName(request.getParameter("firstname"));
			admin.setLastName(request.getParameter("lastname"));
			admin.setTel(request.getParameter("tel"));
			admin.setCNI(request.getParameter("cni"));
			admin.setPassword(request.getParameter("password"));
			AdminDaoImpl adminDaoImpl = new AdminDaoImpl();
			adminDaoImpl.ajouter(admin);
			this.setPage("displayClient.js");
//		adminDaoImpl.editAmin(Integer.parseInt(id), admin);
			listAdmins(request, response, page);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
//		doGet(request, response);
	}
	
	protected void listAdmins(HttpServletRequest request, HttpServletResponse response, String route) throws ServletException, IOException {
		AdminDaoImpl adminDaoImpl = new AdminDaoImpl();
		List<Admin> admins = new ArrayList<Admin>();
		admins = adminDaoImpl .lister();
		request.setAttribute("admins", admins);
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		this.getServletContext().getRequestDispatcher("/pages/"+route).forward(request, response);
	}

}
