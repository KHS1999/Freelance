<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 등록4</title>
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
			<form id="form" action="/post/regist5" method="get">
			<div class="py-3 section-div">
				<div class="d-flex justify-content-between">
					<div class="ml-3 text-primary">
						 <img src="/static/images/number4.png" width="25px"><span class="ml-3">예산 및 근무방식</span>
					</div>
					<div >
						
					</div>							
					<div>
					<button id="preBtn" type="button" class="btn btn-outline-secondary mr-3" >이전단계</button>
						<button id="nextBtn" type="submit" class="btn btn-outline-primary mr-3">다음단계</button>
					</div>
				</div>	
					<div>
						<div class="d-flex justify-content-between mt-3">
							<div class="ml-3">
								<span class="mr-3">프로젝트 예산</span><span class="text-danger">*</span>
								<div class="mt-2">
									<label><input type="radio"  name="projectBudget" value="월" checked>월 단위</label>
									<label class="ml-2"><input type="radio"  name="projectBudget" value="프로젝트">프로젝트 단위</label>
								</div>
							</div>
							<div class="mr-3">
								근무 방식<span class="text-danger">*</span>
									<select id="workWayInput" name="workWay" class="form-control mr-2 mt-2" >
										<option selected value="0">근무 방식을 선택해 주세요</option>
										<option  value="상주">상주 근무</option>
										<option value="원격">원격 근무</option>
										<option  value="상주,원격 모두 가능">상주,원격 모두 가능</option>
									</select>
							</div>
						</div>
					</div>
					<div>
						<div class="d-flex justify-content-between mt-5">
							<div class="ml-3">
								필요 인력 및 희망 연차<span class="text-danger">*</span>
								<div class="d-flex mt-2">
									<input name="minAmount" id="minAmountInput" type="text" class="form-control mr-2" placeholder="최소금액">~
									<input name="maxAmount" id="maxAmountInput" type="text" class="form-control ml-2" placeholder="최대금액">
								</div>						
							</div>					
					</div>
				</div>		
			</div>
				<input type="hidden" value="${param.companyName }" name="companyName">
				<input type="hidden" value="${param.name }" name="name">
				<input type="hidden" value="${param.email }" name="email">
				<input type="hidden" value="${param.phoneNumber }" name="phoneNumber">
				<input type="hidden" value="${param.projectName }" name="projectName">
				<input type="hidden" value="${param.job }" name="job">
				<input type="hidden" value="${param.needPerson }" name="needPerson">
				<input type="hidden" value="${param.year }" name="year">
				<input type="hidden" value="${param.skill}" name="skill">
				<input type="hidden" value="${param.startProject }" name="startProject">
				<input type="hidden" value="${param.expectTerm }" name="expectTerm">
				 
			</form>	
		</div>	
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
	
	</div>
	
	<script>
		$(document).ready(function(){
			
			 
			$("#form").on("submit",function(){
				
				let workWay = $("#workWayInput").val();
				let minAmount = $("#minAmountInput").val();
				let maxAmount = $("#maxAmountInput").val();
				
				if(workWay == 0){
						alert("근무 방식을 선택해주세요");
						return false;
					}
				
				if(minAmount == ""){
						alert("최소금액을 작성해주세요");
						return false;
					}
				if(maxAmount == ""){
					alert("최대금액을 작성해주세요");
					return false;
				}
			});
			
			$("#preBtn").on("click",function(){
				
				location.href="/post/regist3";
			});
		});
	</script>

</body>
</html>