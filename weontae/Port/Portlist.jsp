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

    <div class="container">
		<div class="row">
			<div class="col-sm-3">
				  <p  id="sidenotice0" class="active">MSA 프로젝트 </p>
				  <p> <a href="<%=request.getContextPath()%>/Port/Portlist.jsp?ino=1" id="sidenotice1" class="active">-  MSA</a></p>
				  <p> <a href="<%=request.getContextPath()%>/Port/Portlist.jsp?ino=2" id="sidenotice2" class="active">-  ppt, 보고서</a></p>
				  <p> <a href="<%=request.getContextPath()%>/Port/Portlist.jsp?ino=3" id="sidenotice3" class="active">-  OpenStack 인프라<br> 1. PeckStack Rocky 버전 설치</a></p>
				  <p> <a href="<%=request.getContextPath()%>/Port/Portlist.jsp?ino=4" id="sidenotice4" class="active">-  OpenStack 인프라<br> 2. CentOS7 이미지 생성</a></p>
				  <p> <a href="<%=request.getContextPath()%>/Port/Portlist.jsp?ino=5" id="sidenotice5" class="active">-  OpenStack 인프라<br> 3. API Gateway 생성 및 구축</a></p>
				  <p> <a href="<%=request.getContextPath()%>/Port/Portlist.jsp?ino=6" id="sidenotice6" class="active">-  OpenStack 인프라<br> 4. 인스턴스 생성과 스택 생성</a></p>
				  <p> <a href="<%=request.getContextPath()%>/Port/Portlist.jsp?ino=7" id="sidenotice7" class="active">-  OpenStack 인프라<br> 5. API Gateway에 서비스 연동</a></p>
				  <p> <a href="<%=request.getContextPath()%>/Port/Portlist.jsp?ino=8" id="sidenotice8" class="active">-  Kubernetes 인프라 <br> 1. Docker, Kubernetes 설치</a></p>
				  <p> <a href="<%=request.getContextPath()%>/Port/Portlist.jsp?ino=9" id="sidenotice9" class="active">-  Kubernetes 인프라 <br> 2. API Server Dash Board 설치</a></p>
				  <p> <a href="<%=request.getContextPath()%>/Port/Portlist.jsp?ino=10" id="sidenotice10" class="active">-  Kubernetes 인프라 <br> 3. 이미지 생성</a></p>
				  <p> <a href="<%=request.getContextPath()%>/Port/Portlist.jsp?ino=11" id="sidenotice11" class="active">-  Kubernetes 인프라 <br> 4. MSA 구축</a></p>
			</div>
		
		<div class="col-sm-9">
				<%if(ino==1){ %>
					<h2>MSA</h2>
					<%@ include file="/Port/Port1.jsp" %>
				<%}%>
				<%if(ino==2){ %>
					<h2>ppt</h2>
					<%@ include file="/Port/Port2.jsp" %>
				<%}%>
				<%if(ino==3){ %>
					<h2>OpenStack 인프라</h2>
					<%@ include file="/Port/Port3.jsp" %>
				<%}%>
				<%if(ino==4){ %>
					<h2>OpenStack 인프라</h2>
					<%@ include file="/Port/Port4.jsp" %>	
					
				<%}%>
				<%if(ino==5){ %>
					<h2>OpenStack 인프라</h2>
					<%@ include file="/Port/Port5.jsp" %>
				<%}%>
				<%if(ino==6){ %>
					<h2>OpenStack 인프라</h2>
					<%@ include file="/Port/Port6.jsp" %>
				<%}%>
				<%if(ino==7){ %>
					<h2>OpenStack 인프라</h2>
					<%@ include file="/Port/Port7.jsp" %>
				<%}%>
				<%if(ino==8){ %>
					<h2>Kubernetes 인프라</h2>
					<%@ include file="/Port/Port8.jsp" %>
				<%}%>					
				
				<%if(ino==9){ %>
					<h2>Kubernetes 인프라</h2>
					<%@ include file="/Port/Port9.jsp" %>
				<%}%>		
				
				<%if(ino==10){ %>
					<h2>Kubernetes 인프라</h2>
					<%@ include file="/Port/Port10.jsp" %>
				<%}%>			
					
				<%if(ino==11){ %>
					<h2>Kubernetes 인프라</h2>
					<%@ include file="/Port/Port11.jsp" %>
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
    			if(ino==4){
    				$("#sidenotice4").css("color", "#ff0000");
    				$("#sidenotice4").css("border-bottom", "1px solid #333");
    			};
    			if(ino==5){
    				$("#sidenotice5").css("color", "#ff0000");
    				$("#sidenotice5").css("border-bottom", "1px solid #333");
    			};
    			if(ino==6){
    				$("#sidenotice6").css("color", "#ff0000");
    				$("#sidenotice6").css("border-bottom", "1px solid #333");
    			};
    			if(ino==7){
    				$("#sidenotice7").css("color", "#ff0000");
    				$("#sidenotice7").css("border-bottom", "1px solid #333");
    			};
    			if(ino==8){
    				$("#sidenotice8").css("color", "#ff0000");
    				$("#sidenotice8").css("border-bottom", "1px solid #333");
    			};	
    			if(ino==9){
    				$("#sidenotice9").css("color", "#ff0000");
    				$("#sidenotice9").css("border-bottom", "1px solid #333");
    			};
    			if(ino==10){
    				$("#sidenotice10").css("color", "#ff0000");
    				$("#sidenotice10").css("border-bottom", "1px solid #333");
    			};    			
    			if(ino==11){
    				$("#sidenotice11").css("color", "#ff0000");
    				$("#sidenotice11").css("border-bottom", "1px solid #333");
    			};     			
    			
    			
    		});
    		
    	</script> 

<%@ include file = "/inc/footer.jsp" %>  
