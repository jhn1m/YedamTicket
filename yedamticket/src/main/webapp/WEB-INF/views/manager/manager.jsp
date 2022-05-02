<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
input{
    margin: 5px 0;
}
</style>
</head>
<body>
	<div class="col-lg-12 grid-margin stretch-card">
		<div class="card">
			<form action="manager.do">
				<div class="card-body">
					<h4 class="card-title"style="font-size: 50px;">관리자 목록</h4><br>
					<table class="table table-hover" id="contents">
						<thead>
							<tr>
								<th>아이디</th>
								<th>이름</th>
								<th>부서</th>
								<th>권한</th>
							</tr>
						</thead>
						<tbody id="body">
							<c:forEach items="${manas}" var="mana">
								<tr onclick="location.href='managerSelet.do?MId=${mana.MId}'">
									<td>${mana.MId}</td>
									<td>${mana.name}</td>
									<td>${mana.depart}</td>
									<td>${mana.authCd}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<br>
					<div align="right" class="subBtn">
					<button type="button" class="btn btn-primary" class="btn btn-gradient-primary me-2" onclick="location.href='managerForm.do'">등록</button>
					<div id="content" align="center">
					<c:if test="${pageVO.prev }">
						<!-- 이전버튼 활성화 여부 -->
						<a href="manager.do?pageNum=${pageVO.startPage-1 }"> <input
							type="button" value="이전" class="btn btn-secondary"></a>
					</c:if>
					<!-- pageNum -->
					<c:forEach var="num" begin="${pageVO.startPage }"
						end="${pageVO.endPage }">
						<a class="${pageVO.pageNum == num ? 'active': '' }"
							href="manager.do?pageNum=${num }"> <input type="button"
							value="${num }" class="btn btn-secondary"></a>
					</c:forEach>
					<!-- 다음버튼 -->
					<c:if test="${pageVO.next }">
						<a href="manager.do?pageNum=${pageVO.endPage+1 }"> <input
							type="button" value="다음" class="btn btn-secondary"></a>
					</c:if>
				</div>
				<c:if test="${sessionId eq 'micol'}">
					</c:if>
						<div class="searchBar" align="right">
							<select id="inputState" name="searchType" style="border-style: none;">
								<option value="ALL" ${pageVO.cri.searchType eq 'ALL' ? 'selected' : '' }>전체</option>
								<option value="DEPART" ${pageVO.cri.searchType eq 'DEPART' ? 'selected' : '' }>부서</option>
								<option value="NAME" ${pageVO.cri.searchType eq 'NAME' ? 'selected' : '' }>이름</option>
								<option value="MID" ${pageVO.cri.searchType eq 'MID' ? 'selected' : '' }>아이디</option>
							</select> <input type="text" name="searchName"
								value="${pageVO.cri.searchName }">
							<button type="submit" class="btn-sm btn-primary">검색</button>
							<input type="hidden" name="pageNum" value="1">
							<!-- 검색버튼을 누르면 무조건 페이지 번호 1번으로 다시세팅 -->
							<input type="hidden" name="amount" value="${pageVO.amount }">
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>