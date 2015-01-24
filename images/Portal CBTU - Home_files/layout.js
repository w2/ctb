jQuery(document).ready(function($) {
	
	function runSlider() {
		if ($(".home-slider").find(".on").next().length>0) {
			var elem = $(".home-slider").find(".on").removeClass("on").next();
		} else {
			 $(".home-slider").find(".on").removeClass("on");
			var elem = $(".home-slider li:first");
		}
		elem.addClass("on");
		$(".logo-top").css("backgroundImage", "url('"+elem.find("a").attr("href")+"')");
	}
	
	$(".home-slider li").click(function() {
		runSlider();
		return false;
	});
	
	if ($(".home-slider").length>0) {
		setInterval(runSlider, 7000);
	}
	
	$("#popup .close").click(function() {
		$("#popup, .overlay").hide();
		return false;
	});

//novo
	$(".overlay").click(function() {
		$("#popup, .overlay").hide();
		return false;
	});
//fim novo


	// Preload
	$(".home-slider li").each(function() {
		 $('<img/>')[0].src = $(this).find("a").attr("href");
	});
	
	// Allow Colorbox for galleries
	$('.gallery li a').colorbox({rel:'gal',fixed:true, maxHeight: '100%'});
	$('.maps-content img:not(.no-box), .content-page img:not(.no-box)').colorbox({fixed:true,  maxHeight: '100%', href:function() { return $(this).attr("src")} });
	
	// Fixing layout styles
	if ($("body").hasClass("default-layout")) {
		$(".menu > li:first").hide();
		$(".menu > li:nth-child(2)").addClass("a-cbtu");
		$(".menu > li:nth-child(3)").addClass("planejamento");
		$(".menu > li:nth-child(4)").addClass("operadoras");
		$(".menu > li:nth-child(5)").addClass("estudos");
		$(".menu > li:nth-child(6)").addClass("eventos");
		$(".menu > li:nth-child(7)").addClass("sociocultural");
		$(".menu > li:nth-child(8)").addClass("licitacoes");
		$(".menu > li:nth-child(9)").addClass("galerias");
	}
	
	$("#witabs li").click(function() {
		//	First remove class "active" from currently active tab
		$("#witabs li").removeClass('active');
		//	Now add class "active" to the selected/clicked tab
		$(this).addClass("active");
		//	Hide all tab content
		$(".webmail_intranet-tab_content").hide();
		//	Here we get the href value of the selected tab
		var selected_tab = $(this).find("a").attr("href");
		//	Show the selected tab content
		$(selected_tab).fadeIn();
		//	At the end, we add return false so that the click on the link is not executed
		return false;
	});
	
	$("#maps .box-options").hover(function() {
		$(this).css("height", "auto");
		$(this).find("li").show();
	}, function() { $(this).css("height", "30px"); $(this).find("li:not(.active)").hide(); });
	
	$("#maps .box-options a").click(function() {
		$("#maps .box-options li").removeClass("active");
		$(this).parent().addClass("active");
		$(".maps-content img").removeClass("active");
		var active_map = $(this).attr("href");
		var active_map = active_map.replace("#", ".");
		$(active_map).addClass("active");
		return false;
	});
	
	$("#boxtabs li").click(function() {
		//	First remove class "active" from currently active tab
		$("#boxtabs li").removeClass('active');

		//	Now add class "active" to the selected/clicked tab
		$(this).addClass("active");

		//	Hide all tab content
		$(".tab_content").hide();

		//	Here we get the href value of the selected tab
		var selected_tab = $(this).find("a").attr("href");

		//	Show the selected tab content
		$(selected_tab).fadeIn();

		//	At the end, we add return false so that the click on the link is not executed
		return false;
	});
	if(navigator.appName=='Microsoft Internet Explorer') {
	$('[placeholder]').focus(function() {
  var input = $(this);
  if (input.val() == input.attr('placeholder')) {
    input.val('');
    input.removeClass('placeholder');
  }
}).blur(function() {
  var input = $(this);
  if (input.val() == '' || input.val() == input.attr('placeholder')) {
    input.addClass('placeholder');
    input.val(input.attr('placeholder'));
  }
}).blur();

$('[placeholder]').parents('form').submit(function() {
  $(this).find('[placeholder]').each(function() {
    var input = $(this);
    if (input.val() == input.attr('placeholder')) {
      input.val('');
    }
  })
});
}
	
});