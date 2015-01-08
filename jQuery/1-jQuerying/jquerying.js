$(document).ready(function(){
  		$("#flip").click(function(){
			$("#panel").slideDown("slow");
		});

		$("#panel").click(function(){
			$("#panel").slideUp("slow");
		});

		$("#b1").click(function(){
			$("#cuadro").animate({
					left:'350px',
					opacity: '0.5',
					height: '200px',
					width: '300px'
			});
  		});

  		$("#b2").click(function(){
  			$("#cuadro").animate({
  					height: 'hide'
  			});
  		});

  		$("#b3").click(function(){
  			$("#cuadro").animate({
  					//width: 'show',
  					height: 'show',
  					opacity: '1'
  			});
  		});

  		$("#b4").click(function(){
  			$("#cuadro").animate({
  					left: '20px',
  					height: '100px',
  					width: '150px'
  			});
  		});

  		$("#b5").click(function(){
  			var div=$("#cuadro");
  			div.animate({left:'350px',opacity: '0.5',height: '200px',
						width: '300px'});
  			div.animate({height:'300px',opacity:'0.4'},"slow");
  			div.animate({width:'150px',opacity:'1'},"fast");
  			div.animate({height:'300px',opacity:'0.4'},"fast");
  			div.animate({width:'300px',opacity:'0.4'},"slow");
  			div.animate({fontSize:'3em'},"fast");
   			div.animate({width:'50px',opacity:'0.4'},"fast");
  			div.animate({height:'100px',opacity:'0.4'},"slow");
  			div.animate({height:'300px',opacity:'1'},"slow");
  			div.animate({width:'150px',opacity:'0.4'},"slow");
  			div.animate({width:'250px',opacity:'1'},"fast");
  			div.animate({height:'30px',opacity:'0.4'},"slow");
  			div.animate({width:'300px',opacity:'1'},"fast");
  			div.animate({height:'100px',opacity:'0.4'},"fast");
  			div.animate({height:'80px',opacity:'0.4'},"fast");
 			div.animate({height:'300px',opacity:'1'},"slow",function(){
  			alert("The block stopped drinking");
 			});
 			div.animate({left: '20px',height: '100px',width: '150px'});
  		});

  		$("#b6").click(function(){
  			alert($("#input").val());
  		});

  		$("#b7").click(function(){
  			$("#input").val("You are a tucli");
  			//$("#p1").text("Eres un tucli.");
  			$("#b7").text("This button doesnt work anymore");
  			$("#p1").attr({"href" : "http://www.youtube.com",
  						  "title" : "---you are a tucli---"
  						}).text("put the mouse over the link without clicking it");
  		});

  		$("#b8").click(function(){
  			var txt= $("#input2").val();
  			$("ol").append("<li>"+txt+"</li>");
  		});

  		$("#b9").click(function(){
  			var txt= $("#input2").val();
  			$("ol").prepend("<li>"+txt+"</li>");
  		});

  		$("#b10").click(function(){
  			//Estos 2 metodos son validos
  			$("li").remove(); 
  			//$("ol").empty();
  		});

  		$("#b11").click(function(){
  			$("li").addClass("green");
  		});

  		$("#b12").click(function(){
  			$("li").toggleClass("more_size");
  		});

  		$("#b13").click(function(){
  			$("li").removeClass("green");
  			$("li").removeClass("more_size");
  		});

  		$("#b14").click(function(){
  			$("body").css({"background-color":"yellow"});
  		});
  		$("#b15").click(function(){
  			$("body").css({"background-color":"Gainsboro"});
  		});
  		$("#b16").click(function(){
  			$("body").css({"background-color":"DeepPink"});
  		});
  		$("#b17").click(function(){
  			$("body").css({"background-color":"DarkSalmon"});
  		});
  		$("#b18").click(function(){
  			$("body").css({"background-color":"DarkOrchid"});
  		});
  		$("#b19").click(function(){
  			$("body").css({"background-color":"Ivory"});
  		});
  		$("#b20").click(function(){
  			$("body").css({"background-color":"LightBlue"});
  		});

  		$("#b21").click(function(){
  			$("body").css({"background-color":"LightGray"});
  		});
  		$("#b22").click(function(){
  			$("body").css({"background-color":"LightGreen"});
  		});
  		$("#b23").click(function(){
  			$("body").css({"background-color":"LightPink"});
  		});
  		$("#b24").click(function(){
  			$("body").css({"background-color":"LightSalmon"});
  		});
  		$("#b25").click(function(){
  			$("body").css({"background-color":"LightSkyBlue"});
  		});
  		$("#b26").click(function(){
  			$("body").css({"background-color":"LightSteelBlue"});
  		});
  		$("#b27").click(function(){
  			$("body").css({"background-color":"LimeGreen"});
  		});
  		$("#b28").click(function(){
  			$("body").css({"background-color":"Magenta"});
  		});


  		$("#b51").click(function(){
  			var txt="";
  			txt+="Ancho:" + $("#cuadro").width()+"px";
   			txt+="\nAtlo:" + $("#cuadro").height()+"px"; 			
  			//$("#cuadro").html(txt);
  			alert(txt);
  		});



});