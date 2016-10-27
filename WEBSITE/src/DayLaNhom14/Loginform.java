package DayLaNhom14;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Loginform
 */
@WebServlet("/Loginform")
public class Loginform extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginform() {
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
		// TODO Auto-generated method stub
		String user = request.getParameter("inputUserName");
		String pass =request.getParameter("inputPassword");
		String quyen=request.getParameter("quyen");
		HttpSession session = null;
		User objUser = null;
		if(quyen.equals("hocvien"))
		{
			if(ConnectDB.LoginHV(user, pass))
			{
				objUser = new User();
				objUser.setUsername(user);
				session = request.getSession();
				session.setAttribute("userLogin", objUser);
				response.sendRedirect("hocvien.jsp");
			}
			else
			{
				response.sendRedirect("index.jsp");
			}
			
		}
		if(quyen.equals("giangvien"))
		{
			if(ConnectDB.LoginGV(user, pass))
			{
<<<<<<< HEAD
				/*ServletRequest session = null;
				session.setAttribute("TentaikhoanHV",user);*/
				response.sendRedirect("dangkimokhoahoc.jsp");
			}
			else
			{
				response.sendRedirect("index.jsp");
			}
		}
		if(quyen.equals("admin"))
		{
			if(ConnectDB.LoginAd(user, pass))
			{
				/*ServletRequest session = null;
				session.setAttribute("TentaikhoanHV",user);*/
=======
				objUser = new User();
				objUser.setUsername(user);
				session = request.getSession();
				session.setAttribute("userLogin", objUser);
>>>>>>> 7582d3310b2c92be86a39a98fc076180097f5ce0
				response.sendRedirect("quantrivien.jsp");
			}
			else
			{
				response.sendRedirect("index.jsp");
			}
		}
	}

}
