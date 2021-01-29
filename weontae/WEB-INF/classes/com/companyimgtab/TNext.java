package com.companyimgtab;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.companyjava.DBManager;

@WebServlet("/TNext")
public class TNext extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TNext() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		int ino = Integer.parseInt(request.getParameter("ino"));
		
		int bno = Integer.parseInt(request.getParameter("bno"));
		System.out.println(bno);
		
		Connection conn =null;
		PreparedStatement pstmt =null;
		ResultSet rest = null;
		String sql="select*from imgtab"+ino+" where  bno > ? order by bno  asc limit 1;";
		//String sql="select bno from mvc1board1 where  bno > ? order by bno desc limit 1;";
		//int bno1=0;
		int bno1 =-1;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn=new DBManager().getConnection();
			pstmt =conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			rest = pstmt.executeQuery();
			
			if(rest.next()) {
				bno1 = rest.getInt("bno");
				response.sendRedirect("TDetail?bno="+bno1+"&&ino="+ino);
			}
			else {response.sendRedirect("TDetail?bno="+bno+"&&ino="+ino);}
		}catch(Exception e) {e.printStackTrace();
		}finally{
			if(rest !=null) {try {rest.close();} catch (SQLException e) {e.printStackTrace();}	}
			if(pstmt !=null) {try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}	}
			if(conn !=null) {try {conn.close();} catch (SQLException e) {e.printStackTrace();}	}
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
