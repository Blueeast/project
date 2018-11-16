require(["config"],function(){
	require(["jquery","tools","header","sideshow","footer","list"],function($,tools,header,sideshow,footer,list){
//		tools.ajax("GET","/html/component/header.html",null,function(data){
//			document.getElementsByTagName("header")[0].innerHTML = data;
//		},false);
		new Promise(function(resolve,reject){
			$("header").load("/html/component/header.html",function(){
				resolve();
			});
			$("footer").load("/html/component/footer.html",function(){
				footer.init();
			});
			$(".sideshow").load("/html/component/sideshow.html",function(){
				sideshow.init();
				
			});
			$(".list").load("html/component/list.html",function(){
				list.init("cloths",$(".cloth"));
				list.init("books",$(".book"));
				list.init("shouban",$(".shouban"));
			})
		}).then(function(){
			//console.log(header.init);
			header.init();
		})
	})
})