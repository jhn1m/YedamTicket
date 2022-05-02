<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="col-lg-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title" style="font-size: 50px;">공연 삭제 요청 목록</h4><br>

				<table class="table table-hover">
					<thead>
						<tr>
							<th>공연 이름</th>
							<th>기업 아이디</th>
							<th>삭제 사유</th>
							<th>신청 현황</th>
						</tr>
					</thead>
					<tbody id="body">
						<c:forEach items="${pers }" var="per">
							<tr
								onclick="location.href='deleteRequestPFSelect.do?delReqNo=${per.delReqNo }'">
								<td>${per.performanceVO.name}</td>
								<td>${per.performanceVO.CId}</td>
								<td>${per.performanceVO.content}</td>
								<td>${per.deleteCd}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<br>
				<div id="content" align="center">
					<c:if test="${pageVO.prev }">
						<!-- 이전버튼 활성화 여부 -->
						<a
							href="managerPerforDeleteList.do?pageNum=${pageVO.startPage-1 }">
							<input type="button" value="이전" class="btn btn-secondary">
						</a>
					</c:if>
					<!-- pageNum -->
					<c:forEach var="num" begin="${pageVO.startPage }"
						end="${pageVO.endPage }">
						<a class="${pageVO.pageNum == num ? 'active': '' }"
							href="managerPerforDeleteList.do?pageNum=${num }"> <input
							type="button" value="${num }" class="btn btn-secondary"></a>
					</c:forEach>
					<!-- 다음버튼 -->
					<c:if test="${pageVO.next }">
						<a href="managerPerforDeleteList.do?pageNum=${pageVO.endPage+1 }">
							<input type="button" value="다음" class="btn btn-secondary">
						</a>
					</c:if>
				</div>
				<br>
				<form action="managerPerforDeleteList.do">
						<div class="searchBar" align="right">
							<select id="inputState" name="searchType" style="border-style: none;">
								<option value="ALL"
									${pageVO.cri.searchType eq 'ALL' ? 'selected' : '' }>전체</option>
								<option value="NAME"
									${pageVO.cri.searchType eq 'NAME' ? 'selected' : '' }>공연이름</option>
								<option value="DELETECD"
									${pageVO.cri.searchType eq 'DELETECD' ? 'selected' : '' }>처리결과</option>
							</select> <input type="text" name="searchName"
								value="${pageVO.cri.searchName }">
							<button type="submit" class="btn-sm btn-primary">검색</button>
							<input type="hidden" name="pageNum" value="1">
							<!-- 검색버튼을 누르면 무조건 페이지 번호 1번으로 다시세팅 -->
							<input type="hidden" name="amount" value="${pageVO.amount }">
						</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>