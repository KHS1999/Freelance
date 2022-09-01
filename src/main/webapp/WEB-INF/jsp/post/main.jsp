<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

 

<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
	<div id="wrap">
		<header class="d-flex justify-content-between mt-3">
			<div>
				<h1>Puzzle Project</h1>
			</div>
			<nav class=" ml-3 col-10 mt-3">
				<ul class= "nav nav-fill">
					<li class="nav-item"><a href="#" class="nav-link text-secondary mt-2" ><b>프로젝트 등록</b></a></li>
					<li class="nav-item"><a href="#" class="nav-link text-secondary mt-2" ><b>프로젝트 찾기</b></a></li>
					<li class="nav-item"><a href="#" class="nav-link text-secondary mt-2" ><b>로그인 / 회원가입</b></a></li>
				</ul>
			</nav>
		</header>
		<section>
			<div>
				<img class="img" src="/static/images/main-banner1.jpg">
				<div class="content "><h1 class="section-content"></h1>프로젝트 홍보내용</div>
			</div>
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
	</div>

</body>
</html>