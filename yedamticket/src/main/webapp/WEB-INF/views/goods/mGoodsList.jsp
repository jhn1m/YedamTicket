<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
*{
	list-style: none;
}
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      
      .hr-sect{
	color: #7a5ecf;
	text-align: left;
	margin-top: 50px;
	margin-bottom: 5px;
	font-family: 'Gowun Dodum', sans-serif;
	width: 1400px;
}
    </style>
<body>
<div class="container">
	<h1 class="hr-sect">영화굿즈</h1>
		<hr>
</div>
 <div class="album py-5">
 <div class="container">
<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
				<c:forEach var="i" items="${mGoods }">
				<c:if test="${i.goodsCd eq 'mv' }">
					<div class="col-4">
						<div class="card shadow-sm" >
						
						<img src="/upload/${i.fileRe }" width="100%" height="225">
							<div class="card-body">
								<p class="card-text">${i.content}</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
									<form action="goodsPayForm.do" method="post">
										<input type="hidden" id="GNo" name="GNo" value="${i.GNo }">
										<input type="hidden" id="UId" name="UId" value="${sessionId }">
										<button type="submit" class="btn" style="background: #cfc5e9;">구매하기</button>
									</form>						
									</div>
									<p><b>${i.price}원</b></p>
								</div>
							</div>
						</div>
					</div>
					</c:if>
				</c:forEach>
			</div>
     </div>
  </div>
</body>
</html>