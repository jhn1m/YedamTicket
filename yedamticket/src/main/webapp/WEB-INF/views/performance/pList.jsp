<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="resources/performance/css/bootstrap.min.css">
<!-- FontAwesome CSS -->
<link rel="stylesheet" href="resources/performance/css/font-awesome.min.css">
<!-- Swiper CSS -->
<link rel="stylesheet" href="resources/performance/css/swiper.min.css">
<!-- Styles -->
<link rel="stylesheet" href="resources/performance/css/style.css"> 
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<style>
*{
font-family: 'Gowun Dodum', sans-serif;
list-style: none;
}
input::-webkit-input-placeholder { color: black; }
.hr-sect{
   color: #7a5ecf;
   text-align: left;
   margin-top: 50px;
   margin-bottom: 5px;
   font-family: 'Gowun Dodum', sans-serif;
   width: 1400px;
   font-size: 3.5em;
}

</style>
</head>

<body class="events-list-page">
<div class="container">
   <h1 class="hr-sect">공연 리스트</h1>
      <hr>
</div>
<form class="events-search" action="pList.do">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-2">
                <input type="date" id="startDate" name="startDate" placeholder="시작날짜" >
            </div>
            <div class="col-12 col-md-2">
                <input type="date" id="endDate" name="endDate" placeholder="종료날짜" >
            </div>

            <div class="col-12 col-md-2">
                <input type="text" id="name" name="name" placeholder="행사명" >
            </div>

            <div class="col-12 col-md-2">
                <input type="text" id="loc" name="loc" placeholder="지역">
            </div>

            <div class="col-12 col-md-3">
                <input class="btn btn-lg" style="background:#cfc5e9; margin: 0;" id="searchBtn" type="submit" value="검색">
            </div>
            <!-- hidden으로 숨겨서 들어갈 값 -->
         <input type="hidden" name="pageNum" value="1">
         <!-- 검색버튼을 누르면 무조건 페이지 번호 1번으로 다시세팅 -->
         <input type="hidden" name="amount" value="${pageVO.amount }">
        </div>
    </div>
</form>

<div class="container">
    <div class="row events-list">
       <c:forEach items="${performance }" var="p">
       <form action="pBookingForm.do" method="post">
        <div class="col-12 col-lg-6 single-event">
            <figure class="events-thumbnail">
            <c:choose>
                <c:when test="${p.renames == null}">
                  <img src="resources/performance/images/${p.fileCd}" style="width: 559px; height: 300px;">
                </c:when> 
                <c:when test="${p.renames != null}">
                  <img src="/upload/${p.renames}" style="width: 559px; height: 300px;">
                </c:when>  
                  <c:otherwise>
                     <img src="resources/performance/images/alt.jpg" style="width: 559px; height: 300px;">
                  </c:otherwise>
            </c:choose>
            </figure>
            <div class="event-content-wrap">
                <header class="entry-header flex justify-content-between">
                    <div>
                        <h2 class="entry-title" style="font-size: 25px; padding-bottom: 25px; font-weight: bold">${p.name }</h2>

                        <div class="event-location">${p.loc }</div>
                  
                        <div class="event-date">${p.performanceScheduleVO.frDt }  ${p.performanceScheduleVO.time }</div>
                    </div>
                    <%-- <div class="event-cost flex justify-content-center align-items-center">
                        <p>${p.price }</p>
                    </div> --%>
                   <input type="hidden" name='pNo' value="${p.PNo }">
                    
                </header>
            <br>
                <footer class="entry-footer" style="text-align: right;">
                    <button type="submit"  class="btn btn-lg" style="background:#cfc5e9;" >예매하기</button>
                    <br>
                </footer><br>
            </div>
        </div>
        </form>
       </c:forEach>
    </div><br>
</div>
<form id="actionForm" action="pList.do" method="get">
      <input type="hidden" name="pageNum" value="${pageVO.pageNum }">
      <input type="hidden" name="amount" value="${pageVO.amount }">
      <input type="hidden" name="startDate">
      <input type="hidden" name="endDate">
      <input type="hidden" name="name">
      <input type="hidden" name="loc">
