<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 등록1</title>
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
			<form  id="form" action="/post/regist2" method="get">	
				<div class="d-flex justify-content-between">
					<div class="ml-3 text-primary">
						 <img src="/static/images/number1.png" width="25px"><span class="ml-3">의뢰인 정보</span>
					</div>
							
					<div>
						<button id="nextBtn" type="submit" class="btn btn-outline-primary mr-3">다음단계</button>
					</div>
				</div>	
					
					<div>
						<div class="d-flex justify-content-between mt-3">
							<div class="ml-3">
								<span class="mr-3">회사명(사업자명)</span>
								<input type="checkbox"><span class="text-secondary ">사업자가 아닙니다</span>.
								<input name="companyName" id="companyNameInput" type="text" class="form-control mt-2">
							</div>
							<div class="mr-3">
								담당자이름<span class="text-danger">*</span>
								<input name="name" id="nameInput" type="text" class="form-control mt-2">
							</div>
						</div>
					</div>
					<div>
						<div class="d-flex justify-content-between mt-5">
							<div class="ml-3">
								담당자 이메일<span class="text-danger">*</span>
								<input name="email" id="emailInput" type="text" class="form-control mt-2">
							</div>
							<div class="mr-3">
								담당자 연락처<span class="text-danger">*</span>
								<input name="phoneNumber" id="phoneNumberInput" type="text" class="form-control mt-2">
							</div>						
					</div>
				</div>	
				</form>	
			</div>
		</div>	
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
	
	</div>
	
	<script>
		$(document).ready(function(){
			
			
			$("#form").on("submit",function(){
				
				let companyName = $("#companyName").val();
				let name = $("#nameInput").val();
				let email = $("#emailInput").val();
				let phoneNumber = $("#phoneNumber").val();
				
				
				if(name == ""){
					alert("이름을 작성해주세요");
					return false;
				}
				
				if(email == ""){
					alert("이메일을 작성해주세요")
					return false;
				}
				
				if(phoneNumber == ""){
					alert("연락처를 작성해주세요")
					return false;
				}
				
					
			});
				
		});
		
	</script>

</body>
</html>