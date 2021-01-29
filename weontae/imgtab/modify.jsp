<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "/inc/header.jsp" %>  


<% 	request.setCharacterEncoding("utf-8");
	String bconent = ((String)(request.getAttribute("bcontent"))).replace("<br>","\r\n");
	int ino=Integer.parseInt(request.getParameter("ino"));%>

    <div class="container">
	   <h3>글 수정</h3>
	    <form action="<%=request.getContextPath()%>/TUpdate?bno=<%=request.getAttribute("bno")%>&&ino=<%=ino%>" method="post" id="update" enctype="multipart/form-data">
		    <div class="panel">
				<div class="panel-heading">
					<span class="glyphicon glyphicon-plus">조회수</span>
				</div>
				<div class="panel-body">
				  	<p><%=request.getAttribute("bhit")%></p>
				</div>
			</div>
			
			<div class="panel">
				<div class="panel-heading">
					<span class="glyphicon glyphicon-plus">아이디</span>
				</div>
				<div class="panel-body">
				  	<p><%=request.getAttribute("bname")%></p>
				</div>
			</div>
			
			<div class="form-group">
				<label for="title">+ 제목</label>
				<input type="text" id="title" name="title" value="<%=request.getAttribute("btitle")%>"class="form-control" />
			</div>
			
			<div class="form-group">
				<label for="input">+ 내용</label>
				<textarea id="input" name="input" rows="10" cols="40" class="form-control"><%=bconent%></textarea>
			</div>
			
			<div class="form-group">
				<label for="fileupload">파일업로드 : </label>
				<input type="file" name="fileupload" id="fileupload" class="form-control"/>
				<input type="text" name="filename" id="filename" class="form-control" value="<%=request.getAttribute("bfile")%>" title="파일이름"readonly/>
			</div>  
			
			<div class="form-group text-right">
				<input type="submit" value="수정" class="btn btn-primary" />
				<input type="reset" value="취소" class="btn btn-primary" />
				<a href="<%=request.getContextPath()%>/imgtab/list.jsp" class="btn btn-primary">목록보기</a>
			</div>
			
	   </form>
	   <script>
		   $(function(){
				$("#update").submit(function(){
					
					if($("#email").val()==""){
						alert("이메일을 입력해주세요");
						$("#email").focus();
						return false;
					}
					if($("#pass").val()==""){
						alert("비밀번호를 입력해주세요");
						$("#pass").focus();
						return false;
					}
					if($("#title").val()==""){
						alert("제목을 입력해주세요");
						$("#title").focus();
						return false;
					}
					if($("#input").val()==""){
						alert("내용을 입력해주세요");
						$("#input").focus();
						return false;
					}
				});
			});
	   </script>
    </div> 

<%@ include file = "/inc/footer.jsp" %>  
