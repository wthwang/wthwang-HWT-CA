<%@page import="com.companyimgtab.TDto"%>
<%@page import="com.companyimgtab.TList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
    
    <div class="container">
		<div class="row"><br><br>
			<p style="font-size:25px; font-weight: bold;">4) Kubernetes MSA 구축 <br><br>
			<p style="font-size:20px; font-weight: bold;">• 각 서비스 POD 구축 과정<br><br>
			<img src="<%=request.getContextPath()%>/images/137.jpg" width="800" height="100" alt="images" ><br>
			<p style="font-size:18px; ">- POD별 서비스 생성 전 초기 상태<br><br><br>
			<img src="<%=request.getContextPath()%>/images/138.jpg" width="800" height="500" alt="images" ><br>
			- Main 페이지 생성을위한 Service, Deployment yaml 파일<br><br>
			<img src="<%=request.getContextPath()%>/images/139.jpg" width="800" height="100" alt="images" ><br>
			- apply로 Service, Deployment 생성 (다른 서비스들도 똑같이 작성후 apply)<br><br><br>
			<img src="<%=request.getContextPath()%>/images/140.jpg" width="800" height="200" alt="images" ><br>
			- 서비스를 다시 조회하였을 경우 메인 페이지에 관련하여 서비스가 생성된 것을 확인 할 수 있다.<br><br>
			<img src="<%=request.getContextPath()%>/images/141.jpg" width="800" height="200" alt="images" ><br>
			- 각각의 서비스들 apply<br><br><br>
			<img src="<%=request.getContextPath()%>/images/142.jpg" width="800" height="400" alt="images" ><br>
			- Main 페이지에 접속을 하더라도 외부와 접속이 안되는걸 확인할수있다.<br>
			: Main Page 서비스 접속이 정상적으로 이루어지지 않는 이유는 외부 접속에 대하여 POD에 접근시인증 및 인가 방식이 이루어지지 않기 때문에 차단되어 접속이 되지 않는 것을 알 수 있다. <br><br><br>
			<p style="font-size:20px; font-weight: bold;">• N-ginx 기반 Ingress 구축<br><br>
			<img src="<%=request.getContextPath()%>/images/143.jpg" width="800" height="500" alt="images" ><br>
			<p style="font-size:18px; ">- ingress는 kubernetes에서 내부 서비스별 Pod에 접근을 가능하게 하기 위   한 일종의 Gateway 역할을 진행한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/144.jpg" width="800" height="500" alt="images" ><br>
			: Ingress yaml 파일 작성<br>
			 호스트를 지정하여 접속이 가능하게 하며 각 파드별 서비스 지정 및 접근 시 서비스 포트를 열어주어 내부와  접속이 가능하게 한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/145.jpg" width="800" height="100" alt="images" ><br>
			- Ingress yaml파일 apply<br>
			- Ingress yaml 파일 작성 코드 작성 시 Ingress는 일종의 규칙이며 실질적인 행동자는 Ingress-controller이다.<br>
 			Ingress-controller yaml 파일 작성 시 ConfigMap 작성을 통하여 Ingress-controller 작동에 대하여 규칙성을  부여한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/146.jpg" width="800" height="700" alt="images" ><br>
			- Ingress-Controller yaml파일<br><br>
			<img src="<%=request.getContextPath()%>/images/147.jpg" width="800" height="300" alt="images" ><br>
			- Ingress-Controller yaml파일 apply 후 실질적 행동자의 역할을 진행하게 한다><br>
			- 하지만 Controller를 지정해주었음에도 불구하고 홈페이지에는 접속이 불가능하다. 그 이유는 이 Controller에 접속하기 위한 Controller의  서비스를 생성해줘서 외부와 연결을 가능하게 해줘야하기 떄문이다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/148.jpg" width="800" height="300" alt="images" ><br>
			- Ingress-Controller의 Service yaml 파일<br><br><br>
			<img src="<%=request.getContextPath()%>/images/149.jpg" width="800" height="100" alt="images" ><br>
			- Ingress-Controller의 Service yaml 파일 apply를 해주면 최종적으로 기본적인 API Gateway 구축이 마무리된다. <br><br><br>
			-API GATEWAY 구축후 각각의 서비스들 정상 작동 하는지 확인<br><br>
			-Main 페이지<br>
			<img src="<%=request.getContextPath()%>/images/150.jpg" width="800" height="400" alt="images" ><br><br>
			-로그인 페이지<br>
			<img src="<%=request.getContextPath()%>/images/151.jpg" width="800" height="400" alt="images" ><br><br>			
			-예매 페이지<br>
			<img src="<%=request.getContextPath()%>/images/152.jpg" width="800" height="400" alt="images" ><br><br>
			<img src="<%=request.getContextPath()%>/images/153.jpg" width="800" height="400" alt="images" ><br><br>
			-예매 결제 페이지<br><br>
			<img src="<%=request.getContextPath()%>/images/156.jpg" width="800" height="400" alt="images" ><br><br>
			<img src="<%=request.getContextPath()%>/images/157.jpg" width="800" height="400" alt="images" ><br><br>
			-게시판 페이지<br><br>
			<img src="<%=request.getContextPath()%>/images/154.jpg" width="800" height="400" alt="images" ><br><br>
			-Mail 페이지<br><br>
			<img src="<%=request.getContextPath()%>/images/155.jpg" width="800" height="400" alt="images" ><br><br>
			- 각 서비스의 작동을 Kubernetes Ingress를 통하여 작동을 진행해 보았으며, 최종적으로 웹에서 각각의 서비스들이    작동하고 있는 것을 확인 하였다.<br><br>
		</div> 
    </div> 
    
    
     <script>
     
    </script> 