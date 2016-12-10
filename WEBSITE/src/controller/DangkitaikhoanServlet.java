package controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Models.Users;
import dao.UsersDAO;

/**
 * Servlet implementation class DangkitaikhoanServlet
 */
@WebServlet("/DangkitaikhoanServlet")
public class DangkitaikhoanServlet extends HttpServlet {
	UsersDAO userdao = new UsersDAO();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangkitaikhoanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		String url="";
		Users user = new Users();
		switch (command) {
		case "insert":
			user.setTentaikhoan(request.getParameter("username"));
			user.setHoten(request.getParameter("hoten"));
			user.setEmail(request.getParameter("email"));
			user.setSDT(request.getParameter("sdt"));
			user.setMatkhau(request.getParameter("password"));
			user.setMavaitro("VT01");
			if(userdao.InsertUser(user))
			{
				userdao.InsertUser(user);
				//response.sendRedirect("index.jsp");
				HttpSession session =request.getSession();
				session.setAttribute("user", user);
				url="/index.jsp";
				
			}
			else
			{
				url="/dangki.jsp";
			}
			
			break;
		default:
			break;
		}
		RequestDispatcher rd =getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}
	
}
