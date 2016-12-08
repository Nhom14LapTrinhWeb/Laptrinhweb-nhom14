package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.loaitailieu;
import Models.thongbao;
import dao.thongbaoDAO;

/**
 * Servlet implementation class ManagerThongbaoServlet
 */
@WebServlet("/ManagerThongbaoServlet")
public class ManagerThongbaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    thongbaoDAO tbdao = new thongbaoDAO();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerThongbaoServlet() {
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
		String mathongbao=request.getParameter("MaTB");
		switch (command) {
		case "delete":
			tbdao.XoaLoaiTaiLieu(mathongbao);
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
		String mathongbao =request.getParameter("mathongbao");
		String tenthongbao =request.getParameter("tenthongbao");
		String noidung =request.getParameter("noidung");
		String url="";String error="";
		switch (command) {
		case "insert":
			tbdao.ThemThongBao(new thongbao(mathongbao, tenthongbao, noidung));
			url ="/quantrivien.jsp";
			break;
		case "update":
			tbdao.SuaThongBao(new thongbao(mathongbao, tenthongbao, noidung));
			url ="/quantrivien.jsp";
			break;
		default:
			break;
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
