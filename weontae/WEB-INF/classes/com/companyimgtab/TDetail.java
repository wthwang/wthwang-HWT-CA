package com.companyimgtab;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.companyjava.DBManager;

/**
 * Servlet implementation class BDetail
 */
@WebServlet("/TDetail")
public class TDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out =response.getWriter();
		int ino = Integer.parseInt(request.getParameter("ino"));
		
		int no = Integer.parseInt(request.getParameter("bno"));
		System.out.println(no+"bno");
		
		Connection conn =null;
		Statement stmt=null;
		PreparedStatement pstmt =null;
		ResultSet rest = null;
		
		String sql1="update imgtab"+ino+" set bhit=bhit+1 where bno = ?";
		String sql2="select * from imgtab"+ino+" where bno=?";
		
		String min="SELECT MIN(bno) FROM imgtab"+ino;
		String max="SELECT MAX(bno) FROM imgtab"+ino;
		int minnum = 0;
		int maxnum = 0;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn=new DBManager().getConnection();
			stmt = conn.createStatement();
			rest=stmt.executeQuery("SELECT MIN(bno) FROM imgtab"+ino);
			if(rest.next()) {
				minnum = rest.getInt("MIN(bno)");			
			}
			rest.close();
			stmt.close();
			
			stmt = conn.createStatement();
			rest=stmt.executeQuery("SELECT MAX(bno) FROM imgtab"+ino);
			if(rest.next()) {
				maxnum = rest.getInt("MAX(bno)");			
			}
			rest.close();
			stmt.close();
			
			if(minnum==no) {	request.setAttribute("noprev", "true");}
			if(maxnum==no) {	request.setAttribute("nonext", "true");}
			
			
			pstmt =conn.prepareStatement(sql1);
			pstmt.setInt(1, no);
			int rest1 = pstmt.executeUpdate();
			pstmt.close();
			
			pstmt =conn.prepareStatement(sql2);
			pstmt.setInt(1, no);
			rest = pstmt.executeQuery();
			if(rest.next()) {
				String name=rest.getString("bname");
				String title=rest.getString("btitle");
				String conent=rest.getString("bcontent");
				int hit = rest.getInt("bhit");
				String filename=rest.getString("bfile");
				
				request.setAttribute("bno", no);
				request.setAttribute("bhit", ""+hit);
				request.setAttribute("bname", name);
				request.setAttribute("btitle", title);
				request.setAttribute("bfile", filename);
				request.setAttribute("bcontent", conent.replace("\r\n", "<br>"));
			}

			RequestDispatcher dis = request.getRequestDispatcher("imgtab/detail.jsp?ino="+ino);
			dis.forward(request, response);
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
