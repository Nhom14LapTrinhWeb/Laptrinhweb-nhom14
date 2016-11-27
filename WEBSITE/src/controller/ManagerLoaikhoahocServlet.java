package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.Loaikhoahoc;
import dao.LoaikhoahocDAO;

/**
 * Servlet implementation class ManagerLoaikhoahocServlet
 */
@WebServlet("/ManagerLoaikhoahocServlet")
public class ManagerLoaikhoahocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     LoaikhoahocDAO lkhdao = new LoaikhoahocDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerLoaikhoahocServlet() {
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
		String maloai =request.getParameter("LoaiKH");
		String url="";
		try
		{
				switch(command)
				{
				case "delete":
					lkhdao.XoaLoaiKhoaHoc(maloai);
					url="/quantrivien.jsp";
					break;
				}
		}catch(Exception e)
		{
			
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
		String maloai =request.getParameter("maloai");
		String tenloai =request.getParameter("tenloai");
		String url="";String error="";
		if(maloai=="" || tenloai=="")
		{
			error="vui lòng nhập đầy đủ thông tin";
			request.setAttribute("error", error);
		}
		try
		{
			if(error.length()==0)
			{
				switch(command)
				{
				case "insert":
					lkhdao.ThemLoaiKhoaHoc(new Loaikhoahoc(maloai,tenloai));
					url="/quantrivien.jsp";
					break;
				case "update":
					lkhdao.SuaLoaiKhoaHoc(new Loaikhoahoc(request.getParameter("maloai1"),request.getParameter("tenloai1")));
					url="/quantrivien.jsp";
					break;
				}
				
			}
			else if(command=="insert")
			{
				url="/themloaikhoahoc.jsp";
			}
			else
			{
				url="/quantrivien.jsp";
			}
		}catch(Exception e)
		{
			
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
