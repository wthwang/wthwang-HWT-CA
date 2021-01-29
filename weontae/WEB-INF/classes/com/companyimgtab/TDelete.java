package com.companyimgtab;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.companyjava.DBManager;


/**
 * Servlet implementation class BDelete
 */
@WebServlet("/TDelete")
public class TDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out =response.getWriter();
		int ino = Integer.parseInt(request.getParameter("ino"));
		
		String no  = request.getParameter("bno");
		int bno = Integer.parseInt(no);
		out.print(bno);
		
		Connection conn  = null;
		PreparedStatement pstmt = null;
		ResultSet rest  = null;
		
		String sql2  = "delete from imgtab"+ino+" where bno=?";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=new DBManager().getConnection();
			
				pstmt=conn.prepareStatement(sql2);
				pstmt.setInt(1, bno);
				int rest2 = pstmt.executeUpdate();
				response.sendRedirect("imgtab/list.jsp?result2=" + rest2+"&&ino="+ino);
			
		} catch (Exception e) {e.printStackTrace();
		}finally{
			try{if(rest!=null) {rest.close();}
				if(pstmt != null){pstmt.close();}
				if(conn != null){conn.close();}
			}catch(Exception e){e.printStackTrace();}
		}
	}

}
