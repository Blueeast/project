define(["jquery"],function($){
	function SideShow(){}
	SideShow.prototype.init = function(){
		//因为这是通过jquery方法获取的标签，所以要把他写成jQuery对象
		var $ul = $(".sideshow ul"),
			$imgs = $(".sideshow ul li"),
			$ol = $(".sideshow ol");
		
		//因为这些变量的定义没有用到jQuery插件，所以不需要加$
		var index = 0,
		len = $imgs.length,
		flag = false,
		timer = null,
		imgWidth = $imgs.eq(0).width();
//		//each遍历元素，为每一个遍历到的元素赋值,然后根据banner图的数量来创建等量的点击按钮
		$imgs.each(function(){
			$("<li>").html($(this).index()+1).addClass($(this).index()==0?"ac":"").appendTo($ol);
		});
		$imgs.eq(0).clone(true).appendTo($ul);
//		//将ul的宽度设置为所有li宽度的加和，让他们横着排列，好实现滑动的效果
		$ul.css("width",imgWidth*(len+1));
//		
		$ol.on("click","li",function(){
			if(!flag){
				flag = true;
				//给当前触发点击事件的元素加上class，其他元素的class去掉
				$(this).addClass("ac").siblings().removeClass("ac");
				index = $(this).index();
				$ul.animate({"left":-index*imgWidth},"slow",function(){
					flag = false;
				});
			}
		})
//		
		$("#goPrev").click(function(){
			if(!flag){
				flag= true;
				if(--index<0){
					$ul.css("left",-len*imgWidth);
					index = len - 1;
					$ul.animate({"left":-index*imgWidth},"slow",function(){
						flag=false;
					});
				}else{
					$ul.animate({"left":-index*imgWidth},"slow",function(){
						flag=false;
					});
				}
				$ol.children().eq(index).addClass("ac").siblings().removeClass("ac");
			}
			
		})
//		
		$("#goNext").click(function(){
			if(!flag){
				flag = true;
				if(++index >=len){
					$ul.animate({"left":-index*imgWidth},"slow",function(){
						$ul.css("left",0);
						flag = false;
				})
					index = 0;
				}else{
					$ul.animate({"left":-index*imgWidth},"slow",function(){
						
						flag = false;
					})
				}
				$ol.children().eq(index).addClass("ac").siblings().removeClass("ac");
			}
		})
//		
		$(".sideshow ul").hover(function(){
			console.log(timer);
			clearInterval(timer);
		},(function autoPlay(){
			timer = setInterval(function(){
				$("#goNext").trigger("click");
			},2000);
			return autoPlay;
		})());
	}
	
	return new SideShow();
})