$(function(){
    $('#tbl tr').click(function() {
		if($(this).hasClass("highlight")) {
			$(this).removeClass("highlight");
		}
		else{
    		$(this).addClass("highlight");
    	}
	});

   	$("#unhide").click(function(){
   		if ($(this).text()=="Click to hide title"){
                $("#title").hide();
                $("#unhide").text("Click to show title");
        }
        else{
                $("#title").show();
                $("#unhide").text("Click to hide title");
        }
   	});

});
