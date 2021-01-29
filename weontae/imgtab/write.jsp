<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file = "/inc/header.jsp" %>  

<% request.setCharacterEncoding("utf-8");
int ino=Integer.parseInt(request.getParameter("ino"));%>

    <div class="container">
	   <h3>IMG 등록</h3>
	   <form action="<%=request.getContextPath()%>/Twrite?ino=<%=ino%>" method="post"  id="create" enctype="multipart/form-data">
		   		  
		    <div class="form-group">
			   <label for="title">제목</label>
			   <input type="text" id="title" name="title" class="form-control" />
		   </div>
		    <div class="form-group">
			   <label for="input">내용</label>
			   <textarea id="input" name="input" rows="10" cols="40" class="form-control" ></textarea>
		   </div>
			<div class="form-group">
				<label for="fileupload">파일업로드 : </label>
				<input type="file" name="fileupload" id="fileupload" class="form-control"/>
			</div>  
		   <div class="form-group text-right">
		   		<input type="submit" value="입력" class="btn btn-primary" />
		   		<input type="reset" value="취소" class="btn btn-primary" />
		   		<a href="<%=request.getContextPath()%>/imgtab/list.jsp" class="btn btn-primary">목록보기</a>
		   </div>
	   </form>
    	<script>
    		$(function(){
    			$("#create").submit(function(){
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
