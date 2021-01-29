<%@page import="com.companyimgtab.TDto"%>
<%@page import="com.companyimgtab.TList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
    
    <div class="container">
		<div class="row"><br><br>
			<p style="font-size:25px; font-weight: bold;">3) Kubernetes 이미지 생성<br><br>
			<img src="<%=request.getContextPath()%>/images/105.jpg" width="800" height="100" alt="images" ><br>
			<p style="font-size:18px; ">-   Kubernetes에서 이미지를 생성하기 위한 기본 컨테이너 생성 및 컨테이너 접속<br><br><br>
			-     컨태이너 접속후 OpenStack에서와 같이 각 서비스별 이미지에 팔요한 기본 프로그램 설치<br><br><br>
			<img src="<%=request.getContextPath()%>/images/131.jpg" width="800" height="200" alt="images" ><br>
			-설치후 각각의 서비스별로 war 파일을 넣어주는 과정<br><br><br>
			<img src="<%=request.getContextPath()%>/images/132.jpg" width="800" height="400" alt="images" ><br>
			: war 파일을 넣어주고 Tomcat재실행후  정상 작동하는지 main page를 띄어 확인<br><br><br>
			• 각 서비스별 이미지 생성<br>
			<img src="<%=request.getContextPath()%>/images/133.jpg" width="800" height="100" alt="images" ><br>
			: 상단에서 서비스별 war파일을 넣어주는 과정을 통하여 서비스 컨테이너를 이용한 이미지 생성 과정<br><br><br>
			<img src="<%=request.getContextPath()%>/images/134.jpg" width="800" height="300" alt="images" ><br>
			: docker hub에 로그인후 각각의 서비스별 이미지 tag후 push로 업로드<br><br><br>
			<img src="<%=request.getContextPath()%>/images/136.jpg" width="800" height="400" alt="images" ><br>
			: 각 서비스별로 docker hub에 업로드된 것을 확인 할 수 있으며 이것은 추후 파드별 서비스 생성을  위한 기초적 단계를 진행한 것이다.<br><br><br>
	













		</div> 
    </div> 
    
    
     <script>
     
    </script> 