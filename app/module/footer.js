define(["jquery"],function($){
	function Footer(){
		
	}
	Footer.prototype.init = function(){
		$(".foot .center i").hover(function(){
			alert("111");
		},function(){
			alert("222");
		})
	}
	return new Footer();
})
