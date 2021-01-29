<%@page import="com.companyimgtab.TDto"%>
<%@page import="com.companyimgtab.TList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
    
    <div class="container">
		<div class="row"><br><br>
			<p style="font-size:25px; font-weight: bold;">2) API Server Dash Board 설치<br><br>
			<p style="font-size:20px; font-weight: bold;">• dashboard 기본 구성 및 확인<br>
			<p style="font-size:18px; ">kubectl apply –f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-beta1/aio/deploy/recommended.yaml <br>
			: dashboard 관련 배포 yaml 파일 실행하여 dashboard 기본 구성 파일을 설치한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/111.jpg" width="800" height="500" alt="images" ><br>
			- dashboard namespace 확인   <br>
			kubectl get pods —all –namespaces   <br>
			: dashboard 추가 확인 과정을 통하여 최종적으로 작동하는지 확인한다. (running 표시 확인)<br><br><br>
			<img src="<%=request.getContextPath()%>/images/112.jpg" width="800" height="100" alt="images" ><br>
			- Cluster 작동 확인(dashboard 접근 시 필수)<br>
			kubectl cluster-info<br><br><br>
			<img src="<%=request.getContextPath()%>/images/113.jpg" width="500" height="400" alt="images" >
			<img src="<%=request.getContextPath()%>/images/114.jpg" width="500" height="400" alt="images" ><br>
			- Dashboard API 서버 접근 권한 설정<br><br>
			
			grep 'client-certificate-data' ~/.kube/config | head -n 1 | awk '{print $2}' | base64 -d >> kubecfg.crt<br>
			: kubeconfig.crt 파일 작성 시 client-certificate-data 정보를 입력해주는 역할을 수행(최종 생성)<br><br>
			
			cat kubecfg.crt <br>
			: crt파일 조회를 통하여 생성되었는지 확인한다.<br><br>
			
			grep 'client-key-data' ~/.kube/config | head -n 1 | awk '{print $2}' | base64 -d >> kubecfg.key<br><br>
			
			cat kubecfg.key  <br>
			: key파일 조회를 통하여 API 서버 접근 시 권한이 있는 key 값이 생성되어있는지 확인한다.<br><br><br>
			
			
			<img src="<%=request.getContextPath()%>/images/115.jpg" width="500" height="100" alt="images" ><br>
			- Dashboard API 서버 접근 관련 인증서 생성 (p12 인증서 파일)<br>
			openssl pkcs12 -export -clcerts -inkey kubecfg.key -in kubecfg.crt –out kubecfg.p12 <br>
			-name "kubernetes-admin“<br>  
			: 인증서 생성 명령어 적용 시 패스워드 생성 메시지 출력 확인 작업<br><br><br>
			
			<img src="<%=request.getContextPath()%>/images/116.jpg" width="500" height="70" alt="images" ><br>
			ls –la kubecfg.p12 <br>  
			: 접속을 위한 생성 및 권한 조회 확인 과정<br>
			
			<img src="<%=request.getContextPath()%>/images/117.jpg" width="800" height="400" alt="images" ><br>
			- Windows 환경에서 kubecfg.p12 ca.crt 인증서 적용 <br>
  			(로컬 환경에 다운로드 | 경로- certutil.exe -[인증서 생성시 PW] "Root" D:\cert\ca.crt)<br><br><br>

			
			<img src="<%=request.getContextPath()%>/images/118.jpg" width="500" height="300" alt="images" ><br>
			certutil.exe -p [인증키 생성시 PW] -user –importPFX D:\cert\kubecfg.p12 (개인용 인증서)<br>
			: 명령어 입력 시 인증서 설치 여부를     묻게 되며 예를 누를시 설치 진행<br><br><br>

			<img src="<%=request.getContextPath()%>/images/119.jpg" width="800" height="200" alt="images" ><br>
			- 인증서 갱신 및 정보가 변경되어 삭제해야 할 필요가 있을 경우 certmgr.msc 명령어 사용으로 인증서 확인 가능 (하단 출력 이미지)<br>
			<img src="<%=request.getContextPath()%>/images/120.jpg" width="800" height="300" alt="images" ><br><br><br>
			
			- kubernetes용 인증서 – 개인용 인증서와 신뢰할 수 있는 루트 인증 기관 인증서 발급 <br>
			<img src="<%=request.getContextPath()%>/images/121.jpg" width="800" height="300" alt="images" ><br>
			- 개인용 인증서 <br> <br>
			<img src="<%=request.getContextPath()%>/images/122.jpg" width="800" height="300" alt="images" ><br>
			- 신뢰할 수 있는 루트 인증 기관 인증서<br><br><br>
			
			- 인증서 적용 후  dashboard 접속(dashboard 접근 시 URL은 cluster-info 기반 정보/ Master IP로 접속) 
			 https://192.168.0.119:6443/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#/overview?namespace=default<br>
			<img src="<%=request.getContextPath()%>/images/123.jpg" width="300" height="300" alt="images" ><br><br><br>

			<img src="<%=request.getContextPath()%>/images/124.jpg" width="800" height="200" alt="images" ><br>
			- 대시보드 초기 접속 화면 – Token값 입력 후 접속<br><br><br>
			
			- 토큰 값 조회 – kubectl describe secret —all-namespaces (전체 조회)<br>
  				서비스 생성 계정 토큰 값 입력 후 (서비스 생성 계정 하단 토큰 값)<br>
			<img src="<%=request.getContextPath()%>/images/125.jpg" width="800" height="300" alt="images" ><br>
			
			: 생성된 계정 토큰 값을 입력하여 API Server 대시보드 접속 시 인증 및 인가 방식을 통하여 관리자 설정에 접근이   가능하다. <br><br><br>

			<img src="<%=request.getContextPath()%>/images/126.jpg" width="1000" height="400" alt="images" ><br>
			- 대시보드 접속 완료 (서비스 계정을 통한 인증 및 인가 방식 - API 서버 호출) <br>
			: 추후에 구축할 서비스별 POD 관리 및 모니터링 기능을 쉽게 이용하기 위하여 API Server 대시보드 구축을 진행    하였으며 대시보드 구축 시 관리 및 모니터링을 수월하게 진행 가능하다.<br><br><br>


			<p style="font-size:25px; font-weight: bold;">3) Metric Server 설치<br><br>
			<p style="font-size:18px; ">- Metric Server 기본 환경 구성<br>
										: Metric Server는 Kubernetes의 메트릭 수집 모니터링 아키텍처에서 코어메트릭 파이프라인 쪽을 가볍게 하기 위해   서힙스터를 deprecated시키고 그 다음으로 Kubernetes에서 모니터링을 사용된다. <br>
			<img src="<%=request.getContextPath()%>/images/127.jpg" width="800" height="400" alt="images" ><br><br>
			<img src="<%=request.getContextPath()%>/images/128.jpg" width="800" height="100" alt="images" ><br><br>
			<img src="<%=request.getContextPath()%>/images/129.jpg" width="800" height="400" alt="images" ><br><br>
			: 상황별로 조회 시 pods 별로 메트릭 서버가 생성되어 있는 것을 확인할 수 있으며, deploy에서 상단 설명처럼 <br>
			 코어 메트릭 파이프라인을 가볍게 사용하기 위해서 생성한 것을 확인 가능하다. 이러한 과정을 통하여 2장에 <br>
 			API 서버 대시보드 구축 과정을 거쳐 서비스별로 모니터링을 진행할 수 있다.<br><br><br>

			<img src="<%=request.getContextPath()%>/images/130.jpg" width="800" height="400" alt="images" ><br><br>
			: Metric Server를 설치하게 된다면 위에처럼 대시보드에서도  CPU와 메모리 사용량을 모니터링 할 수 있게 된다.<br><br><br><br>













		</div> 
    </div> 
    
    
     <script>
     
    </script> 