<%@page import="com.companyimgtab.TDto"%>
<%@page import="com.companyimgtab.TList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
    
    <div class="container">
		<div class="row"><br><br>
		<img src="<%=request.getContextPath()%>/images/image01.jpg" width="1000" height="500" alt="images" ><br>
			<p style="font-size:25px; font-weight: bold;">쿠버네티스(Kubernetes, k8s)<br>
  		    <p style="font-size:20px; font-weight: bold;">(1) 쿠버네티스란?<br>
			<p style="font-size:18px; ">도커는 컨테이너를 규모에 맞게 늘려가도록 배치하는 기능이 부족<br>
			컨테이너 애플리케이션을 배포하는 오케스트레이터를 구글이 개발<br>
			구글은 내부 서비스를 클라우드와 컨테이너 환경으로 오래전부터 사용<br>
			구글이 2014년 6월 오픈소스 프로젝트로 발표<br>
			2015년 7월 버전 1.0을 기반으로 CNCF(Cloud Native Computing Foundation)을 설립<br>
			레드햇, 이베이, AT&T, 시스코, IBM, 인텔, 트위터, VMware 등 다수 회사참여 개발<br><br><br>
			
			<p style="font-size:20px; font-weight: bold;">• Docker,Kubernetes 설치 및 시작<br><br>
			<p style="font-size:18px; ">yum install kubeadm docker -y<br>
			systemctl enable docker<br>
			systemctl restart docker<br>
			systemctl enable kubelet<br>
			systemctl restart kubelet<br><br>
			
			<p style="font-size:20px; font-weight: bold;">• 마스터 및 노드 구성<br><br>
       		  <p style="font-size:18px; ">마스터 노드 환경변수 설정<br>
			kubeadm init<br>
			mkdir -p $HOME/.kube<br>
			cp -i /etc/kubernetes/admin.conf $HOME/.kube/config<br>
			chown $(id -u):$(id -g) $HOME/.kube/config<br><br>

			

			<img src="<%=request.getContextPath()%>/images/110.jpg" width="800" height="100" alt="images" ><br>
			 <br>:  마스터 및 노드 조회는 kubectl get nods —all-namespaces 통하여 조회가 가능하다.<br> 
			구성은 master, spare, work1 로 구성하였으며,마스터 노드에서는 전체적인 제어를 담당하며, spare,work1을 통하여 자원을 확보한다.<br><br><br>
			• Container Network Interface 배포<br> :  네트워크 플러그인을 구성하기 위하여 각 POD의 네트워크를 설정<br>
			https://docs.projectcalico.org/getting-started/kubernetes/self-managed-onprem/onpremises<br>
			curl https://docs.projectcalico.org/manifests/calico.yaml -O<br>
			kubectl apply -f calico.yaml<br>
			
			
		</div> 
    </div> 
    
    
     <script>
     
    </script> 