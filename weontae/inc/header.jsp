
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Hwang Weon tae</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://apis.google.com/js/platform.js" async defer></script>
  <meta name="google-signin-client_id" content="176136668055-rt9e4p6tmbfhug453p5obf50f1iedqin.apps.googleusercontent.com">
  <link rel="shortcut icon" href="<%=request.getContextPath()%>/images/icon.png" type="image/x-icon">
  <link rel="icon" href="myicon.ico" type="image/x-icon">
  
  <style>
		.myheader.mh2{
			border-top: 1px solid #ddd;
			border-bottom: 1px solid #337ab7;
		}
		#header .navbar-nav>li>a{
			border-right:1px solid #ddd;
			    border-style: groove;
		}
		
		#header nav.navbar{
			margin:0;
		}
		
		
		
		#footer .navbar-nav>li{
			border-right:1px solid #ddd;
			background-color: #f8f8f8;
		}
		
		#footer{
			background-color: #f8f8f8;
		}
		
		.myfooter .mf2{
			border-top: 1px solid #ddd;
			border-bottom: 1px solid #ddd;
		}
		
		
		
		.mf2{padding: 1%;}
		.mf3{padding: 1%;}
		
		#notice{
			border-top: 1px solid #ddd;
			border-bottom: 1px solid #ddd;
		}
		.notice1{
			border-left: 1px solid #ddd;
			border-right: 1px solid #ddd;
			
		}
		
		.a11{background-color: #CDECFA;}
		.r1{ 
			height: 40px;}
		
		.r3 {border-bottom: 1px solid; 
		    border-style: groove;
		
		}
		.r33 li  a{ text-align: center;}
		#mynaver{width: 60%;margin: 0 auto;
		}

    .ff1 a{
    	font-size:13px;
    	color: black;
    }
    .ff1 .re1{
        border-bottom: solid #0012;
    }
   .api {
    padding: 4px;
    border-bottom: 2px solid #77777785;
	}
	
	.myfooter.mf1 {
	border-top: 1px #CFCFCF solid;
    border-bottom: 1px #CFCFCF solid;
}
#footer{
	background: 
}
table th{
	text-align: center;
	vertical-align: middle;
}
table td{
	text-align: center;
}

.container-fluid {
    padding-top: 10px;
    padding-bottom: 10px;
    padding-left: 0px;
}
.container {
    padding-left: 0px;
}
.bg-4 {
    background-color: #F3F3F3;
    color: #000000;
}
.container-fluid {
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
.text-center {
    text-align: center;
}

.btn1{background-color: #CDECFA;  height:35px;}	

	
	#sidenotice0{
	font-size: 26px;
    font-weight: bold;
    color:black;
    border:bottom;
    font: 1px solid #333;
    
    }
    
	#sidenotice1{
	font-size: 18px;
    font-weight: bold;
    color:black;}
    
    #sidenotice2{
	font-size: 18px;
    font-weight: bold;
    color:black;}
    
    #sidenotice3{
	font-size: 18px;
    font-weight: bold;
    color:black;}
    
    #sidenotice4{
	font-size: 18px;
    font-weight: bold;
    color:black;}
        
    #sidenotice5{
	font-size: 18px;
    font-weight: bold;
    color:black;}
    
    #sidenotice6{
	font-size: 18px;
    font-weight: bold;
    color:black;}
    
    #sidenotice7{
	font-size: 18px;
    font-weight: bold;
    color:black;}   
      
    #sidenotice8{
	font-size: 18px;
    font-weight: bold;
    color:black;}  
    
    #sidenotice9{
	font-size: 18px;
    font-weight: bold;
    color:black;}  
    
    #sidenotice10{
	font-size: 18px;
    font-weight: bold;
    color:black;}  
        
    #sidenotice11{
	font-size: 18px;
    font-weight: bold;
    color:black;}    
    
.btn1 {
    border: 0 none;
    width: 5%;
    margin-bottom: 3px;
    font-weight: bold;
  
}

.f2 p{
    text-align: center;
    font-size: 20px;
    border-style: double;
   	color: black;
/*     margin-top: 80px; */
}
.f21 .col-sm-6{
    text-align: center;
}

.f22 .col-sm-6{
    text-align: center;
}
		
.f2 .col-sm-6{
   height: 200px;
   border-style: groove;
   background: aliceblue;
}
.f21 p {
    font-size: 15px;
}
.f21 img {
    width: 27%;
}
.f21 a {
    margin-bottom: 43px;
    display: block;
}
.panel-info>.panel-heading {
    color: white;
    background-color: #3c6087;
    border-color: #ddd;
}
.panel-info {
    border-color: white;
}

html, body {margin: 0px; padding: 0px;}

   .a {
        text-indent: 4em;
        
        
  </style>
  
	<style type="text/css">
		.video-container { margin: 0;padding-bottom: 75%; max-width: 100%; height: 0; position: relative;overflow: hidden;} 
		.video-container iframe, 
		.video-container object, 
		.video-container embed { margin: 0;padding: 0; width: 100%; height: 95%;position: absolute; top: 0;left: 0; }
	</style>
	
				
</head>

<body>


<div style="text-align : center;">
	 <a href="<%=request.getContextPath()%>/imgtab/list.jsp?ino=1"class="active">
	   	<img src="<%=request.getContextPath()%>/images/Main1.jpg" width="800" height="300" alt="images" >
	</a>
</div>

<div>
<br></br>
<br></br>
<br></br>

</div>


	
	
</body>

	<script>
		
	
	</script>
