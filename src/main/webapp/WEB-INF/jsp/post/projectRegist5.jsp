<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 등록2</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

 

<link rel="stylesheet" href="/static/css/style.css" type="text/css">
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
						 <img src="/static/images/number5.png" width="25px"><span class="ml-3">상세 정보</span>
					</div>
					<div >
						
					</div>							
					<div>
					<button id="preBtn" type="button" class="btn btn-outline-secondary mr-3" >이전단계</button>
						<button id="nextBtn" type="button" class="btn btn-outline-primary mr-3">등록하기</button>
					</div>
				</div>	
					<div>
						<div class="d-flex justify-content-between mt-3">
							<div class="ml-3">
								<span class="mr-3">현재 프로젝트 진행 상황</span><span class="text-danger">*</span>
								<textarea id="progressInput" class="form-control mt-2" rows="5" cols="30">
								</textarea>
							</div>
							<div class="mr-3">
								주요 담당 업무<span class="text-danger">*</span>
								<textarea  id="mainInput" class="form-control mt-2" rows="5" cols="30"">
								</textarea>
							</div>
						</div>
					</div>
					<div>
						<div class="d-flex justify-content-between mt-5">
							<div class="ml-3">
								세부 업무 범위<span class="text-danger">*</span>
								<div class="d-flex mt-2">
								<textarea id="detailInput" class="form-control mt-2" rows="5" cols="30">
								</textarea>
								</div>						
							</div>
							<div class="mr-3">
								<div>
									프로젝트 관련자료
								</div>
								<div>이력서/포트폴리오 등록</div>
								<input type="file" class="mt-5">
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
			
			$("#nextBtn").on("click",function(){
				
				
			});
			
			$("#preBtn").on("click",function(){
				
				location.href="/post/regist4";
			});
		});
	</script>

</body>
</html>