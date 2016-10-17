package DayLaNhom14;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Loginform
 */
@WebServlet("/Loginform")
public class Loginform extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 public Loginform() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String user = request.getParameter("inputUserName");
		String pass =request.getParameter("inputPassword");
		
		
		if(ConnectDB.Login(user, pass))
		{
			response.sendRedirect("tinhan.jsp");
		}
		else
		{
			response.sendRedirect("huongdansd.html");
		}
	}

}
