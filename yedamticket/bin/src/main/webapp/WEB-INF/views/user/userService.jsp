<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html >

<head>
	<title>Sidebar 02</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet"
		href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
	
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
	
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="./resources/users/css/style.css">
</head>
<style>
	@font-face {
		font-family: Poppins-Regular;
		src: url(https://colorlib.com/etc/tb/Table_Responsive_v2/fonts/poppins/Poppins-Regular.ttf)
	}

	@font-face {
		font-family: Poppins-Bold;
		src: url(https://colorlib.com/etc/tb/Table_Responsive_v2/fonts/poppins/Poppins-Bold.ttf)
	}

	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box
	}

	body,
	html {
		height: 100%;
		font-family: sans-serif
	}

	a {
		margin: 0;
		transition: all .4s;
		-webkit-transition: all .4s;
		-o-transition: all .4s;
		-moz-transition: all .4s
	}

	a:focus {
		outline: none !important
	}

	a:hover {
		text-decoration: none
	}

	h1,
	h2,
	h3,
	h4,
	h5,
	h6 {
		margin: 0
	}

	p {
		margin: 0
	}

	ul,
	li {
		margin: 0;
		list-style-type: none
	}

	input {
		display: block;
		outline: none;
		border: none !important
	}

	textarea {
		display: block;
		outline: none
	}

	textarea:focus,
	input:focus {
		border-color: transparent !important
	}

	button {
		outline: none !important;
		border: none;
		background: 0 0
	}

	button:hover {
		cursor: pointer
	}

	iframe {
		border: none !important
	}

	.limiter {
		width: 100%;
		margin: 0 auto
	}

	.container-table100 {
		width: 100%;
		min-height: 30vh;
		display: -webkit-box;
		display: -webkit-flex;
		display: -moz-box;
		display: -ms-flexbox;
		display: flex;
		align-items: center;
		justify-content: center;
		flex-wrap: wrap;
		padding: 33px 30px
	}

	.wrap-table100 {
		width: 700px;
		height: 300px;
		border-radius: 10px;
		overflow: hidden
	}

	.table {
		width: 100%;
		display: table;
		margin: 0
	}

	@media screen and (max-width:768px) {
		.table {
			display: block
		}
	}

	.row {
		display: table-row;
		background: #fff
	}

	.row.header {
		color: #fff;
		background: #866ec7
	}

	@media screen and (max-width:768px) {
		.row {
			display: block
		}

		.row.header {
			padding: 0;
			height: 0
		}

		.row.header .cell {
			display: none
		}

		.row .cell:before {
			font-family: Poppins-Bold;
			font-size: 12px;
			color: gray;
			line-height: 1.2;
			text-transform: uppercase;
			font-weight: unset !important;
			margin-bottom: 13px;
			content: attr(data-title);
			min-width: 98px;
			display: block
		}
	}

	.cell {
		display: table-cell
	}

	@media screen and (max-width:768px) {
		.cell {
			display: block
		}
	}

	.row .cell {
		font-family: Poppins-Regular;
		font-size: 15px;
		color: #666;
		line-height: 1.2;
		font-weight: unset !important;
		padding-top: 20px;
		padding-bottom: 20px;
		border-bottom: 1px solid #f2f2f2
	}

	.row.header .cell {
		font-family: Poppins-Regular;
		font-size: 18px;
		color: #fff;
		line-height: 1.2;
		font-weight: unset !important;
		padding-top: 19px;
		padding-bottom: 19px
	}

	.row .cell:nth-child(1) {
		width: 350px;
		padding-left: 40px
	}

	.row .cell:nth-child(2) {
		width: 160px
	}

	.row .cell:nth-child(3) {
		width: 250px
	}

	.row .cell:nth-child(4) {
		width: 190px
	}

	.table,
	.row {
		width: 100% !important
	}

	/* .row:hover {
    background-color: #ececff;
    cursor: pointer
} */

	@media(max-width:768px) {
		.row {
			border-bottom: 1px solid #f2f2f2;
			padding-bottom: 18px;
			padding-top: 30px;
			padding-right: 15px;
			margin: 0
		}

		.row .cell {
			border: none;
			padding-left: 30px;
			padding-top: 16px;
			padding-bottom: 16px
		}

		.row .cell:nth-child(1) {
			padding-left: 30px
		}

		.row .cell {
			font-family: Poppins-Regular;
			font-size: 18px;
			color: #555;
			line-height: 1.2;
			font-weight: unset !important
		}

		.table,
		.row,
		.cell {
			width: 100% !important
		}
	}
* {
	box-sizing: border-box;
}

.que:first-child {
	border-top: 1px solid black;
}

.que {
	position: relative;
	padding: 17px 0;
	cursor: pointer;
	font-size: 14px;
	border-bottom: 1px solid #dddddd;
}

.que::before {
	display: inline-block;
	content: 'Q';
	font-size: 14px;
	color: #006633;
	margin-right: 5px;
}

.que.on>span {
	font-weight: bold;
	color: #006633;
}

.anw {
	display: none;
	overflow: hidden;
	font-size: 14px;
	background-color: #f4f4f2;
	padding: 27px 0;
}

.anw::before {
	display: inline-block;
	content: 'A';
	font-size: 14px;
	font-weight: bold;
	color: #666;
	margin-right: 5px;
}
</style>

<body>

	<div class="wrapper d-flex align-items-stretch">
		<nav id="sidebar">
			<div class="custom-menu">
				<button type="button" id="sidebarCollapse" class="btn btn-primary">
					<i class="fa fa-bars"></i>
					<span class="sr-only">Toggle Menu</span>
				</button>
			</div>
			<div class="p-4 pt-5">
				<h1><a href="index.html" class="logo">고객센터</a></h1>
				<ul class="list-unstyled components mb-5">
					<li>
						<a href="noticeList.do">공지사항</a>
					</li>
					<li>
						<a href="faqList.do">FAQ</a>
					</li>
					<li>
						<a href="inqList.do">1:1 문의</a>
					</li>
				</ul>

				<div class="mb-5">
					<h4 class="h6">고객센터</h4>
					<h4 class="h6">전화상담</h4>
					<h2 class="h6">1588-1588</h2><span>평일 09:00~18:00</span><br>
					<span>토요일 09:00~17:00 </span><br> <span>일요일
						공휴일 휴무</span>

					<div class="form-group d-flex">
						<div class="icon"><span class="icon-paper-plane"></span></div>
					</div>
				</div>
			</div>
		</nav>
		

		<!-- Page Content  -->
		<div id="content" >
			<div class="container-table100">
				<div class="wrap-table100">
					<div class="table">
						<div class="row header">
							<div class="cell">
								제목
							</div>
							<div class="cell">
								작성자
							</div>
							<div class="cell">
								작성일자
							</div>
						</div>
						<c:forEach items="${notices }" var="notice" begin="0" end="4">
						<div class="row" onclick="noticeSearch('${notice.noticeNo }')">
							<div class="cell" data-title="Full Name">
								${notice.title }
							</div>
							<div class="cell" data-title="Age">
								${notice.writer }
							</div>
							<div class="cell" data-title="Job Title">
								${notice.wrDt}
							</div>
						</div>
					</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<div class="container  ">
		<br>
		<c:forEach items="${faqs }" var="faq" begin="0" end="5">
			<div class="col-8">
				<div id="Accordion_wrap">
					<div class="que">
						<span>${faq.FNo }</span> <span>${faq.title }</span>
					</div>
					<div class="anw">
						<span>${faq.content }</span>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<script type="text/javascript">
		$(".que").click(function() {
			$(this).next(".anw").stop().slideToggle(300);
			$(this).toggleClass('on').siblings().removeClass('on');
			$(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
		});
	</script>
	</div>
	


</body>

</html>