package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.loaitailieu;
import dao.loaitailieuDAO;

/**
 * Servlet implementation class ManagerLoaitailieuServlet
 */
@WebServlet("/ManagerLoaitailieuServlet")
public class ManagerLoaitailieuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     loaitailieuDAO ltldao = new loaitailieuDAO();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerLoaitailieuServlet() {
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
		String Maloai=request.getParameter("Maloai");
		switch (command) {
		case "delete":
			ltldao.XoaLoaiTaiLieu(Maloai);
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
		String command = request.getParameter("command");
		String maloai =request.getParameter("maloai");
		String tenloai =request.getParameter("tenloai");
		String mota =request.getParameter("mota");
		String url="";String error="";
		switch (command) {
		case "insert":
			ltldao.ThemLoaiTaiLieu(new loaitailieu(maloai,tenloai,mota));
			url ="/quantrivien.jsp";
			break;
		case "update":
			ltldao.SuaLoaiTaiLieu(new loaitailieu(maloai,tenloai,mota));
			url ="/quantrivien.jsp";
			break;
		default:
			break;
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
