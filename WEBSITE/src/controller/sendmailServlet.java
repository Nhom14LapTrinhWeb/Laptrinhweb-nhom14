package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.rmi.server.Dispatcher;
import tools.sendmail;

/**
 * Servlet implementation class sendmailServlet
 */
@WebServlet("/sendmailServlet")
public class sendmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sendmailServlet() {
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
	@SuppressWarnings("static-access")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 sendmail sm = new sendmail();
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		String Email= request.getParameter("email");
		String tieude= request.getParameter("tieude");
		String noidung= request.getParameter("noidung");
		String sdt= request.getParameter("sdt");
		String hoten= request.getParameter("hoten");
		String url="";
		sm.sendMail("huynhphihung1995@gmail.com", "hhhh","gggggg");
		url="/index.jsp";
		RequestDispatcher rd =getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}