package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.Users;
import dao.UsersDAO;

/**
 * Servlet implementation class ManagerUsersServlet
 */
@WebServlet("/ManagerUsersServlet")
public class ManagerUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       UsersDAO userdao = new UsersDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerUsersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		String command =request.getParameter("command");
		String tentk =request.getParameter("TenTK");
		String  url="";
		switch (command) {
		case "delete":
			userdao.Delete(tentk);
			url="/quantrivien.jsp";
			break;

		default:
			break;
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		String command =request.getParameter("command");
		String  url="";
		String tentk =request.getParameter("username");
		String password =request.getParameter("password");
		String email =request.getParameter("email");
		String hoten =request.getParameter("hoten");
		String sdt =request.getParameter("sdt");
		
		String diachi =request.getParameter("diachi");
		String vaitro =request.getParameter("vaitro");
		String error ="";
		switch (command) {
		case "update":
			Date ngaysinh =Date.valueOf(request.getParameter("ngaysinh"));
			if(userdao.EditUsers(new Users(tentk,email,password,vaitro,hoten,sdt,ngaysinh,diachi)))
			{
				userdao.EditUsers(new Users(tentk,email,password,vaitro,hoten,sdt,ngaysinh,diachi));
				url="/quantrivien.jsp";
			}
			else
			{
				error="Failed!!";
				request.setAttribute("error",error);
				url="/quantrivien.jsp";
			}
			
			break;
		case "quyen":
			userdao.SetQuyen(tentk, vaitro);
			url="/quantrivien.jsp";
		default:
			break;
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
