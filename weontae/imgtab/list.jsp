<%@page import="com.companyimgtab.TDto"%>
<%@page import="com.companyimgtab.TList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
    
    
<%@ include file = "/inc/header.jsp" %>  
<%
	int ino = 1;
	if(request.getParameter("ino") != null){
		ino =  Integer.parseInt(request.getParameter("ino"));
	}
%>

    <div class="container" >
		<div class="row">
			<div  class="col-sm-3" >
				  <p  id="sidenotice0" class="active">태그 목록 </p>
				  <p> <a href="<%=request.getContextPath()%>/imgtab/list.jsp?ino=1" id="sidenotice1" class="active">- 전체보기</a></p>
			  	  <p> <a href="<%=request.getContextPath()%>/imgtab/list.jsp?ino=2" id="sidenotice2" class="active">- MSA 프로젝트</a></p>
			  	  <p> <a href="<%=request.getContextPath()%>/imgtab/list.jsp?ino=3" id="sidenotice3" class="active">- 자기소개서</a></p>
			</div>
		
		<div class="col-sm-9">
				<%if(ino==1){ %>

					<h2>- MSA 프로젝트</h2>
					<%@ include file="/imgtab/listP.jsp" %>
					<br></br>
						<br></br>
							<br></br>
					<h2>- 자기소개서</h2>
					
						 <%@ include file="/imgtab/listJ.jsp" %>
			
				<%}%>
				<%if(ino==2){ %>
					<h2>- MSA 프로젝트</h2>
					<%@ include file="/imgtab/listP.jsp" %>
				<%}%>
				<%if(ino==3){ %>
					<h2>- 자기소개서</h2>
					<%@ include file="/imgtab/listJ.jsp" %>
					
					
				<%}%>
			</div>	
		</div> 
    </div> 
    
    
     <script>
    		$(function(){
    			
    			var ino = <%=ino%>;
    		
    			if(ino==1){
    				$("#sidenotice1").css("color", "#ff0000");
    				$("#sidenotice1").css("border-bottom", "1px solid #333");
    			};
    			if(ino==2){
    				$("#sidenotice2").css("color", "#ff0000");
    				$("#sidenotice2").css("border-bottom", "1px solid #333");
    			};
    			if(ino==3){
    				$("#sidenotice3").css("color", "#ff0000");
    				$("#sidenotice3").css("border-bottom", "1px solid #333");
    			};

					
    		});
    		
    	</script> 

<%@ include file = "/inc/footer.jsp" %>  
