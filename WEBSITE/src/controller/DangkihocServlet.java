package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.dangkihocDAO;
import Models.Loaikhoahoc;
import Models.Users;
import Models.dangkihoc;

/**
 * Servlet implementation class DangkihocServlet
 */
@WebServlet("/DangkihocServlet")
public class DangkihocServlet extends HttpServlet {
	dangkihocDAO dkdao=new dangkihocDAO();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangkihocServlet() {
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
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		String command = request.getParameter("command");
		String url="";String error="";
		dangkihoc dk = new dangkihoc();
		try
		{
			if(error.length()==0)
			{
				switch(command)
				{
				case "insert":
					dk.setTentaikhoan(request.getParameter("username"));
					dk.setMakhoahoc(request.getParameter("makhoahoc"));
					dk.setDiemtong(0);
					dk.setTrangthai("Wait");
					dk.setTinhtranghocphi(0);
					dkdao.ThemDangKiHoc(dk);
					url="/hocvien.jsp";
					break;
				}
				
			}
		}catch(Exception e)
		{
			
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
		
	}
}

