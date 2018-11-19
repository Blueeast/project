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
		
//		console.log(sheets);
//		
		$.ajax({
			type:"get",
			url:"http://rap2api.taobao.org/app/mock/117852/example/1542422205383",
			async:true,
			dataType:"json",
			success:function(res){
				var str = template("detail-template",{sheets: res.cloths});
					console.log(str);
				$("#proList").html(str);
			}
		});
		
		
		//热销榜
		
	})
})
