<%@page import="com.companyimgtab.TDto"%>
<%@page import="com.companyimgtab.TList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
    
    <div class="container">
		<div class="row"><br><br>
			<img src="<%=request.getContextPath()%>/images/openstakinpree.jpg" width="1000" height="500" alt="images" ><br><br>
			<p style="font-size:25px; font-weight: bold;">1) OpenStack 설치<br><br></p>
			<p style="font-size:18px; ">1-1) PeckStack Rocky 버전 설치</p>
			<p style="font-size:18px; ">• Controller, Compute, Network 기본 설정<br><br>
			<img src="<%=request.getContextPath()%>/images/3.jpg" width="600" height="100" alt="images" ><br>
			- OpenStack 구축 시 Controller, Compute, Network node를 hostname으로 지정하여 작업을 진행한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/4.jpg" width="600" height="300" alt="images" ><br>
			- 각각 지정된 Controller, Compute, Network node를 연동 작업을 진행한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/5.jpg" width="600" height="300" alt="images" ><br>
			- 네트워크 설정 전 백업 파일 생성을 진행하며 OpenStack 구축에 필요한 기초적인 설정 작업을 진행한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/7.jpg" width="800" height="500" alt="images" ><br>
			- Packstack 설치 진행 전 SSH 설정을 진행해준다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/8.jpg" width="800" height="500" alt="images" ><br>
			- SSH 연결을 위한 PC별 암호 설정 (다른 PC와 같은 환경설정 진행)<br><br><br>
			<img src="<%=request.getContextPath()%>/images/9.jpg" width="600" height="300" alt="images" ><br>
			- SSH 확인 과정 진행<br><br><br>
			<img src="<%=request.getContextPath()%>/images/10.jpg" width="800" height="500" alt="images" ><br>
			- Openstack Rocky 패키지 설치 진행  ※ 설치 진행 전 yum update –y (최신버전 유지 필수)<br><br><br>
			<img src="<%=request.getContextPath()%>/images/11.jpg" width="800" height="500" alt="images" ><br>
			- Openstack Rocky 패키지 설치 진행 –1<br><br><br>
			<img src="<%=request.getContextPath()%>/images/12.jpg" width="800" height="300" alt="images" ><br>
			- Openstack Utils 설치 진행 : 설치 및 시스템 구성을 쉽게 할 수 있는 유틸리티 프로그램을 설치한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/13.jpg" width="800" height="300" alt="images" ><br>
			- NTP(Network Time Protocol) 설치  : NTP를 구현하는 Chrony를 설치하여 노드 사이에 서비스들을 적절히 동기화하도록 하는 역할을 수행한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/14.jpg" width="800" height="500" alt="images" ><br>
			- 패키지 수동 설치 진행 : 자동 설치 시 발생할 수 있는 오류들로 인하여 수동설치 진행을 하였다.(전체 Node - 다른 PC 환경 동일 진행)<br><br><br>
			<img src="<%=request.getContextPath()%>/images/15.jpg" width="800" height="500" alt="images" ><br>
			- Packstack 설치 과정 중 Answer 파일 수정 과정 (answer 파일을 통하여 다양한 환경설정 파일 작성 가능)<br><br><br>
			<img src="<%=request.getContextPath()%>/images/16.jpg" width="800" height="200" alt="images" ><br>
			- Packstack 설치 과정 중 Answer 파일 적용 및 설치 진행<br><br><br>
			<img src="<%=request.getContextPath()%>/images/17.jpg" width="800" height="200" alt="images" ><br>
			- keystone 임시 암호 대신 계정 정보 변경을 통하여 암호 재설정 진행 <br><br><br>
			<img src="<%=request.getContextPath()%>/images/18.jpg" width="800" height="300" alt="images" ><br>
			- Dashboard 관련하여 Horizon 설정 변경 과정 (이미지 파일과 동일하게 설정 적용 진행) <br><br><br>
			<img src="<%=request.getContextPath()%>/images/19.jpg" width="800" height="200" alt="images" ><br>
			- Apache2 접속 설정 진행 과정 <br><br><br>
			<img src="<%=request.getContextPath()%>/images/20.jpg" width="800" height="100" alt="images" ><br>
			- 추가 패키지 구성 <br><br><br>
			<img src="<%=request.getContextPath()%>/images/21.jpg" width="800" height="400" alt="images" ><br>
			- 대시 보드 UI 구축 후 비밀번호 변경 방법   : 상단에서 수동으로 파일을 수정하거나 대시 보드에서 사용자가 원하는 비밀번호를 구성하여 변경할 수 있다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/22.jpg" width="800" height="50" alt="images" ><br>
			- Network Node 에서도 동일한 작업 수행 (openstack-utils 설치 진행 – Controller Node 제외)<br><br><br>
			<img src="<%=request.getContextPath()%>/images/23.jpg" width="800" height="400" alt="images" ><br>
			- Network Node br-ex 설정 진행 과정   : 인스턴스의 외부 인터넷 사용을 위해서 br-ex 설정을 진행한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/24.jpg" width="800" height="70" alt="images" ><br>
			- Network Node 서비스 설정 적용 진행 과정<br><br><br>
			<img src="<%=request.getContextPath()%>/images/25.jpg" width="800" height="50" alt="images" ><br>
			- Controller Node lbaas 설치 진행 과정:  Neutron LBaaS(Load-Balancer-as-a-Service,이하 LBaaS) 는 Load-Balancer 기능을 제공 하며, NeutronAPI를  통하여 기능을 구현한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/26.jpg" width="800" height="300" alt="images" ><br>
			- Controller Node lbaas 설치 진행 과정 : lbaas v2 버전으로 설치를 진행하며 Newtron에서 v2 버전으로 기본적으로 작동한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/27.jpg" width="800" height="80" alt="images" ><br>
			- Controller Node lbaas 설치 진행 과정   :  Neutron LBaaS에 관하여 최종적으로 설정 적용을 진행한다.<br><br><br>
			<img src="<%=request.getContextPath()%>/images/28.jpg" width="800" height="80" alt="images" ><br>
			- Network Node lbaas 서비스 적용 (나머지 Node 전부 적용)<br><br><br>
			<img src="<%=request.getContextPath()%>/images/29.jpg" width="800" height="80" alt="images" ><br>
			- Controller Node Aodh 오류 수정 과정<br><br><br>
			<img src="<%=request.getContextPath()%>/images/30.jpg" width="800" height="200" alt="images" ><br>
			- Controller Node pip 설치 진행<br><br><br>
			<img src="<%=request.getContextPath()%>/images/31.jpg" width="800" height="400" alt="images" ><br>
			- Controller Node 필요 패키지 재설치 과정<br><br><br>
			<img src="<%=request.getContextPath()%>/images/32.jpg" width="800" height="80" alt="images" ><br>
			- Compute Node 이용 이미지 생성 준비<br><br><br><br><br>
			
		</div> 
    </div> 
    
    
     <script>
     
    </script> 