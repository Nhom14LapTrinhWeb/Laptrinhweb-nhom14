package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsersDAO;

/**
 * Servlet implementation class CheckUsernameServlet
 */
@WebServlet("/CheckUsernameServlet")
public class CheckUsernameServlet extends HttpServlet {
	UsersDAO userdao = new UsersDAO();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckUsernameServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Ten =request.getParameter("username");
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		response.getWriter().write("");
		if (userdao.checkTentaikhoan(Ten)) {
			
	          response.getWriter().write("<img src=\"icon/not-available.png\" />");
	          response.getWriter().write("  <b style=\"color:red;\">Tài khoản này đã tồn tại</b>");
	     } 
		else
		{
	          response.getWriter().write("<img src=\"icon/available.png\" />");
	          response.getWriter().write("  <b style=\"color:green;\">Bạn có thể sử dụng tài khoản này</b>");
	     }	
		
	}

}
