require(["config"],function(){
	require(["jquery","header","footer","jquerycookie","template"],function($,header,footer,jquerycookie,template){
		$("header").load("/html/component/header.html",function(){
			header.init();
		});
		$("footer").load("/html/component/footer.html",function(){
			footer.init();
		});
		var cart = $.cookie("cart");
		var brr = [];
		if(cart){
			brr = JSON.parse(cart);
		}else{
			$("#list").hide();
			$("#list2").hide();
		}
		
		
//		for(var i = 0;i<json.length;i++){
//			brr.push(json[i]);
//		}
//		for(var i = 0;i<brr.length;i++){
//			console.log(json[0].id);
//			for(var j = 0;j<json.length;j++){
//				if(brr[i].id === json[j].id){
//	//				console.log(arr[i].n,res.products[0].id);
//					brr[i].num ++;
//					//console.log(arr[i].num,res.products[0].id);
//					break;
//				}else{
//					brr.push(json[j]);
//				}
//			}
//			
//		}
		console.log(brr.length);
//		
		for(var j = 0;j<brr.length;j++){
			var str = template("cart-template",{products:brr});
//			console.log(str);
			$("#cart-tbody").html(str);
		}
		
		$(".btn-").click(function(){
			var num = $(this).next(".num").val();
			if(num-1 == 0){
				num = 1;
			}else{
				num--;
			}
			$(this).next(".num").val(num);
			var sum = $(this).next(".num").val();
			var price = $(this).parent().parent().prev().find(".danjia").val();
			$(this).parent().parent().next().next().find(".sum").val(price*sum);
		})
		$(".btnplus").click(function(){
			var num = $(this).prev(".num").val();
			num++;
			$(this).prev(".num").val(num);
			var sum = $(this).prev(".num").val();
			var price = $(this).parent().parent().prev().find(".danjia").val();
			$(this).parent().parent().next().next().find(".sum").val(price*sum);
		})
		$(".del").click(function(){
			
			$(this).parents("tr").remove();
			console.log(brr);
			for(var i = 0;i<brr.length;i++){
				
			}
			//$.cookie("cart","",{expires:-1});
		})
		$(".alldel").click(function(){
			$.cookie("cart","",{expires:-1,path:"/"});
			window.location.reload();
			$("#list").hide();
			$("#list2").hide();
		})
	})
})
