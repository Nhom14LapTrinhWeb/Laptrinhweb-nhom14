package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.loaitailieu;
import Models.tailieu;
import dao.tailieuDAO;

/**
 * Servlet implementation class ManagerTailieuServlet
 */
@WebServlet("/ManagerTailieuServlet")
public class ManagerTailieuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      tailieuDAO tldao = new tailieuDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerTailieuServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		String url="";
		String command =request.getParameter("command");
		String Matl=request.getParameter("Matl");
		String vaitro=request.getParameter("vaitro");
		switch (command) {
		case "delete":
			tldao.XoaTaiLieu(Matl);
			if(vaitro.equals("VT03"))
			{
				url="/quantrivien.jsp";
			}
			else
			{
				url="/giangvien.jsp";
			}
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
		String vaitro=request.getParameter("vaitro");
		
		String command = request.getParameter("command");
		String matl =request.getParameter("matailieu");
		String tentl =request.getParameter("tentailieu");
		String link =request.getParameter("link");
		String loaitl =request.getParameter("loaitailieu");
		String makhoahoc =request.getParameter("makhoahoc");
		String url="";String error="";
		switch (command) {
		case "insert":
			tldao.ThemTaiLieu(new tailieu(matl,tentl,link,loaitl,makhoahoc));
			if(vaitro.equals("VT03"))
			{
				url="/quantrivien.jsp";
			}
			else
			{
				url="/giangvien.jsp";
			}
			break;
		case "update":
			tldao.SuaTaiLieu(new tailieu(matl,tentl,link,loaitl,makhoahoc));
			if(vaitro.equals("VT03"))
			{
				url="/quantrivien.jsp";
			}
			else
			{
				url="/giangvien.jsp";
			}
			break;
		default:
			break;
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
