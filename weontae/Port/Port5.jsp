<%@page import="com.companyimgtab.TDto"%>
<%@page import="com.companyimgtab.TList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
    
    <div class="container">
		<div class="row"><br><br>
			<p style="font-size:25px; font-weight: bold;">3) API Gateway 생성 및 구축<br><br></p>
			<p style="font-size:21px; ">3-1) konga 구축 및 환경 설정</p>
			<img src="<%=request.getContextPath()%>/images/44.jpg" width="800" height="500" alt="images" ><br>
			<p style="font-size:18px; "> : kong이란 API Gateway중의 한 종류로 MSA 설계 시 필요하며 게이트웨이를 거쳐 서비스까지   도달하기 위한 인증 및 인가방식을 구축하기 위해서 kong을 사용하여 MSA를 구축하였다.<br><br><br> 
			<img src="<%=request.getContextPath()%>/images/45.jpg" width="800" height="500" alt="images" ><br>
			- kong용 QCOW2 이미지 생성 준비<br><br><br>
			<img src="<%=request.getContextPath()%>/images/46.jpg" width="800" height="200" alt="images" ><br>
			- 기본 소프트웨어 설치 진행 <br><br><br>
			<img src="<%=request.getContextPath()%>/images/47.jpg" width="800" height="400" alt="images" ><br>
			- Kong 1.5.1 수동 설치 준비  <br><br><br>
			<img src="<%=request.getContextPath()%>/images/48.jpg" width="800" height="400" alt="images" ><br>
			- Kong 1.5.1 수동 설치 및 필요 패키지 업데이트<br><br><br>
			<img src="<%=request.getContextPath()%>/images/49.jpg" width="800" height="400" alt="images" ><br>
			- Postgre SQL 11 설치 진행 과정<br><br><br>
			<img src="<%=request.getContextPath()%>/images/50.jpg" width="800" height="200" alt="images" ><br>
			- Postgre SQL 11 설치 실행<br><br><br>
			<img src="<%=request.getContextPath()%>/images/51.jpg" width="800" height="300" alt="images" ><br>
			- Postgre SQL 11 접속 설정 진행<br><br><br>
			<img src="<%=request.getContextPath()%>/images/52.jpg" width="800" height="400" alt="images" ><br>
			- Postgre SQL에 필요한 계정 및 DB 생성 과정 진행<br><br><br>
			<img src="<%=request.getContextPath()%>/images/53.jpg" width="800" height="400" alt="images" ><br>
			- Kong 설정 및 적용 과정<br><br><br>
			<img src="<%=request.getContextPath()%>/images/55.jpg" width="800" height="100" alt="images" ><br>
			- Kong 실행 과정<br><br><br>
			<img src="<%=request.getContextPath()%>/images/56.jpg" width="800" height="400" alt="images" ><br>
			- Konga Dashboard 구축 과정 (수동 설치 진행)<br><br><br>
			<img src="<%=request.getContextPath()%>/images/58.jpg" width="800" height="100" alt="images" ><br>
			- Node.js 설치 및 필요 소프트웨어 설치<br><br><br>
			<img src="<%=request.getContextPath()%>/images/59.jpg" width="800" height="400" alt="images" ><br>
			- Konga 설치 진행<br><br><br>
			<img src="<%=request.getContextPath()%>/images/60.jpg" width="800" height="300" alt="images" ><br>
			- Postgre SQL 필요 계정 및 DB 생성<br><br><br>
			<img src="<%=request.getContextPath()%>/images/61.jpg" width="800" height="400" alt="images" ><br>
			- Konga 설정 및 실행<br><br><br>
			<img src="<%=request.getContextPath()%>/images/62.jpg" width="800" height="400" alt="images" ><br>
			- 방화벽 설정 옵션<br><br><br>
			<img src="<%=request.getContextPath()%>/images/63.jpg" width="800" height="200" alt="images" ><br>
			- Kong 및 Konga 자동 실행 진행<br><br><br>
			<img src="<%=request.getContextPath()%>/images/64.jpg" width="800" height="400" alt="images" ><br>
			- API Gateway 관련 QCOW2 이미지 생성 _1<br><br><br>
			<img src="<%=request.getContextPath()%>/images/65.jpg" width="800" height="200" alt="images" ><br>
			- API Gateway 관련 QCOW2 이미지 생성 _2 (필요 패키지 설치 및 설정_1)<br><br><br>
			<img src="<%=request.getContextPath()%>/images/66.jpg" width="800" height="200" alt="images" ><br>
			- API Gateway 관련 QCOW2 이미지 생성 _3 (필요 패키지 설치 및 설정_2)<br><br><br>
			<img src="<%=request.getContextPath()%>/images/67.jpg" width="800" height="400" alt="images" ><br>
			- API Gateway 관련 QCOW2 이미지 생성 _4 (필요 패키지 설치 및 설정_3)<br><br><br>
			<img src="<%=request.getContextPath()%>/images/68.jpg" width="800" height="400" alt="images" ><br>
			- API Gateway 관련 QCOW2 이미지 생성 마무리 (IP 등 각종 설정 제거)<br>  : 각종 설정 등을 제거하여 기본값으로 만들어야 추후 오류가 발생하지 않는다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/69.jpg" width="800" height="200" alt="images" ><br>
			- API Gateway 관련 QCOW2 이미지 생성 마무리_2<br>  : 생성한 가상 머신 제거 및 Controller Node로 전송 작업 진행<br><br><br>
			<img src="<%=request.getContextPath()%>/images/70.jpg" width="800" height="100" alt="images" ><br>
			- API Gateway 관련 이미지 생성 작업 진행<br><br><br>
			<img src="<%=request.getContextPath()%>/images/71.jpg" width="800" height="400" alt="images" ><br>
			- API Gateway 관련 볼륨 생성 과정 진행 (OpenStack Dashboard)<br><br><br>
			<img src="<%=request.getContextPath()%>/images/72.jpg" width="800" height="400" alt="images" ><br>
			- API Gateway용 보안 그룹 설정<br><br><br>
			<img src="<%=request.getContextPath()%>/images/73.jpg" width="800" height="400" alt="images" ><br>
			- API Gateway 관련 인스턴스 생성 과정<br><br><br>
			<img src="<%=request.getContextPath()%>/images/74.jpg" width="800" height="400" alt="images" ><br>
			- API Gateway Floating IP 연결 작업 진행<br><br><br>
			<img src="<%=request.getContextPath()%>/images/75.jpg" width="800" height="400" alt="images" ><br>
			- Konga 계정 생성 Dashboard<br><br><br>
			<img src="<%=request.getContextPath()%>/images/76.jpg" width="800" height="400" alt="images" ><br>
			- Konga 연결 설정 진행 완료 (Dashboard 내 구축 과정)<br><br><br>
			
		
		</div> 
    </div> 
    
    
     <script>
     
    </script> 