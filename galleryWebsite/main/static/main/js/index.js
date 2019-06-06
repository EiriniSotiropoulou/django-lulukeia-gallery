
	// now the header won't cover the content
$(document).ready(function() {
  // $(".content").css("margin-top", $(".header").height());
  // $(".content").css("margin-bottom", $("footer").height());
  // let padd=parseInt($("#ourmenu").css("padding-right").replace(/px/,""));
  // let width=parseInt($("#ourmenu").css("width").replace(/px/,""));
  //
  // let new_width=width-padd+"px";
  // console.log(new_width);
  $(".dropdown-content").css("width",$(".dropdown-content li").css("width"));

  $("#ourlog").css("width",$("#ourmenu").css("width"));

  $("div.header>a").css("width",$("div.ourlog").css("width"));
  // change back and forward the colors of the menu button when the dropdown is showing

  $(".dropdown").mouseenter(function(){

  	if($(".dropdownMenu-content").css("display")=="none"){
  		return;
  	}
	$("#ourmenu").css("background-color", "var(--color_sec_24)");
	$("#ourmenu").css("color", "var(--color_prim_3)");
	})

  $(".dropdown").mouseleave(function(){

	    $("#ourmenu").css("background-color", "rgba(255,0,0,0.1) ");
      $("#ourmenu").css("color", "black");
  })

  $(".content>div").mouseenter(function(){


    $("img",this).css("opacity",0.5);
    $(".links",this).css("color","var(--color_sec_22)");
    // $("img",this).css("box-shadow"," 0 0 2px 1px rgba(0, 140, 186, 0.5)");

	})

   $(".content>div").mouseleave(function(){

    $("img",this).css("opacity",1);
    $(".links",this).css("color","white");
    // $("img",this).css(" border-radius","0");
  })


  // Wrap every letter in a span
  $('#greetings').each(function(){
    $(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>"));
  });

  // anime.timeline({loop: false})
  //   .add({
  //     targets: '#greetings .letter',
  //     scale: [4,1],
  //     opacity: [0,1],
  //     translateZ: 0,
  //     easing: "easeOutExpo",
  //     duration: 950,
  //     delay: function(el, i) {
  //       return 70*i;
  //     }
  //   }).add({
  //     targets: '#greetings',
  //     opacity: 1,
  //     duration: 1000,
  //     easing: "easeOutExpo",
  //     delay: 1000
  //   });

});
