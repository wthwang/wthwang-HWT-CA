package com.companyimgtab;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.companyjava.DBManager;

/**
 * Servlet implementation class Bmodify
 */
@WebServlet("/Tmodify")
public class TModify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TModify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("서블릿");
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out =response.getWriter();
		int ino = Integer.parseInt(request.getParameter("ino"));
		
		int bno  = Integer.parseInt(request.getParameter("bno"));
		out.print(bno);
		Connection conn=null;
		PreparedStatement pstmt =null;
		ResultSet rest=null;
		String sql  =("select*from imgtab"+ino+" where bno = ?");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=new DBManager().getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			rest=pstmt.executeQuery();
			if(rest.next()) {
				int hit = rest.getInt("bhit");
				String name=rest.getString("bname");
				String title=rest.getString("btitle");
				String conent=rest.getString("bcontent");
				String filename=rest.getString("bfile");
				
				
				
				request.setAttribute("bno", bno);
				request.setAttribute("bhit", ""+hit);
				request.setAttribute("bname", name);
				request.setAttribute("btitle", title);
				request.setAttribute("bfile", filename);
				request.setAttribute("bcontent", conent.replace("\r\n", "<br>"));
			}
			RequestDispatcher dis=request.getRequestDispatcher("imgtab/modify.jsp?ino="+ino);
			dis.forward(request, response);
		}catch(Exception e) {e.printStackTrace();}
		finally{
			if(rest !=null) {try {rest.close();} catch (SQLException e) {e.printStackTrace();}	}
			if(pstmt !=null) {try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}	}
			if(conn !=null) {try {conn.close();} catch (SQLException e) {e.printStackTrace();}	}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
