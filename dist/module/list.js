"use strict";define(["jquery","template"],function(e,n){function t(){}return t.prototype.init=function(o,a){console.log(a);var t={sheet:o};e.ajax({method:"post",data:t,dataType:"json",url:"http://localhost/data/api/select.php",success:function(t){var e=n("pro-template",{sheets:t[o]});a.html(e)}})},new t});