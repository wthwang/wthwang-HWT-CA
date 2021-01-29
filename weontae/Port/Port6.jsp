<%@page import="com.companyimgtab.TDto"%>
<%@page import="com.companyimgtab.TList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
    
    <div class="container">
		<div class="row"><br><br>
			<p style="font-size:25px; font-weight: bold;">4) 인스턴스 생성과 스택 생성<br><br></p>
			<p style="font-size:21px; ">4-1) 각 서비스별 인스턴스  생성</p>
			<img src="<%=request.getContextPath()%>/images/77.jpg" width="800" height="400" alt="images" ><br>
			<p style="font-size:18px; ">- QCOW2 이미지 생성 준비 <br>: 이미지 생성 관련하여 준비 작업을 진행한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/78.jpg" width="800" height="400" alt="images" ><br>
			- JDK 설치 <br>: 필요 패키지 설지 진행<br><br><br>
			<img src="<%=request.getContextPath()%>/images/79.jpg" width="800" height="400" alt="images" ><br>
			- 환경변수 지정 -1<br> : 설치된 JDK에 관련하여 추후 설정값을 위해서 경로 조회를 실시한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/80.jpg" width="800" height="400" alt="images" ><br>
			- 환경변수 지정 -2 <br> : 설치된 JDK에 관련하여 환경변수를 지정하여 정상 작동이 가능하게 한다<br><br><br>
			<img src="<%=request.getContextPath()%>/images/81.jpg" width="800" height="400" alt="images" ><br>
			- PHP 설치 관련 저장소 추가<br> : 설치 진행을 위한 PHP 관련 저장소 옵션을 바꿔준다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/82.jpg" width="800" height="400" alt="images" ><br>
			- Apache2 설치 진행<br><br><br>
			<img src="<%=request.getContextPath()%>/images/83.jpg" width="800" height="400" alt="images" ><br>
			- Apache2 실행<br><br><br>
			<img src="<%=request.getContextPath()%>/images/84.jpg" width="800" height="400" alt="images" ><br>
			<img src="<%=request.getContextPath()%>/images/85.jpg" width="800" height="400" alt="images" ><br>
			- PHP 설치 및 실행<br><br><br>
			<img src="<%=request.getContextPath()%>/images/86.jpg" width="800" height="400" alt="images" ><br>
			- Tomcat 수동 설치 준비 과정<br> : 버전을 맞춰주기 위해서 원하는 버전에 대해서 수동설치 과정을 진행한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/87.jpg" width="800" height="400" alt="images" ><br>
			- Tomcat 압축 해제<br> : 수동 다운로드한 파일에 대하여 압축 해제 과정을 진행한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/88.jpg" width="800" height="400" alt="images" ><br>
			- Tomcat 설정 및 자동 실행 <br>: 작동에 필요한 설정을 완료한 후 자동 실행 옵션을 부여하여 작동을 실시한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/89.jpg" width="800" height="400" alt="images" ><br>
			- Apache와 PHP 연동 작업 실시<br> : Apache와 PHP에 대하여 추후 작업을 위한 연동 작업을 진행한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/90.jpg" width="800" height="400" alt="images" ><br>
			- Apache와 Tomcat 연동 커넥터 설치 준비<br> : Apache와 Tomcat 연동 커넥터 설치를 위한 파일을 다운로드 받는다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/91.jpg" width="800" height="400" alt="images" ><br>
			- Apache와 Tomcat 연동 커넥터 압축 해제<br> : 압축을 해제하여 설치 준비 과정을 진행한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/92.jpg" width="800" height="400" alt="images" ><br>
			- Apache와 Tomcat 연동 커넥터 설치 <br>: 실질적인 Apache와 Tomcat 연동 커넥터에 관하여 설치 작업을 진행한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/93.jpg" width="800" height="400" alt="images" ><br>
			- Apache와 Tomcat 연동 설정 진행 <br>: Apache와 Tomcat 연동 커넥터 설치를 진행하여 Tomcat에서 Apache 파일을 읽어드릴 수 있게 한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/94.jpg" width="800" height="400" alt="images" ><br>
			- War 파일 저장 준비<br> : 애러 발생 방지를 위하여 백업을 진행한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/95.jpg" width="800" height="400" alt="images" ><br>
			- War 파일 다운로드 <br>: Tomcat에서 War 파일의 내용물을 풀어 읽어드릴 수 있게 하는 것으로 우선적으로 War파일을 다운로드 받는다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/97.jpg" width="800" height="400" alt="images" ><br>
			- 권한 부여 및 파일 배치 설정<br> : Tomcat에서 War 파일의 내용물을 읽어드릴 수 있게 권한 부여 과정을 진행한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/98.jpg" width="800" height="400" alt="images" ><br>
			- WebService 용 보안 그룹 설정 <br> : 관리 보안 그룹 규칙을 통하여 통신시 필요한 내부 규칙을 정의 해준다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/99.jpg" width="800" height="400" alt="images" ><br>
			- Heat 생성 용 .yaml 파일 작성 및 구동 <br>: Heat를 이용하여 오토스케일링 작업이 가능하므로, yaml 파일 작성을 진행하였으며 구동을 실시하였다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/100.jpg" width="800" height="400" alt="images" ><br>
			- Stack 구동 확인<br> : Stack 구동 확인을 통하여 서비스 별 오토스케일링 작업 및 정상 연결이 되었는지 확인 가능하다.<br><br><br>
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
		</div> 
    </div> 
    
    
     <script>
     
    </script> 