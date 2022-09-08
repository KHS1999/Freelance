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
			<form id="form" action="/post/regist3" method="get">
				<div class="d-flex justify-content-between">
					<div class="ml-3 text-primary">
						 <img src="/static/images/number2.png" width="25px"><span class="ml-3">프로젝트 기본 정보</span>
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
								<span class="mr-3">프로젝트명</span><span class="text-danger">*</span><span class="text-align-right">0/30</span>
								<input name="projectName" id="projectNameInput" type="text" class="form-control mt-2">
							</div>
							<div class="mr-3">
								직군/직무<span class="text-danger">*</span>
								<input name="job" id="jobInput" type="text" class="form-control mt-2">
							</div>
						</div>
					</div>
					<div>
						<div class="d-flex justify-content-between mt-5">
							<div class="ml-3">
								필요 인력 및 희망 연차<span class="text-danger">*</span>
								<div class="d-flex mt-2">
									<input name="needPerson" id="needPersonInput" type="text" class="form-control mr-2">명
								</div>
								<div class="d-flex mt-2">
								 	<input name="year" id="yearInput" type="text" class="form-control mr-2">년
								</div>							
							</div>
							<div class="mr-3">
								요구 스킬<span class="text-danger">*</span>
								<input name="skill" id="skillInput" type="text" class="form-control mt-2" placeholder="ex) rudy,python,illustrator등">
							</div>						
					</div>
				</div>
				<input type="hidden" value="${param.companyName }" name="companyName">
				<input type="hidden" value="${param.name }" name="name">
				<input type="hidden" value="${param.email }" name="email">
				<input type="hidden" value="${param.phoneNumber }" name="phoneNumber">
				</form>
			</div>
		</div>	
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
	
	</div>
	
	<script>
		$(document).ready(function(){
			
			$("#form").on("submit",function(){
				
				let projectName = $("#projectNameInput").val();
				let job = $("#jobInput").val();
				let needPerson = $("#needPersonInput"). val();
				let year = $("#yearInput").val();
				let skill = $("#skillInput").val();
				
				if(projectName == ""){
					alert("프로젝트 이름을 작성해주세요");
					return false;
				}
				
				if(job == ""){
					alert("직군/직무 를 작성해주세요");
					return false;
				}
				
				if(needPerson == ""){
					alert("인원을 작성해주세요");
					return false;
				}
				
				if(year == ""){
					alert("희망 연차를 작성해주세요");
					return false;
				}
				
				if(skill == ""){
					alert("필요한 스킬을 작성해주세요");
					return false;
				}
				
				
			});
			
			$("#preBtn").on("click",function(){
				
				location.href="/post/regist1";
			});
		});
	</script>

</body>
</html>