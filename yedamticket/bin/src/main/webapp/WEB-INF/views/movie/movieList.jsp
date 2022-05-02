<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/users/css/movieList.css">
<script src="resources/users/js/movieList.js"></script>
<style>
#result {
  position: relative;
  
}
.image {
  display: block;
  width: 100%;
  height: auto;
}
figure > img{
  display: block;
  width: 100%;
  height: auto;	
}
.caption {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  height: 100%;
  width: 100%;
  opacity: 0;
  transition: .5s ease;
  background-color: rgba(0,0,0,0.7);
}
.text {
  color: white;
  font-size: 20px;
  top: 50%;
  left: 50%;
  position: relative;
  transform: translate(-50%, -50%);
  text-align: center;
}
#result> .card:hover .caption {
  opacity: 1;
}
</style>
</head>
<body>
	<h1>박스오피스 순위</h1>
	<div id="result">
	</div>
	<h1>상영 예정작</h1>
    <div id="wrapper">
    </div>
</body>
</html>