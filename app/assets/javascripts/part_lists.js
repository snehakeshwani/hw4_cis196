$(function(){
    $('#tbl-tasks tr').click(function() {
		if($(this).hasClass("highlight")) {
			$(this).removeClass("highlight");
		}
		else{
    		$(this).addClass("highlight");
    	}
	});

   	$("#unhide1").click(function(){
   		if ($(this).text()=="Click to hide title"){
                $("#title1").hide();
                $("#unhide1").text("Click to show title");
        }
        else{
                $("#title1").show();
                $("#unhide1").text("Click to hide title");
        }
   	});

});
