"use strict";require(["config"],function(){require(["jquery","header","footer","jquerycookie"],function(t,e,o,a){t("header").load("/html/component/header.html",function(){e.init(),console.log("111")}),t("footer").load("/html/component/footer.html",function(){o.init()}),t("form").submit(function(e){var o={username:t("#username").val(),email:t("#email").val(),password:t("#password").val()};t.ajax({type:"post",data:o,dataType:"json",url:"http://localhost/data/api/login.php",async:!0,success:function(e){1===e.code?(alert("登录成功"),t.cookie("username",e.user[0].username,{path:"/"}),window.open("http://localhost:1123/index.html")):alert("登录失败！")}}),e.preventDefault()})})});