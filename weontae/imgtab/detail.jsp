<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file = "/inc/header.jsp" %>  
	<%	
		request.setCharacterEncoding("utf-8");
		if(request.getParameter("result")!=null){
			int result = Integer.parseInt(request.getParameter("result"));
			if(result<0){out.println("<script>alert('글쓰기실패')</script>");}
		else{out.println("<script>alert('수정성공')</script>");}
	}

		int ino=Integer.parseInt(request.getParameter("ino"));
	%>

	
	
    <div class="container">
	   	<%if(ino==1){ %>
			<h3>수도권 여행상품</h3>
		<%}%>
			<%if(ino==2){ %>
			<h3>강원권 여행상품</h3>
		<%}%>
			<%if(ino==3){ %>
			<h3>충청권 여행상품</h3>
		<%}%>
	   <div class="panel">
<!-- 			<div class="panel-heading"> -->
<!-- 				<span>조회수</span> -->
<!-- 			</div> -->
<!-- 			<div class="panel-body"> -->
<%-- 				<p><%=request.getAttribute("bhit")%></p> --%>
<!-- 			</div> -->
<!-- 			<div class="panel-heading"> -->
<!-- 				<span>아이디</span> -->
<!-- 			</div> -->
<!-- 			<div class="panel-body"> -->
<%-- 				<p class="id"><%=request.getAttribute("bname")%></p> --%>
<!-- 			</div> -->
<!-- 			<div class="panel-heading"> -->
<!-- 				<span>제목</span> -->
<!-- 			</div> -->
<!-- 			<div class="panel-body"> -->
<%-- 				<p><%=request.getAttribute("btitle")%></p> --%>
<!-- 			</div> -->
			
<!-- 			<div class="panel-heading"> -->
<!-- 				<span>내용</span> -->
<!-- 			</div> -->
<!-- 			<div class="panel-body"> -->
<%-- 				<p><%=request.getAttribute("bcontent")%></p> --%>
<!-- 			</div> -->
			
<!-- 			<div class="panel-heading"> -->
<!-- 				<span>사진</span> -->
<!-- 			</div> -->
<!-- 			<div class="panel-body"> -->
<%-- 				<p><img src="<%=request.getContextPath()%>/upload/<%=request.getAttribute("bfile")%>" alt=""></p>  --%>
<!-- 			</div> -->
			
			<div class="row">
				<div class="col-sm-6">
					<img src="<%=request.getContextPath()%>/upload/<%=request.getAttribute("bfile")%>" alt="" style="width: 100%;">
				</div>
				<div class="col-sm-6">
					<h3><%=request.getAttribute("btitle")%></h3>
					<br/>
					<strong>조회수 : <%=request.getAttribute("bhit")%> </strong>
					<br/>
					<textarea rows="10" cols="" class="form-control" disabled="disabled" style="resize: none;"><%=request.getAttribute("bcontent")%>
					
					</textarea>
				</div>
			</div>
			
				
			<div class="panel text-right">
				<div class="panel-body">
					<a href="<%=request.getContextPath()%>/Tmodify?bno=<%=request.getAttribute("bno")%>&&ino=<%=ino%>" id="modifygo" class="btn btn-primary">수정</a>
					<a href="<%=request.getContextPath()%>/imgtab/deleteform.jsp?bno=<%=request.getAttribute("bno")%>&&ino=<%=ino%>" id="deletego" class="btn btn-primary">삭제</a>
					<a href="<%=request.getContextPath()%>/imgtab/list.jsp?ino=<%=ino%>" class="btn btn-primary">목록보기</a>
				</div>
				<div class="panel-body text-left">
				<% if(request.getAttribute("noprev")!=null){ %>
				최신글입니다.
				<%}else{ %>
					<a href="<%=request.getContextPath()%>/TPrev?bno=<%=request.getAttribute("bno")%>&&ino=<%=ino%>" class="btn btn-warning">이전글</a>
					<%} %>
					
					
					<% if(request.getAttribute("nonext")!=null){ %>
				마지막.
				<%}else{ %>
					<a href="<%=request.getContextPath()%>/TNext?bno=<%=request.getAttribute("bno")%>&&ino=<%=ino%>" class="btn btn-warning">다음글</a>
					<%} %>
				</div>
			</div>
			
		</div>
	</div> 
	
	<script>
			$(function(){
					$("#modifygo").click(function(){
	 					 if(<%=session.getAttribute("admin")%>==null){ 
	 						alert("관리자가 아닙니다");
	 						return false;
	 					} 
				});
					$("#deletego").click(function(){
	 					 if(<%=session.getAttribute("admin")%>==null){ 
	 						alert("관리자가 아닙니다");
	 						return false;
	 					} 
				});
			});
			</script>
	

<%@ include file = "/inc/footer.jsp" %>  
