<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<<<<<<< HEAD
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
=======
>>>>>>> develop
<style>
    /* 사이드바 */
    .sidenav {
      position: absolute;
      width: 200px;
      height: 100%;
      margin-left: -20px;
      margin-top:50px
    }
    /* 본문 */
    .page {
     margin-top:50px;
     margin-left: 250px;
    }
</style>
</head>
<body>
<div class="container-fluid">
  <nav class="col-sm-3 sidenav">
      <ul class="nav nav-pills nav-stacked">
        <li><a href="userUpdateForm.do">회원정보수정</a></li>
      </ul>
      <ul class="nav nav-pills nav-stacked">
      <li><a href="userDeleteForm.do">회원탈퇴</a></li>
<<<<<<< HEAD
=======

>>>>>>> develop
      </ul>
    </nav>

		<div class="col-sm-9 page">
			<div class="col-6">
				<h4 class="mb-3" align="left">회원정보수정</h4>
<<<<<<< HEAD
				<form class="frm" action="userUpdate.do" method="POST" onsubmit="alertt();" id="frms">
=======

				<form class="frm" action="userUpdate.do" method="POST" onsubmit="alertt();">
>>>>>>> develop
					
					<div class="row g-3">
						<div class="col-12" align="left">
							<label for="UId" class="form-label">아이디</label>
							<div class="input-group has-validation">
								<input type="text" class="form-control" name="UId" id="UId" value="${sessionId}" placeholder="Id" readonly="readonly">
							</div>
						</div>
						<div class="col-6" align="left">
							<label for="password" class="form-label">비밀번호</label>
							<div class="input-group has-validation">
<<<<<<< HEAD
=======

>>>>>>> develop
								<input type="password" class="form-control pw" name="pwd" id="pwd1" value="" placeholder="password" required>
							</div>
						</div>
						<div class="col-6" align="left">
							<label for="password" class="form-label">비밀번호확인</label>&nbsp;&nbsp;<font id = "checkPw" size = "2"></font>
							<div class="input-group has-validation">
								<input type="password" class="form-control pw" name="pwd2" id="pwd2" value="" placeholder="password" >
<<<<<<< HEAD
=======

>>>>>>> develop
							</div>
						</div>
						<div class="col-12" align="left">
							<label for="username" class="form-label">이름</label>
							<div class="input-group has-validation">
<<<<<<< HEAD
								<input type="text" class="form-control" id="name" name="name" value="${user.name }"placeholder="Username" readonly="readonly">
=======

								<input type="text" class="form-control" id="name" name="name" value="${sessionName }"placeholder="Username" readonly="readonly">

>>>>>>> develop
							</div>
						</div>
						<div class="col-12" align="left">
							<label for="phone" class="form-label">이메일</label>
							<div class="input-group has-validation">
<<<<<<< HEAD
								<input type="text" class="form-control" name="email" id="email" value="${user.email }0"placeholder="your@email.com.." required>
=======

								<input type="text" class="form-control" name="email" id="email" value="${sessionEmail}"placeholder="your@email.com.." required>
>>>>>>> develop
							</div>
						</div>
						<div class="col-12" align="left">
							<label for="phone" class="form-label">전화번호</label>
							<div class="input-group has-validation">
<<<<<<< HEAD
								<input type="text" class="form-control" name="phone" id="phone" value="${user.phone }"placeholder="phone" required>
=======
							<input type="text" class="form-control" name="phone" id="phone" value="${sessionPhone}"placeholder="phone" required>
>>>>>>> develop
							</div>
						</div>
						<div class="col-12" align="left">
							<label for="addr" class="form-label">주소</label>
							<div class="input-group has-validation">
<<<<<<< HEAD
								<input type="text" class="form-control" name="addr" id="addr" value="${user.addr }"placeholder="daegu..." required>
							</div>
							<div align="right">
								<button id="updateBtn" type="submit" class="btn btn-primary">수정</button>
=======
								<input type="text" class="form-control" name="addr" id="addr" value="${sessionAddr }"placeholder="daegu..." required>
							</div>
							<div align="right">
								<button type="submit" id= "subBtn"class="btn btn-primary">수정</button>
>>>>>>> develop
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

<<<<<<< HEAD
	<script>

/* 	let data = {
			UId: $("#UId").val(),
			pwd: $("#pwd").val(),
			name:$("#name").val(),
			addr: $("#addr").val(),
			phone: $("#phone").val(),
			email: $("#email").val()
	}
	 */
	 
		/* $.ajax({
			type:"POST",
			url:"userUpdate.do",
			 data: JSON.stringify($("#frms").serialize()),
	         contentType: "application/json; charset=utf-8",
	         dataType: "json",
			success : function(res){
				if(res.length>0){
					alert("회원정보 수정이 완료되었습니다");	
				}
			},
			error:function(){
				alert("실패");
			} 
			
		});*/
		

		$("#updateBtn").attr('disabled',true);
		$('.pw').keyup(function(){
	    	let pass1 = $("#pwd1").val();
	        let pass2 = $("#pwd2").val();
	        
	        if (pass1 != "" || pass2 != ""){
	        	if (pass1 == pass2){
	            	$("#checkPw").html('일치');
	            	$("#checkPw").attr('color','green');
	            	$("#updateBtn").attr('disabled',false);
	            } else {
	            	$("#checkPw").html('불일치');
	                $("#checkPw").attr('color','red');
	                $("#updateBtn").attr('disabled',true);
	            }
	        }
	    
	    })
		   
	    function alertt(){
			alert("회원정보가 수정되었습니다.")
		}
	    
		
	
	</script>
=======
	<script src = "js/jquery-3.6.0.min.js"></script>
	<script>
	$("#subBtn").attr('disabled',true);
	$('.pw').keyup(function(){
    	let pass1 = $("#pwd1").val();
        let pass2 = $("#pwd2").val();
        
        if (pass1 != "" || pass2 != ""){
        	if (pass1 == pass2){
            	$("#checkPw").html('일치');
            	$("#checkPw").attr('color','green');
            	$("#subBtn").attr('disabled',false);
            } else {
            	$("#checkPw").html('불일치');
                $("#checkPw").attr('color','red');
                $("#subBtn").attr('disabled',true);
            }
        }
    
    })
	   
    function alertt(){
		alert("회원정보가 수정되었습니다.")
	}
    
	</script>

>>>>>>> develop
</body>
</html>