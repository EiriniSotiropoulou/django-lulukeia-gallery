
	// now the header won't cover the content
$(document).ready(function() {
  $(".content").css("margin-top", $(".header").height());

  $("div.topnav.dropdown ").css("width",$("#menu").css("width"));
  $("#log ").css("width",$("#menu").css("width"));
  $("div.header>a").css("width",$("div.logo").css("width"));
  // change back and forward the colors of the menu button when the dropdown is showing
  $(".dropdown").mouseenter(function(){

  	if($(".dropdown-content").css("display")=="none"){
  		return;
  	}
	$("#menu").css("background-color", "var(--color_sec_24)");
	$("#menu").css("color", "var(--color_prim_3)");
	})

  $(".dropdown").mouseleave(function(){

	$("#menu").css("background-color", "rgba(255,255,255,0.3)");
    $("#menu").css("color", "black");

	})

});

