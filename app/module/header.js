define(["jquery","jquerycookie"],function($,jquerycookie){
	function Header(){}
	Header.prototype.init = function(){
		$(".sort").hover(function(){
			
//			$(".sort ul").css({"display":"block"});
			$(this).find("ul").css({"display":"block"});
		},function(){
			$(this).find("ul").css({"display":"none"});
		});
		$(".nav .main_nav .left .sort2").hover(function(){
			//console.log($(this));
			$(this).find("div").css({"display":"block"});
		},function(){
			$(this).find("div").css({"display":"none"});
			
		});
		$("#fenlei").find("li").eq(0).click(function(){
			window.open("http://localhost:1123/html/details.html");
		})
		var username = $.cookie("username");
		if(username){
			$("#welcome").css({display:"inline-block"}).html("欢迎您:  " + username);
			$(".log").css({display:"none"});
			$("#out").css({display:"inline-block"});
		}
		$("#out").click(function(){
			$("#welcome").css({display:"none"});
			$(".log").css({display:"inline-block"});
			$("#out").css({display:"none"});
			$.cookie("username","",{expires:-1});
		})
	}
	return new Header();
})
