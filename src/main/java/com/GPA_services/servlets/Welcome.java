package com.GPA_services.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.GPA_services.beans.Admin;
import com.GPA_services.dao.AdminDaoImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class Welcome
 */
public class Welcome extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession session = null;
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
		String login = request.getParameter("login");
		System.out.println("page: "+page);
		System.out.println("page: "+login);
//		if (session == null) {
////			response.sendRedirect("http://localhost:8080/GPA_Automobile/Welcome?page=login");
//			this.getServletContext().getRequestDispatcher("/pages/index.jsp").forward(request, response);
//		}
//		else {
			if(page==null) {
				this.getServletContext().getRequestDispatcher("/pages/index.jsp").forward(request, response);
			}
			else if(page.equals("dashboard")) {	
	//			this.getServletContext().getRequestDispatcher("/pages/Admin/dashboard.jsp").forward(request, response);
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
				listAdmins(request, response, "Admin/usermanagement.jsp");
	//			this.getServletContext().getRequestDispatcher("/pages/Admin/usermanagement.jsp").forward(request, response);
			}
			else if(page.equals("category")) {
				this.getServletContext().getRequestDispatcher("/pages/Admin/category.jsp").forward(request, response);
			}
			else if(page.equals("usergroup")) {
				this.getServletContext().getRequestDispatcher("/pages/Admin/usergroup.jsp").forward(request, response);
			}
			else if(page.equals("login")) {
				this.getServletContext().getRequestDispatcher("/pages/index.jsp").forward(request, response);
			}
			else if(page.equals("index")) {
				try {
					logOut(request, response);
				} catch (SQLException e) {
					e.printStackTrace();
				}
//			}
		}
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getServletPath();
		System.out.println("Servlet Path: "+ path);
		
		try {
			updateAdmin(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		try {
//			deleteAdmin(request, response);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
//		if(password != null) {
//				try {
//					login(request, response);
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//			}
//		else {
			
			//			listAdmins(request, response, page);	
//		}
		
//		try {
//			register(request, response);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
	}
	
	protected void listAdmins(HttpServletRequest request, HttpServletResponse response, String route) throws ServletException, IOException {
		AdminDaoImpl adminDaoImpl = new AdminDaoImpl();
		List<Admin> admins = new ArrayList<Admin>();
		admins = adminDaoImpl .lister();
		request.setAttribute("admins", admins);
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		this.getServletContext().getRequestDispatcher("/pages/"+route).forward(request, response);
	}
	private void login(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		Admin admin = new Admin();
		this.session = request.getSession();
		AdminDaoImpl adminDaoImpl = new AdminDaoImpl();
		admin = adminDaoImpl.getAdmin(request.getParameter("tel"),request.getParameter("password"));
		if(admin != null) {

		        session.setAttribute("admin", admin);
		        session.setAttribute("prenom", admin.getLastName());
		        session.setAttribute("tel", admin.getTel());
		        session.setAttribute("cni", admin.getCNI());
		        session.setAttribute("userName", admin.getUsername());
		        
			request.setAttribute("admins", admin);
			System.out.println("userName: "+admin.getFirstName());
			System.out.println("admin Connected, sessions: "+ session.getAttribute("userName") );
			response.sendRedirect("http://localhost:8080/GPA_Automobile/Welcome?page=dashboard");
		}
		else System.out.println("Credential don match our record");
	}
	
private void logOut(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
		session = null;
		response.sendRedirect("http://localhost:8080/GPA_Automobile/Welcome");
	}
	
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