</form><br>
<div id="content" align="center">
               <c:if test="${pageVO.prev }">
                  <!-- 이전버튼 활성화 여부 -->
                  <a href="${pageVO.startPage-1 }"> <input
                     type="button" value="이전" class="btn" style="background:#6c757d; color: white; width: 38px; height: 38px; font-weight:initial; padding:0px;"></a>
               </c:if>
               <!-- pageNum -->
               <c:forEach var="num" begin="${pageVO.startPage }"
                  end="${pageVO.endPage }">
                  <a class="${pageVO.pageNum == num ? 'active': '' }"
                     href="${num }"> <input type="button"
                     value="${num }"  class="btn" style="background:#6c757d; color: white; width: 38px; height: 38px; font-weight:initial;padding:0px;"></a>
               </c:forEach>
               <!-- 다음버튼 -->
               <c:if test="${pageVO.next }">
                  <a href="${pageVO.endPage+1 }"> <input
                     type="button" value="다음"  class="btn" style="background:#6c757d; color: white; width: 38px; font-weight:initial; height: 38px;padding:0px;"></a>
               </c:if>
            </div><br><br>
<%-- <div class="upcoming-events-outer">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="upcoming-events">
                    <div class="upcoming-events-header">
                        <h4>Upcoming Events</h4>
                    </div>

                    <div class="upcoming-events-list">
                        
               <c:forEach items="${Eperformance }" var="ep">
                        <div class="upcoming-event-wrap flex flex-wrap justify-content-between align-items-center">
                            <figure class="events-thumbnail">
                                <a href="#"><img src="/upload/${ep.renames }"></a>
                            </figure>

                            <div class="entry-meta">
                                <div class="event-date">27
                                    <span>February</span>
                                </div>
                            </div>

                            <header class="entry-header">
                                <h3 class="entry-title"><a href="#">${ ep.name}</a></h3>

                                <div class="event-date-time">${ep.performanceScheduleVO.frDt }  ${ep.performanceScheduleVO.time }</div>

                                <div class="event-speaker">${ep.actor }</div>
                            </header>

                            <footer class="entry-footer">
                                <a href="#">Buy Tikets</a>
                            </footer>
                        </div>
                       </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<<<<<<< HEAD
    </div>--%>
    <input type="hidden" value="${psvo.startDate}" id="vostart">
    <input type="hidden" value="${psvo.endDate}" id="voend">
    <input type="hidden" value="${vo.name}" id="voname">
    <input type="hidden" value="${vo.loc}" id="voloc"> 

<script>

let actionForm = $("#actionForm");

let sd = $("#startDate").val();
let ed = $("#endDate").val();
let nm = $("#name").val();
let lo = $("#loc").val();

$("#searchBtn").on("click", function(){
   actionForm.find("input[name='startDate']").val(sd);
   actionForm.find("input[name='endDate']").val(ed);
   actionForm.find("input[name='name']").val(nm);
   actionForm.find("input[name='loc']").val(lo);
});

$("#content a").on("click", function(e) {
   e.preventDefault();
   console.log("click");
   console.log($(this).attr("href"));
   actionForm.find("input[name='pageNum']").val($(this).attr("href"));
   actionForm.find("input[name='startDate']").val($("#vostart").val());
   actionForm.find("input[name='endDate']").val($("#voend").val());
   actionForm.find("input[name='name']").val($("#voname").val());
   actionForm.find("input[name='loc']").val($("#voloc").val());
   console.log($("#voloc").val());
   
    actionForm.submit();
});

let searchForm = $("#searchForm");
$("#searchForm button").on("click", function(e) {
   if (!searchForm.find("input[name='searchName']").val()) {
      alert('키워드를 입력하세요.');
      return false;
   }

   searchForm.find("input[name='pageNum']").val("1");
   e.preventDefault();

   searchForm.submit();
});


$( function() {
    var availableTags = [
      "서울특별시",
      "인청광역시",
      "경기도",
      "강원도",
      "세종특별자치시",
      "충청남도",
      "충청북도",
      "대전광역시",
      "전라북도",
      "광주광역시",
      "전라남도",
      "경상북도",
      "대구광역시",
      "경상남도",
      "울산광역시",
      "부산광역시",
      "제주측별자치도",
     
    ];
    $( "#loc" ).autocomplete({
      source: availableTags
    });
  } );
</script>

<script type='text/javascript' src='resources/performance/js/jquery.js'></script>
<script type='text/javascript' src='resources/performance/js/masonry.pkgd.min.js'></script>
<script type='text/javascript' src='resources/performance/js/jquery.collapsible.min.js'></script>
<script type='text/javascript' src='resources/performance/js/swiper.min.js'></script>
<script type='text/javascript' src='resources/performance/js/jquery.countdown.min.js'></script>
<script type='text/javascript' src='resources/performance/js/circle-progress.min.js'></script>
<script type='text/javascript' src='resources/performance/js/jquery.countTo.min.js'></script>
<script type='text/javascript' src='resources/performance/js/custom.js'></script>
</body>
</html>
