require(["config"],function(){
	require(["jquery","header","footer","jquerycookie"],function($,header,footer,jquerycookie){
		$("header").load("/html/component/header.html",function(){
			header.init();
			console.log("111");
		});
		$("footer").load("/html/component/footer.html",function(){
			footer.init();
		});
		$("form").submit(function(e){
			var data = {
				"username":$("#username").val(),
				"email":$("#email").val(),
				"password":$("#password").val()
			}
			$.ajax({
				type:"post",
				data:data,
				dataType:"json",
				url:"http://localhost/data/api/login.php",
				async:true,
				success:function(res){
					if(res.code ===1){
						alert("登录成功");
						$.cookie("username",res.user[0].username,{
							path:"/"
						})
						window.open("http://localhost:1123/index.html");
					}else{
						alert("登录失败！");
					}
					
//					if(res.username)
				}
			});
			e.preventDefault();
		})
	})
})
