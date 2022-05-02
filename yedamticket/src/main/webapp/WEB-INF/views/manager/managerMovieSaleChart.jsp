<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!--Load the AJAX API-->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>

<body>
   <!--Div that will hold the pie chart-->
   <div id=chart_div style="width: 100%; height: 1000px;"></div>
   
   <script type="text/javascript">
      google.charts.load("current", {
         packages : [ "corechart" ]
      });
      google.charts.setOnLoadCallback(drawChart);
      
      function drawChart() {
         let arr = [];
         
         $.ajax({
            url : "movieSales.do",
            type : "post",
            dataType : "json",
            async: false,
            success: function(result){
               console.log(result);
               console.log(result[0].dayDate);
               
               var data = new google.visualization.DataTable();
               
               data.addColumn('string', '일');
               data.addColumn('number', '매출');
               
               for(let i=0; i<result.length; i++){
                  arr.push([result[i].dayDate, result[i].sales]);   
               }
               
               data.addRows(arr);
               console.log(data);
               
               var options = {
            	          title: '영화 일일 매출',
            	          hAxis: {title: 'Year',  titleTextStyle: {color: '#fff'}},
            	          vAxis: {minValue: 0},
            	          responsive: false,
            	          scales: {
            					yAxes: [{
            						ticks: {
            							beginAtZero: true
            						}
            					}]
            				},
            			};

               var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
               chart.draw(data,options);
            }
         });
      }
</script>
</body>
</html>