define(["jquery"],function($){
	function Paging(){}
	Paging.prototype.init = function(){
		const count = 8;
		var allPage = 0;
		var nowPage = 1;
		getData(nowPage);
		$(".pagination").click(function(e){
			e = e||event;
			var target = e.target || e.srcElement;
			//当点击的是哪一页，就把哪一页的标签名记下来
			if(target.className === "list-item"){
				nowPage = parseInt(target.innerHTML);
				getData(nowPage);
			}else if(target.className === "prevBtn"){
				//如果点击的是向前一页，就判断一下不能让他往前点了
				if(nowPage === 1) return;
				else{
					getData(--nowPage);
				}
			}else if(target.className ==="nextBtn"){
				if(nowPage === allPage) return;
				else{
					getData(++nowPage);
				}
			}
			e.preventDefault();
			return false;
		})
		//定义getData这个方法，通过向后台发送数据的方式来动态的创建li以及返回一个allPage
		function getData(pageIndex){
			var data ={
				"pageIndex":pageIndex,
				"count":count
			}
			$.ajax({
				type:"get",
				data:data,
				dataType:"json",
				url:"http://localhost/data/api/register.php",
				success:function(res){
					allPage = res.allPage;
					nowPage = res.pageIndex;
					var aLi = $(".allPages");
					if(aLi.length >0){
						var len = aLi.length;
						for(var i = 0;i<len;i++){
							$(".pagination").removeChild(aLi[0]);
						}
					}
					
					for(var i = 0;i<allPage;i++){
						var li = document.createElement("li");
						//给li加上一个类名，然后当前的页面加上另一个类名
						li.className = "allPages"+((i+1)===nowPage?"active":"");
						//给li里面添加一个a
						li.innerHTML = `<a href="javascript:;" class = "list-item">${i+1}</a>`;
						$(".pagination").insertBefore(li,nextPage);
					}
					
				}
			})
		}
		
	}
	
	return new Paging();
})
