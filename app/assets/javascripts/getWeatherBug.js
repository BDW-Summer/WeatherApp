$(document).ready(function(){

$('.enterzip').bind('click', function(){
		var zipcodevalue = $('input').val();
		var callbyzip = "http://i.wxbug.net/REST/Direct/GetForecast.ashx?zip=" + zipcodevalue +"&nf=1&ih=1&ht=t&ht=i&l=en&c=US&api_key=2kkpgx2ybsbmgesdqrc9exnx";
	
	console.log("button pushed");
		
		$.getJSON(callbyzip, function(data){
					
					
				var temp = data.forecastList;
			
				$('#query').append("<li> Data:"+ temp.dayTitle + "</li>")
				
			
		})
	
	});
	
});
