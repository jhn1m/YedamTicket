<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		*{
			list-style:none;
		}
		.footer{
			position:fixed;
		}
	</style>
</head>
<body>
	<div class="col-lg-6 grid-margin stretch-card">
		<form action="deletePerforInsert.do" method="post">
			<div class="card">
				<div class="card-body">
					<h4 class="card-title">삭제 신청 페이지</h4>
					<p class="card-description">Performance</p>
					<table class="table">
						<tr>
							<input type="hidden" name="CId" id="CId" value="${CId }">
							<th>삭제 사유</th>
							<td><input type="text" name="content" id="content"></td>
							<th><input type="hidden" name="PNo" id="PNo" value="${del}"></th>
						</tr>
						<tr>
							<th>구분 코드</th>
							<td><input type="text" name="deleteCd" id="deleteCd"
								readonly="readonly" value="신청"></td>
						</tr>
						<tr>
							<th>삭제신청날짜</th>
							<td><input type="date" name="delDt" id="delDt" readonly="readonly"></td>
						</tr>
					</table>
					<br>
					<button type="submit" class="btn btn-gradient-primary me-2" style="background: #301e4e;margin-top: 5px;">요청</button>
					<input type="button" class="btn btn-light" value="Cancel" style="background: #301e4e;margin-top: 5px;" onclick="location.href='companyPerforList.do'">
				</div>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		document.getElementById('delDt').valueAsDate = new Date();
	</script>
</body>
</html>
