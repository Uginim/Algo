<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html data-contextpath="${pageContext.request.contextPath}">
<head>
	<title>메인화면</title>
	<meta charset="UTF-8">
	<!-- 절대경로 사용 -->
	<%@include file="/WEB-INF/views/include/meta.jsp" %>	
	<style>	
	.cont_left,.cont_right,.cont_center{width:33%;float:left;}
	.container ul li {display:inline-block;}
	h3{text-align:center;}
	
	span{display:inline-block;}
	.cont_left_inner,.cont_right_inner,.cont_center_inner{padding:30px;}
	.cont_left ul li{font-size:16px;text-align:center;}
	.cont_left ul li a{display:inline-block;padding:18px 0 0 0;}
	.cont_left ul li a:hover{font-weight:bold;}
	
	.cont_right_inner{font-size:16px;}
	.cont_right_inner ul li{display:inline-block;padding:18px 0 0 0;}
	.cont_right_inner ul li a:hover{font-weight:bold;}
	
	.cont_center_inner ul{padding:18px 0 0 0;text-align:center;}
	
	
	.container{height:auto;overflow:hidden;margin-bottom:30px;background:#fff;}
	.container h3{padding:0 0 10px 0;}
	
	</style>
	
	
</head>
<body>
<%@include file="/WEB-INF/views/include/header.jsp" %>
<!-- 슬라이드 start-->
<div class="slider" style="height:500px;">
<img src="<c:url value="/resources/images/main_img.jpg"/>" alt="" />
<img src="<c:url value="/resources/images/main_img2.jpg"/>" alt="" />
<img src="<c:url value="/resources/images/main_img3.png"/>" alt="" />
</div> 
<!-- 슬라이드 end-->
	<main class="container">
		<div class="cont_left">
			<div class="cont_left_inner">
				<h3>진행중인 문제</h3>
				<ul>
					<li style="width:100%;">
						<span><a href="#">자바란 무엇인가?</a></span>
						<span style="font-size:12px;">작성자: admin</span>
					</li>
					<li style="width:100%;">
						<span><a href="#">자바란 무엇인가?</a></span>
						<span style="font-size:12px;">작성자: admin</span>
					</li>
					<li style="width:100%;">
						<span><a href="#">자바란 무엇인가?</a></span>
						<span style="font-size:12px;">작성자: admin</span>
					</li>
					<li style="width:100%;">
						<span><a href="#">자바란 무엇인가?</a></span>
						<span style="font-size:12px;">작성자: admin</span>
					</li>
					<li style="width:100%;">
						<span><a href="#">자바란 무엇인가?</a></span>
						<span style="font-size:12px;">작성자: admin</span>
					</li>
					
																
				</ul>
			</div>
		</div>
		<div class="cont_center">
			<div class="cont_center_inner">
				<h3>랭킹 순위</h3>				
					<ul>
						<li>NO.1</li>
						<li>사용자1</li>									
					</ul>
					<ul>
						<li>NO.1</li>
						<li>사용자1</li>									
					</ul>
					<ul>
						<li>NO.1</li>
						<li>사용자1</li>									
					</ul>
					<ul>
						<li>NO.1</li>
						<li>사용자1</li>									
					</ul>										
			</div>
		</div>
		<div class="cont_right">
			<div class="cont_right_inner">
				<h3>질문 게시판</h3>				
					<ul>
						<li><a href="#"> 도대체 자바란 무엇인가요?  </a> </li>						
						<li style="float:right;">2020-03-20</li>										
					</ul>
					<ul>
						<li><a href="#"> 도대체 자바란 무엇인가요?  </a> </li>						
						<li style="float:right;">2020-03-20</li>										
					</ul>
					<ul>
						<li><a href="#"> 도대체 자바란 무엇인가요?  </a> </li>						
						<li style="float:right;">2020-03-20</li>										
					</ul>
					<ul>
						<li><a href="#"> 도대체 자바란 무엇인가요?  </a> </li>						
						<li style="float:right;">2020-03-20</li>										
					</ul>										
			</div>
		</div>
		
	<!-- 	<div class="ad" style="clear:both;"><img src="https://homepages.cae.wisc.edu/~ece533/images/cat.png" alt="" /></div> -->
		
	</main>	
<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>
