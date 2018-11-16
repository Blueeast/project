require(["config"],function(){
	require(["jquery","header","footer","template","jquerycookie"],function($,header,footer,template,jquerycookie){
		$("header").load("/html/component/header.html",function(){
			header.init();
		});
		$("footer").load("/html/component/footer.html",function(){
			footer.init();
		});
		
		var str = location.search.slice(1);
		var arr = str.split("="); // ["id","3"];
		var obj = {};
		obj[arr[0]] = arr[1];
		
		$.ajax({
			method:"post",
			url:"http://localhost/data/api/product.php",
			data:obj,
			dataType:"json",
			async:true,
			success:function(res){
				if(res.code === 1){
					console.log(res.products);
					var str = template("pic-template",{products:res.products});
					$(".pro").html(str);
				}
				var box = $(".box"),
				fdj = $("#fdj"),
				big = $(".big"),
				bigImg = $(".bigImg");
				box.mousemove(function(e){
					var _left = e.pageX - box.offset().left - fdj.width()/2,
						_top = e.pageY - box.offset().top - fdj.height()/2;
					//判断边界
					if(_left <0) _left = 0;
					if(_top < 0) _top = 0;
					if(_left > box.width()-fdj.width()) _left = box.width()-fdj.width();
					if(_top > box.height()-fdj.height()) _top = box.height()-fdj.height();
					fdj.css({"left":_left,"top":_top,"display":"block"});
					big.css({"display":"block"});
					bigImg.css({"left":-2 * _left,"top":-2 * _top,"display":"block"});
				});
				box.mouseleave(function(e){
					big.css({"display":"none"});
					fdj.css({"display":"none"});
				});
				$(".imgList").find("img").click(function(e){
					var str = $(this).attr("src");
					console.log($(this).attr("src"));
					$(this).attr("src",$(".box img").attr("src"));
					$(".box img").attr("src",str);
					$(".big img").attr("src",str);
					
				})
				console.log($(".proright"));
				console.log(111);
				$("#btn-").click(function(){
//					console.log(444);
					var num = $("#num").val();
					if(num-1 == 0){
						num = 1;
					}else{
						num--;
					}
					$("#num").val(num);
				})
				$("#btnplus").click(function(){
					var nim = $("#num").val();
					nim++
					$("#num").val(nim);
				})
				var arr=[];
				var cart = $.cookie("cart");
				arr = JSON.parse(cart);
				
				$("#cart").click(function(){
					
					//判断id是否相同，相同就加一
					//var cart= $.cookie("cart");
					
					
//						var json = JSON.parse(cart);
						for(var i = 0;i<arr.length;i++){
							console.log(arr);
							if(arr[i].id == res.products[0].id){
								//console.log(arr[i].num,res.products[0].id);
								arr[i].num ++;
								//console.log(arr[i].num,res.products[0].id);
								break;
							}
						}
						if(i === arr.length){
							var obj = {
								id:res.products[0].id,
								name:res.products[0].description,
								price:res.products[0].nowprice,
								img:res.products[0].image,
								num:$("#num").val()
							};
							arr.push(obj);
							//console.log(arr);
						}
						//存cookie
						console.log(arr);
						var str = JSON.stringify(arr);
						console.log(str);
						$.cookie("cart",str,{
							path:"/",
							expires:7
						});
				})
			}
		});
	})
})
