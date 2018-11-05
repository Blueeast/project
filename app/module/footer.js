require(["config"],function(){
	require(["jquery","tools","header","footer"],function($,tools,header,footer){
		tools.ajax("GET","/html/component/header.html",null,function(data){
			document.getElementsByTagName("header")[0].innerHTML = data;
		},false);
	})
})
