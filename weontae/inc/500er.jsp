<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page isErrorPage="true" %>
    <% response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />
	</head>
<body>
	<div class="container">
	<h3>500페이지error</h3>
	<p><%= exception.getMessage() %></p>
	<p>관리자에게 문의바랍니다.</p>
	</div>

</body>
</html>