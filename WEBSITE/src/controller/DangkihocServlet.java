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
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		String command = request.getParameter("command");
		String vaitro=request.getParameter("vaitro");
		String url="";String error="";
		dangkihoc dk = new dangkihoc();
		switch (command) {
		case "huy":
			dk.setTentaikhoan(request.getParameter("TenTK"));
			dk.setMakhoahoc(request.getParameter("MaKH"));
			dk.setTrangthai(0);
			try
			{
				dkdao.HuyThamGia(dk);
				url="/quantrivien.jsp";
			}catch(Exception e)
			{
				
			}
			
			break;
		case "delete":
			String Tentk=request.getParameter("TenTK");
			String Makh=request.getParameter("MaKH");
			dkdao.XoaThamGia(Tentk, Makh);
			if(vaitro.equals("VT03"))
			{
				
				url="/quantrivien.jsp";
			}
			else
			{
				url="/hocvien.jsp";
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
					dk.setTrangthai(1);
					dk.setTinhtranghocphi(0);
					dkdao.ThemDangKiHoc(dk);
					url="/hocvien.jsp";
					break;
				case "insert1":
					dk.setTentaikhoan(request.getParameter("tentaikhoan"));
					dk.setMakhoahoc(request.getParameter("makhoahoc"));
					dk.setDiemtong(0);
					dk.setTinhtranghocphi(Integer.parseInt(request.getParameter("tinhtranghocphi")));
					dk.setTrangthai(Integer.parseInt(request.getParameter("trangthai")));
					
					dkdao.ThemDangKiHoc(dk);
					url="/quantrivien.jsp";
					break;
				case "update":
					dk.setTentaikhoan(request.getParameter("tentaikhoan"));
					dk.setMakhoahoc(request.getParameter("makhoahoc"));
					dk.setDiemtong(Float.parseFloat(request.getParameter("diem")));
					dk.setTinhtranghocphi(Integer.parseInt(request.getParameter("tinhtranghocphi")));
					dk.setTrangthai(Integer.parseInt(request.getParameter("trangthai")));
					
					dkdao.SuaThamGia(dk);
					url="/quantrivien.jsp";
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

