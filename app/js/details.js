require(["config"],function(){
	require(["jquery","header","footer","template","hot","paging"],function($,header,footer,template,hot,paging){
		$("header").load("/html/component/header.html",function(){
			header.init();
		});
		$("footer").load("/html/component/footer.html",function(){
			footer.init();
		});
		$(".paging").load("/html/component/paging.html",function(){
				paging.init();
		})
		new Promise(function(resolve,reject){
			$(".hotList").load("/html/component/hot.html",function(){
				resolve()
			});
			
		}).then(function(){
			hot.init();
		})
		var str = location.search.slice(1);
		var arr = str.split("="); // ["id","3"];
		var obj = {};
		obj[arr[0]] = arr[1];
		
		var sheets = arr[1];
		
		console.log(sheets);
		$.ajax({
			url:"http://localhost/data/api/details.php",
			data: obj,
			method:"post",
			dataType:"json",
			success: function(res){
				
				if(res.code === 1){
					var str = template("detail-template",{sheets: res[sheets]});
					
					$("#proList").html(str);
					
				}
			}
		})
		
		
		//热销榜
		$("#num").click(function(){
			$.ajax({
				type:"post",
				data:obj,
				url:"http://localhost/data/api/numdown.php",
				async:true,
				dataType:"json",
				success:function(res){
					if(res.code === 1){
						var str = template("detail-template",{sheets: res.products});
						$("#proList").empty();
						$("#proList").html(str);
					}
				}
			});
		})
		
		//价格升俆排列
		$("#price").click(function(){
			$.ajax({
				type:"post",
				data:obj,
				url:"http://localhost/data/api/priceup.php",
				async:true,
				dataType:"json",
				success:function(res){
					if(res.code === 1){
						var str = template("detail-template",{sheets: res.products});
						$("#proList").empty();
						$("#proList").html(str);
					}
				}
			});
		})
	})
})
