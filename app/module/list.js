define(["jquery","template"],function($,template){
	function List(){}
	List.prototype.init = function(sheet,target){
		console.log(target);
		var data = {
			"sheet":sheet
		}
		$.ajax({
				method:"post",
				data:data,
				dataType:"json",
				url:"http://localhost/data/api/select.php",
				success: function(res){
					var html = template("pro-template",{sheets: res[sheet]});
					target.html(html);
				}
			})
	}
	return new List();
})
