<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 찾기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

 

<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp"/>
		<div class="d-flex my-3 ">
			<div class="bg-dark">
				<input type="text" placeholder="프로젝트명 검색" class="form-control" >
			</div>
			<div class="ml-2">
				<button class="btn btn-outline-info">검색</button>	
			</div>
		</div>
		<section class="bg-secondary  py-3">
			<div class="d-flex">
				<div class="d-flex justify-content-center my-3 bg-white search-section">
					<div class="text-align-center">[원격/상주] 오프라인 카페 브랜드 SNS,마케팅 총괄 - 콘텐츠 마케터, 마케팅 전략 기획자</div>

						마케팅·광고
						# 콘텐츠 마케터
						# 마케팅 전략 기획자
						# 브랜드 마케터
						# CMO,Chief Marketing Officer
						예상 금액 : 400만원 ~ 600만원 월 단위
						시작 예정일 : 2022-10-03 협의 가능
						예상 기간 : 3개월
					</div>
				</div>
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
	</div>
</body>
</html>