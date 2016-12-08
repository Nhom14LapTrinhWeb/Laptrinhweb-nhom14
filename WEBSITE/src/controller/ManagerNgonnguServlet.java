package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.ngonngu;
import Models.thongbao;
import dao.ngonnguDAO;

/**
 * Servlet implementation class ManagerNgonnguServlet
 */
@WebServlet("/ManagerNgonnguServlet")
public class ManagerNgonnguServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       ngonnguDAO nndao = new ngonnguDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerNgonnguServlet() {
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
		String mangonngu=request.getParameter("MaNN");
		switch (command) {
		case "delete":
			nndao.XoaNgonNgu(mangonngu);
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
		request.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		String mangonngu =request.getParameter("mangonngu");
		String tenngonngu =request.getParameter("tenngonngu");
		String url="";String error="";
		switch (command) {
		case "insert":
			nndao.ThemNgonNgu(new ngonngu(mangonngu, tenngonngu));
			url ="/quantrivien.jsp";
			break;
		case "update":
			nndao.SuaNgonNgu(new ngonngu(mangonngu, tenngonngu));
			url ="/quantrivien.jsp";
			break;
		default:
			break;
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
