<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 등록3</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

 
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 

<link rel="stylesheet" href="/static/css/style.css" type="text/css">
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp"/>
		<section class="section-bg">
			<h1 class="text-center mt-3 pt-3">프로젝트 / 외주등록</h1>
			<div class="d-flex justify-content-center mt-5">
			<div class="py-3 section-div">
				<div class="d-flex justify-content-between">
					<div class="ml-3 text-primary">
						 <img src="/static/images/number3.png" width="25px"><span class="ml-3">일정</span>
					</div>
					<div >
						
					</div>							
					<div>
					<button id="preBtn" type="button" class="btn btn-outline-secondary mr-3" >이전단계</button>
						<button id="nextBtn" type="button" class="btn btn-outline-primary mr-3">다음단계</button>
					</div>
				</div>	
					<div>
						<div class="d-flex mt-3 justify-content-between">
							<div class="ml-3 ">
								<span class="mr-3">프로젝트시작 희망일</span><span class="text-danger">*</span>
								<input type="checkbox">협의가능
								<input  id="Date" type="text" class="form-control mt-2" placeholder="날짜 선택">
							</div>
							<div class="px-3  ">
								예상기간<span class="text-danger">*</span>
								<div class="d-flex mt-2">
									<select  class="form-control mr-2">
										<option value="month">개월</option>
										<option value="week">주</option>
									</select>
									<div>
										<input type="text" class="form-control px-3" placeholder="시간기입(숫자)"> 
									</div>
								</div>	
							</div>

						</div>
					</div>
	
			</div>
		</div>	
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
	
	</div>
	
	<script>
		$(document).ready(function(){
			
			$.datepicker.setDefaults({
		        dateFormat: 'yy-mm-dd',
		        prevText: '이전 달',
		        nextText: '다음 달',
		        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
		        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		        yearSuffix: '년'
		    });
			
			$(function(){
				$("#Date").datepicker();
			});
			
			$("#nextBtn").on("click",function(){
				
				location.href="/post/regist4";
			});
			
			$("#preBtn").on("click",function(){
				
				location.href="/post/regist2";
			});
		});
	</script>

</body>
</html>