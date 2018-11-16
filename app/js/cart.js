require(["config"],function(){
	require(["jquery","header","footer","jquerycookie","template"],function($,header,footer,jquerycookie,template){
		$("header").load("/html/component/header.html",function(){
			header.init();
		});
		$("footer").load("/html/component/footer.html",function(){
			footer.init();
		});
		var cart = $.cookie("cart");
		var json = JSON.parse(cart);
//		console.log(json);
		var brr = [];
		if(brr.length === 0){
			brr.push(json[0]);
			console.log(brr);
		}
		for(var i = 0;i<brr.length;i++){
			console.log(json[0].id);
			if(brr[i].id === json[0].id){
//				console.log(arr[i].n,res.products[0].id);
				brr[i].num ++;
				//console.log(arr[i].num,res.products[0].id);
				break;
			}else{
				brr.push(json[0]);
			}
		}
		console.log(brr.length);
//		var html = `
//			<tr class="cart-title">
//				<th style="text-align: right;width: 5%;"><input type="checkbox" name="all_choose1"/>全选</th>
//				<th style="width: 40%; text-align: left;padding-left: 20px;">商品</th>
//				<th style="width: 10%;">单价</th>
//				<th style="width: 13%;">数量</th>
//				<th style="width: 11%;">积分</th>
//				<th style="width: 11%;">总计</th>
//				<th style="width: 10%;">操作</th>
//			</tr>
//		`;
//		console.log(html);
//		$("#list").html(html);
		for(var j = 0;j<brr.length;j++){
			var str = template("cart-template",{products:json});
//			console.log(str);
			$("#list").html(str);
		}
		
		$("#btn-").click(function(){
//			console.log(444);
			var num = $("#num").val();
			if(num-1 == 0){
				num = 1;
			}else{
				num--;
			}
			$("#num").val(num);
			console.log($("#danjia"));
			$("#sum").val($("#danjia").val()*num);
			console.log($("#sum").val());
			//$("#sum").val(num*$(this).)
		})
		$("#btnplus").click(function(){
			var nim = $("#num").val();
			nim++;
			$("#num").val(nim);
			$("#sum").val($("#danjia").val()*nim);
		})
		$(".del").click(function(){
			$(this).parent().parent().hide();
			$(this).parent().parent().siblings().hide();
			$.cookie("cart","",{expires:-1});
		})
	})
})
