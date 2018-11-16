require(["config"],function(){
	require(["jquery","header","footer"],function($,header,footer){
		$("header").load("/html/component/header.html",function(){
			header.init();
		});
		$("footer").load("/html/component/footer.html",function(){
			footer.init();
		});
		$(".regleft").submit(function(e){
			var data = {
				"username":$("#username").val(),
				"email":$("#email").val(),
				"password":$("#password").val(),
				"phone":$("#phonenum").val()
			}
			$.ajax({
				type:"post",
				data:data,
				dataType:"json",
				url:"http://localhost/data/api/register.php",
				async:true,
				success:function(res){
					if($("#password").val() !== $("#newpassword").val()){
						alert("两次密码必须一致");
						return false;
					}
					if($("#phonenum").val().length !== 11){
						alert("电话号码长度必须是11位");
						return false;
					}
					if(res.code === 1){
						alert("恭喜你注册成功！点击确认跳转到跳转页面");
						window.open("http://localhost:1123/html/login.html");
					}else{
						alert("发生未知错误，请重新注册");
					}
				}
			});
			e.preventDefault();
		})
		
	})
})