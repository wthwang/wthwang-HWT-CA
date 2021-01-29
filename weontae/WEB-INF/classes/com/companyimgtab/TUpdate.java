package com.companyimgtab;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.companyjava.DBManager;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class BUpdate
 */
@WebServlet("/TUpdate")
public class TUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TUpdate() {
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
		
		String fileName=null;
		
		int uploadFileSizeLimit = 5 * 1024 * 1024;
		String encType = "UTF-8";
		
		//String uploadFilePath = "C:\\upload";
		String savePath = "/upload/";
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		System.out.println(uploadFilePath);	
		
		MultipartRequest multi = new MultipartRequest(
				request, 	//요청객체
				uploadFilePath, // 서버상의 실제 디렉토리
				uploadFileSizeLimit, // 최대 업로드 파일 크기
				encType, // 인코딩 방법
				new DefaultFileRenamePolicy() //같은 이름파일시 새로운 이름 부여하라고 지정
				);
		fileName=multi.getFilesystemName("fileupload");
		if(fileName==null) {
			System.out.println("파일 업로드 되지 않음");
			fileName = multi.getParameter("filename");
		}else {System.out.println("파일 업로드 됨");}
		
		int bno  = Integer.parseInt(multi.getParameter("bno"));
		String title = multi.getParameter("title");
		String conent = multi.getParameter("input");
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rest=null;
		String sql = ("select*from imgtab"+ino+" where bno = ?");
		String sql2= ("update imgtab"+ino+" set bhit=bhit-1, btitle=? , bcontent=?,bfile=? where bno=?");
		String bpass = "";
		String name = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=new DBManager().getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			rest=pstmt.executeQuery();
			rest.close();
			pstmt.close();
			
				pstmt = conn.prepareStatement(sql2);
				pstmt.setString(1,title );
				pstmt.setString(2,conent );
				pstmt.setString(3, fileName);
				pstmt.setInt(4,bno );
				int rest2 =pstmt.executeUpdate();
				response.sendRedirect("TDetail?bno="+bno+"&result=" + rest2+"&&ino="+ino);
				
			
		}catch(Exception e) {e.printStackTrace();
		}finally{
			try{
				if(pstmt != null){pstmt.close();}
				if(conn != null){conn.close();}
			}catch(Exception e){e.printStackTrace();}
		}
		
		
	}

}
