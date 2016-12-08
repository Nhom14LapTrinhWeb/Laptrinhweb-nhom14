package controller;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Parser;

import Models.Loaikhoahoc;
import Models.khoahoc;
import dao.khoahocDAO;

/**
 * Servlet implementation class ManagerKhoahocServlet
 */
@WebServlet("/ManagerKhoahocServlet")
public class ManagerKhoahocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     khoahocDAO khdao = new khoahocDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerKhoahocServlet() {
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
		String Makhoahoc=request.getParameter("MaKH");
		String vaitro=request.getParameter("vaitro");
		String url="";
		try
		{
			switch(command)
			{
			case "delete":
				if(vaitro=="VT03")
				{
					khdao.XoaKhoaHoc(Makhoahoc);
					url="/quantrivien.jsp";
				}
				else
				{
					khdao.XoaKhoaHoc(Makhoahoc);
					url="/giangvien.jsp";
				}
				break;
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		RequestDispatcher rd =getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		String command =request.getParameter("command");
		String makh =request.getParameter("makhoahoc");
		String tenkh =request.getParameter("tenkhoahoc");
		int hocphi =Integer.parseInt(request.getParameter("hocphi"));
		String lichhoc = request.getParameter("lichhoc");
		Date thoigianmo = Date.valueOf(request.getParameter("thoigianmo"));
		Date thoigianketthuc = Date.valueOf(request.getParameter("thoigianketthuc"));
		String tengiangvien =request.getParameter("tengiangvien");
		String mangonngu =request.getParameter("mangonngu");
		String mota =request.getParameter("mota");
		String hinhanh =request.getParameter("hinhanh");
		String loaikhoahoc =request.getParameter("loaikhoahoc");
		String video =request.getParameter("video");
		String tinhtrang =request.getParameter("tinhtrang");
		String vaitro1=request.getParameter("vaitro");
		String url="";String error="";
		if(tenkh=="" || makh=="" )
		{
			error="Nhap day du thong tin";
			request.setAttribute("error", error);
		}
		try
		{
			if(error.length()==0)
			{
				switch(command)
				{
				case "insert":
					if(vaitro1.equals("VT03"))
					{
						khdao.InsertKhoaHoc(new khoahoc(makh,tenkh,hocphi,lichhoc,thoigianmo,thoigianketthuc,tengiangvien,mangonngu,mota,hinhanh,loaikhoahoc,video,tinhtrang));
						url="/quantrivien.jsp";
						break;
					}
					else
					{
						khdao.InsertKhoaHoc(new khoahoc(makh,tenkh,hocphi,lichhoc,thoigianmo,thoigianketthuc,tengiangvien,mangonngu,mota,hinhanh,loaikhoahoc,video,tinhtrang));
						url="/giangvien.jsp";
						break;
					}
					
				case "update":
					if(vaitro1.equals("VT03"))
					{
						khdao.SuaKhoaHoc(new khoahoc(makh,tenkh,hocphi,lichhoc,thoigianmo,thoigianketthuc,tengiangvien,mangonngu,mota,hinhanh,loaikhoahoc,video,tinhtrang));
						url="/quantrivien.jsp";
						break;
					}
					else
					{
						khdao.SuaKhoaHoc(new khoahoc(makh,tenkh,hocphi,lichhoc,thoigianmo,thoigianketthuc,tengiangvien,mangonngu,mota,hinhanh,loaikhoahoc,video,tinhtrang));
						url="/giangvien.jsp";
						break;
					}
					
				}
				
			}
		}catch(Exception e)
		{
			
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}