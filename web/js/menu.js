$(document).ready(function(){			
	$("ul.title").bind("click",function(){	  		   
	       if($(this).find("li").is(":visible")){	   
	       $(this).removeClass("show").find("li").hide('fast');
			}
			else
			{			
		$(this).addClass("show").find("li").show("fast").end()	
		.siblings().removeClass("show").find("li").hide('fast');
		var idx=$("ul .show").index();
        }     
			for(var i=0;i<=$("ul.title").length;i++)
		    {       
				if(idx!=i)
				{
		        $("ul.title h3 img").eq(i).attr("src","../images/ico0"+(i+1)+".gif" )
			    }
				else
				{
				$("ul.title h3 img").eq(i).attr("src","../images/Sub0"+(i+1)+".gif" )	
			    }
			}		
	})	
	
	$("#info ul.short").hover(function(){   //快速通道
	  var $short=$(this).find("li")
	  $short.slideDown('fast')
	},function(){
		 var $short=$(this).find("li")
		$short.slideUp('fast')
		})	   
	
})

 

