$(function(){
    $('#tbl tr').click(function() {
		if($(this).hasClass("highlight")) {
			$(this).removeClass("highlight");
		}
		else{
    		$(this).addClass("highlight");
    	}
	});

   	$("#title").click(function(){
                $("#title").hide();
                $("#unhide").css("visibility", "visible");
   	});

   	$("#unhide").click(function(){
                $("#title").show();
                $("#unhide").css("visibility", "hidden");
   	});

});
