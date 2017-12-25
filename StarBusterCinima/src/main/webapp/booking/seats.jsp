<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title> </title>
<meta name="keywords" content="jQuery,myseat">
<link rel="stylesheet" type="text/css" href="../css/booking/seats.css" />
<style>

</style>

</head>

<body style="background-color:black;">
<div id="header">
	<form action="" method="get">
	<div class="count">
		人數: </br>
		1<input type="radio" name="count" value="1" id="count1" />
		2<input type="radio" name="count" value="2" id="count2" />
		3<input type="radio" name="count" value="3" id="count3" />
		4<input type="radio" name="count" value="4" id="count4" /></br>
    </div>
 </form>

</div>

<div id="main">
   <div class="demo">
   		<div id="seat-map">
			<div class=yingmu>screen</div>					
		</div>
<input type="button" id="buttonClick" value="送出" />
</div>
	
  <br/>
</div>
<script type="text/javascript" src="http://libs.useso.com/js/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="../js/booking/jquery.seat-charts.min.js"></script>
<script type="text/javascript">
var price = 80; 
var limitSeatNum=0;
var seatNum=[];
$(document).ready(function() {
	var getcount;
	var $cart = $('#selected-seats'), 
	$counter = $('#counter'), 
	$total = $('#total'); 
	
	var sc = $('#seat-map').seatCharts({
		map: [ 
			'oo_oooooo_oo',
			'oo_oooooo_oo',
			'oo_oooooo_oo',
			'oo_oooooo_oo',
			'oo_oooooo_oo',
			'oo_oooooo_oo',
			'oo_oooooo_oo',
		],
		naming : {
// 			top : true,
			getLabel : function (character, row, column) {
				column="";
				return column;
			}

		},
		legend : { 
			node : $('#legend'),
			items : [
				[ 'o', 'available',   '1' ],
				[ 'x', 'unavailable', '0'],
				[ 's', 'selected', '0']
			]					
		},
		
		
		
		click: function () { 
			if ((this.status() == 'available') && limitSeatNum>0 ) { 
				var seatNumTemp = this.settings.id;
				seatNum.push(seatNumTemp);
				//
				limitSeatNum = limitSeatNum-1;
				return 'selected';
				
			} else if ((this.status() == 'selected')) { 
					//
					var seatNumTemp = this.settings.id;
					var indextemp = $.inArray(seatNumTemp, seatNum);
					if(indextemp==-1){
						alert("請重新刷新頁面");
					}else{
// 						alert(seatNum);
// 						alert("刪除所選位置");
						seatNum.splice(indextemp,1);
// 						alert(seatNum);
					}
					//
					limitSeatNum = limitSeatNum+1;
					return 'available';
			} else if (this.status() == 'unavailable') { 
				return 'unavailable';
			}else if(limitSeatNum==0 && seatNum.length==0){
				alert("請選擇人數");
				return this.style();
			} else {
				return this.style();
			}
		}
	});
	
	sc.get(['1_1']).status('unavailable');
		
	
	//選擇人數
	$("input[type=radio]").click(function() {

		limitSeatNum = $(this).val();//現在點的人數
		var temp2 = getcount;//剛剛點的人數
// 		alert("現在點"+limitSeatNum+"剛剛是"+getcount);
		
		if(limitSeatNum != temp2 && temp2!=undefined){
// 			alert("清空");
// 			var resetClassName = $(".seatCharts-seat.seatCharts-cell.selected");
// 			$.each(resetClassName,function(value,index){
// 				$(this).attr('class','seatCharts-seat seatCharts-cell available');
// 			});

			for(var i=0;i<seatNum.length;i++){
				sc.status(seatNum[i], 'available');
			}
			seatNum=[];
		}
		
		getcount = $("input[type=radio]:checked").val();
// 		if(seatNum.length<getcount && seatNumTemp>0){
// 			alert("座位大於訂票人數，請重新選擇人數或座位")
// 		}
	});
	
	
	//確定座位之後產生座位編號
	$('#buttonClick').click(function() {
		seatNum.sort();
		for(var i=0;i < seatNum.length;i++){
			seatNum[i]=seatNum[i].replace(/_/, "排").concat("號  ");
		}
		alert(seatNum.length+"個位置");
		alert(seatNum);
// 		///////跳轉頁面後要拿掉///////
// 		for(var i=0;i<seatNum.length;i++){
// 			sc.status(seatNum[i], 'available');
// 		}
// 		seatNum=[];
// 		///////跳轉頁面後要拿掉///////
	});
	
});


function recalculateTotal(sc) {
	var total = 0;
	sc.find('selected').each(function () {
		total += price;
	});
			
	return total;
}
</script>

<div id="footer"></div>
0
</body>
</html>
