	$(document).ready(function() {
		$("#buttonSales").click(function(){
			
			$.get('/StarBusterCinima/ViewGraph', function(chartData){
				addData(chartData);
			});
			
				var dataPoints = [];

				var chart = new CanvasJS.Chart("chartContainer", {
					animationEnabled: true,
					theme: "light2",
					title: {
						text: ""
					},
					axisY: {
						title: "TWD",
						titleFontSize: 24
					},
					data: [{
						type: "column",
						dataPoints: dataPoints
					}]
				});

				function addData(data) {
					var myJSON = JSON.parse(data);
					for (var i = 0; i < myJSON.length; i++) {
						dataPoints.push({
							label: myJSON[i].date,
							y: myJSON[i].units
						});
					}
					
					chart.render();

				};
		});
	});