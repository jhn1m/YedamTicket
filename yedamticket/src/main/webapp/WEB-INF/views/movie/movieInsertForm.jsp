<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
list-style:none;
	}
textarea {
    resize: none;
  }
</style>
</head>
<input type="hidden" name="mvNo" id="mvNo">
<body>
	<div class="container">
		<div class="row" style="padding-bottom: 20px;">
			<div class="col-md-2"></div>
			<div class="col-md-9">
				<br>
				<h2 class="text-center">영화 등록</h2>
				<form id="frm" action="movieInsert.do" method="post" enctype="multipart/form-data">
				<input type="hidden" id="CId" name="CId" value="${sessionId }">
					<table class="table">
						<tr>
							<td>기업명</td>
							<td><input type="text" value="${sessionName }"class="form-control" readonly="readonly"></td>
						</tr>
						<tr>
							<td>영화 이름</td>
							<td><input type="text" id="name" name="name"
								class="form-control" required="required"></td>
						</tr>
						<tr>
							<td>장르</td>
							<td><input type="text" id="genre" name="genre"
								class="form-control" required="required"></td>
						</tr>
						<tr>
							<td>관람 등급</td>
							<td><select name="rating" class="form-control" required="required">
									<option value="전체관람가" selected="selected">전체관람가</option>
									<option value="12세관람가">12세관람가</option>
									<option value="15세관람가">15세관람가</option>
									<option value="18세관람가(청소년관람불가)">18세관람가(청소년관람불가)</option>
							</select></td>
						</tr>
						<tr>
							<td>감독</td>
							<td><input type="text" id="director" name="director"
								class="form-control" required="required"></td>
						</tr>
						<tr>
							<td>출연 배우</td>
							<td><input type="text" id="actor" name="actor"
								class="form-control" required="required"></td>
						</tr>
						<tr>
							<td>개봉일</td>
							<td><input type="date" id="startDate" name="startDate" value=""
								class="form-control" required="required"></td>
						</tr>
						<tr>
							<td>상영 시간(분)</td>
							<td><input type="text" id="runtime" name="runtime"
								class="form-control" required="required"></td>
						</tr>
						<tr>
							<td>배급사</td>
							<td><input type="text" id="distributor" name="distributor"
								class="form-control" required="required"></td>
						</tr>
						<tr>
							<td>제작 국가</td>
							<td><input type="text" id="country" name="country"
								class="form-control" required="required"></td>
						</tr>
						<tr>
							<td>포스터</td>
							<td><input type="file" id="file" name="file" multiple="multiple" accept="image/gif, image/jpeg, image/png" 
								class="form-control" required="required"></td>
						</tr>
						<tr>
							<td>동영상</td>
							<td><input type="file" id="fileV" name="fileV" multiple="multiple" 
								class="form-control" required="required"></td>
						</tr>
						<tr>
							<td>영화 코드</td>
							<td><input type="text" id="docId" name="docId"
								class="form-control" required="required"></td>
						</tr>
						<tr>
							<td>상세정보</td>
							<td><textarea rows="10" cols="75" id="content" name="content" required="required"
								></textarea></td>
						</tr>
					</table>
					<button type="submit" style="background-color: #cfc5e9;" class="form-control">등록</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
