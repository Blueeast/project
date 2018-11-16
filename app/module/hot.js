define(["jquery","template"],function($,template){
	function Hot(){}
	Hot.prototype.init = function(){
		$.ajax({
			url:"http://localhost/data/api/hot.php",
			method:"POST",
			dataType:"json",
			success: function(res){
				if(res.code === 1){
					var str = template("hot-template",{products: res.products});
					$("#hotList").html(str);
					
				}
			}
		})
	}
	
	return new Hot();
})