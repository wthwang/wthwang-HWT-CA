package com.companyimgtab;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.companyjava.DBManager;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


/**
 * Servlet implementation class write_ser
 */
@WebServlet("/Twrite")
public class Twrite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Twrite() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out =response.getWriter();
		int ino = Integer.parseInt(request.getParameter("ino"));
		HttpSession session = request.getSession();
		String name= "wonate";
		
		// 최대 업로드 파일 크기 5MB로 제한
		int uploadFileSizeLimit = 5 * 1024 * 1024;
		String encType = "UTF-8";
		
		//String uploadFilePath="C:\\upload";   
		String savePath = "/upload/";
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		
		MultipartRequest multi = new MultipartRequest(
				request, 	//요청객체
				uploadFilePath, // 서버상의 실제 디렉토리
				uploadFileSizeLimit, // 최대 업로드 파일 크기
				encType, // 인코딩 방법
				new DefaultFileRenamePolicy() //같은 이름파일시 새로운 이름 부여하라고 지정
				);
		////////////COS 라이브러리를 사용하면 파일의 요청을 MultipartRequest 로 요청함
		String fileName=multi.getFilesystemName("fileupload");
		if(fileName==null) {
			System.out.println("파일 업로드 되지 않음");
		}else {System.out.println("파일 업로드 되지않음");}
		
		
		String title=multi.getParameter("title");
		String input=multi.getParameter("input");
		
		InetAddress local;
		local = InetAddress.getLocalHost();
		String ip = local.getHostAddress();
		

		Connection conn =null;
		PreparedStatement pstmt =null;
		int rest ;
		String sql = "insert into imgtab"+ino+"(bname,btitle,bcontent,bip,bfile) values(?,?,?,?,?)";
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn=new DBManager().getConnection();
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, title);
			pstmt.setString(3, input);
			pstmt.setString(4, ip);
			pstmt.setString(5, fileName);
			rest = pstmt.executeUpdate();
			response.sendRedirect("imgtab/list.jsp?result=" + rest+"&&ino="+ino);
		}catch(Exception e){e.printStackTrace();} 
		finally{
			try{
				if(pstmt != null){pstmt.close();}
				if(conn != null){conn.close();}
				out.print("<meta http-equiv='refresh' content='0;url=list.jsp?ino="+ino+"'>");
			}catch(Exception e){e.printStackTrace();}
		}
		
		
	}

}
