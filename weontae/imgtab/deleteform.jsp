<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file = "/inc/header.jsp" %>  
<%request.setCharacterEncoding("utf-8");
int bno  = Integer.parseInt(request.getParameter("bno"));
int ino=Integer.parseInt(request.getParameter("ino"));%>

    <div class="container">
	   <h3>IMG 삭 제</h3>
	   <form action="<%=request.getContextPath()%>/TDelete?bno=<%=bno%>&&ino=<%=ino%>" method="post" id="delete">
		   
		   <div class="from-group">
		   		<input type="submit" value="확인"/>
		   		<input type="reset" onclick="history.go(-1);" value="취소">
		   </div>
		    <script>
			   $(function(){
					$("#delete").submit(function(){
						if($("#pass").val()==""){
							alert("비밀번호를 입력해주세요");
							$("#pass").focus();
							return false;
						}
						
					});
				});
	   </script>
	   </form>
    </div> 

<%@ include file = "/inc/footer.jsp" %>  
