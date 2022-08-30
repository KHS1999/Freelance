<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

 

<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
	<div id="wrap">
		<header class="py-5">
			<div class="text-center">
				<h1>Want You</h1>
			</div>
		</header>
		<section class="d-flex justify-content-center rounded section  ">
			<div class="my-3">
				<h1 class="text-center">회원가입</h1>
				<div class="d-flex justify-content">
					<input type="text" id="idInput" class="form-control mt-2" placeholder="사용자 아이디">
					<button  id="isDuplicateBtn" class="btn bg-info text-white ml-2">중복확인</button>
				</div>
				<div class="small">
					<sapn id="possibleText" class="text-success d-none">사용가능한 ID 입니다.</sapn>
					<sapn id="duplicateText" class="text-danger d-none">중복된 ID 입니다.</sapn>
				</div>
				<input type="password" id="passwordInput" class="form-control mt-2" placeholder="비밀번호">
				<input type="password" id="passwordcheckInput" class="form-control mt-2" placeholder="비밀번호 확인">
				<input type="text" id="nameInput" class="form-control mt-2" placeholder="이름">
				<input type="text" id="emailInput" class="form-control mt-2" placeholder="이메일">
				<input type="text" id="jobInput" class="form-control mt-2" placeholder="직군/직무">
				<input type="text" id="careerInput" class="form-control mt-2" placeholder="경력">				
				<input type="text" id="salaryInput" class="form-control mt-2" placeholder="희망급여(만원)">	
				<button id="signupBtn" class="btn bg-primary text-white form-control mt-2 ">회원가입</button>
			</div>
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
	</div>
	<script>
		$(document).ready(function(){
			$("#isDuplicateBtn").on("click",function(){
				
				var isDuplicateCheck = false;
				var isDuplicateId = true;
				
				$("#idInput").on("input",function() {
					 isDuplicateCheck = false;
					 isDuplicateId = true;		
					$("#possibleText").addClass("d-none");
					$("#duplicateText").addClass("d-none");
				});	
				 
				let id = $("#idInput").val();
				
				if(id == ""){
					alert("아이디를 입력하세요");
					return;
				}
				$.ajax({
					type:"get",
					url:"/user/duplicate_id",
					data:{"loginId":loginId},
					success:function(data){
						if(data.result == true){
							$("#duplicateText").removeClass("d-none");
							$("#possibleText").addClass("d-none");					
						}else{
							$("#possibleText").removeClass("d-none");
							$("duplicateText").addClass("d-none");
						}
					},
					error:function(){
						alert("중복확인 에러");
						return;
					}
				});
				
			});
			
			$("#signupBtn").on("click",function(){
				
				let id = $("#idInput").val();
				let password = $("#passwordInput").val();
				let passwordcheck = $("#passwordcheckInput").val();
				let name = $("#nameInput").val();
				let email = $("#emailInput").val();
				let job = $("#jobInput").val();
				let career = $("#careerInput").val();
				let salary = $("#salaryInput").val();
				
				if(id == ""){
					alert("아이디를 입력하세요");
					return;
				}
				
				if(password == ""){
					alert("비밀번호를 입력해주세요");
					return;
				}
				
				if(password == ""){
					alert("비밀번호 확인란을 입력해주세요");
				}
				
				if(password != passwordcheck){					
					alert("비밀번호가 일치하지 않습니다");
					return
				}
				
				if(name == ""){
					alert("이름을 입력해주세요");
					return;
				}
				
				if(email == ""){
					alert("이메일을 입력해주세요");
					return;
				}
				
				if(job == ""){
					alert("직군/직무를 입력해주세요");
					return;
				}
				
				if(career == ""){
					alert("경력을 입력해주세요");
					return;
				}
				
				if(salary == ""){
					alert("희망급여를 입력해주세요");
					return;
				}
				
				$.ajax({
					type:"post",
					url:"/user/signup",
					data:{"loginId":id,"password":password, "name":name, "email":email, "job":job, "career":career,"salary":salary},
					success:function(data){
						if(data.result == "success"){
							location.href="/user/signin"
						}else{
							alert("회원가입 실패!");
							return;
						}
					},
					error:function(){
						alert("회원가입 오류");
						return;
					}
					
				});
			});
		});
	</script>

</body>
</html>