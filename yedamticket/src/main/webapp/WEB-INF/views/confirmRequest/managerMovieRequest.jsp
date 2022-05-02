<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	th{
		font-size: 25px;
	}
</style>
<script src="./resources/users/js/core/jquery.min.js"
	type="text/javascript"></script>
</head>
<body>
	<div class="col-lg-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title" style="font-size: 50px;">영화 등록 요청 목록</h4>
				<br>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>영화 번호</th>
							<th>영화 제목</th>
							<th>장 르</th>
							<th>기업 아이디</th>
							<th>관람 등급</th>
							<th>요청 상태</th>
						</tr>
					</thead>
					<tbody id="body">
						<c:forEach items="${conf }" var="con">
							<tr onclick="location.href='movieConfirmSelect.do?mvNo=${con.mvNo}'">
								<td>${con.mvNo }</td>
								<td>${con.name }</td>
								<td>${con.genre }</td>
								<td>${con.CId }</td>
								<td>${con.rating }</td>
								<td>${con.confirm }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<br>
				<div id="content" align="center">
					<c:if test="${pageVO.prev }">
						<!-- 이전버튼 활성화 여부 -->
						<a href="#?pageNum=${pageVO.startPage-1 }">
							<input type="button" value="이전" class="btn btn-secondary">
						</a>
					</c:if>
					<!-- pageNum -->
					<c:forEach var="num" begin="${pageVO.startPage }"
						end="${pageVO.endPage }">
						<a class="${pageVO.pageNum == num ? 'active': '' }"
							href="#?pageNum=${num }"> <input
							type="button" value="${num }" class="btn btn-secondary"></a>
					</c:forEach>
					<!-- 다음버튼 -->
					<c:if test="${pageVO.next }">
						<a href="#?pageNum=${pageVO.endPage+1 }">
							<input type="button" value="다음" class="btn btn-secondary">
						</a>
					</c:if>
				</div>
				<br>
				<form action="movieConfirmList.do" method="get">
						<div class="searchBar" align="right">
							<select id="inputState" name="searchType" style="border-style: none;">
								<option value="ALL"
									${pageVO.cri.searchType eq 'ALL' ? 'selected' : '' }>전체</option>
								<option value="NAME"
									${pageVO.cri.searchType eq 'NAME' ? 'selected' : '' }>이름</option>
							</select> <input type="text" name="searchName"
								value="${pageVO.cri.searchName }">
							<button type="submit" class="btn-sm btn-primary">검색</button>
							<input type="hidden" name="pageNum" value="1">
							<!-- 검색버튼을 누르면 무조건 페이지 번호 1번으로 다시세팅 -->
							<input type="hidden" name="amount" value="${pageVO.cri.amount }">
					</div>
				</form>
				
				<form id="actionForm" action="movieConfirmList.do" method="get">
                  <input type="hidden" name="pageNum" value="${pageVO.pageNum }">
                  <input type="hidden" name="amount" value="${pageVO.amount }">
                  <input type="hidden" name="searchType" value="${pageVO.cri.searchType }">
                  <input type="hidden" name="searchName" value="${pageVO.cri.searchName }">
               </form>
			</div>
		</div>
	</div>
	
	<script>
      let actionForm = $("#actionForm");
      $("#content a").on("click", function(e){
         e.preventDefault();
         console.log("click");
         console.log($(this).attr("href"));
         actionForm.find("input[name='pageNum']").val($(this).attr("href"));
         
         actionForm.submit();
      });
   </script>
</body>
</html>