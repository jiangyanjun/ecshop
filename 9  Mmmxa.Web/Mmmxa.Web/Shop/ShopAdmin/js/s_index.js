﻿//    <!--控制右边框架高度为100%的JS代码-->
 function reinitIframe()
    { 
        var iframe = document.getElementById("mainFrame"); 
        try
        { 
            var bHeight = iframe.contentWindow.document.body.scrollHeight; 
            var dHeight = iframe.contentWindow.document.documentElement.scrollHeight; 
            var height = Math.max(bHeight, dHeight); 
            iframe.height = height; 
            $("#mainFrame").attr("style","height:'"+height+"'px;");
        }catch (ex){iframe.height = "1900"; 
          // iframe.height = height; 
        } 
    } 
    window.setInterval("reinitIframe()", 10); 
//    <!--左边菜单展开折叠效果的JS代码-->
     function te_show(f,o)
{
        var oti=document.getElementById("ti0"+f);
        var ote=document.getElementById("te0"+f);
        $("#ti0"+f).find("a").eq(0).addClass("current");
        if(ote.style.display=="none")
        {
        ote.style.display="block";
        }
        else
        {
        ote.style.display="none";
        }
        if(f=="13")
        {
            $("#mainFrame").attr("src","W_WelcomeWX.aspx");window.scroll(1000,180);
        }
     
}
   
//<!--左边菜单项点击菜单项页面置顶JS和鼠标点击选中效果-->
        function subItem(o)
             {
                 $(o).addClass("current").siblings().removeClass("current");
                 $(o).parent().siblings().find("a").removeClass("current");
                 window.scrollTo(0,0);
             }
      $(function(){
                  window.scrollTo(0,0);
             });
//      <!--划过下拉框显示效果-->
					(function($){  window.scrollTo(0,0);
	$.fn.hoverForIE6=function(option){
		var s=$.extend({current:"hover",delay:10},option||{});
		$.each(this,function(){
			var timer1=null,timer2=null,flag=false;
			$(this).bind("mouseover",function(){
				if (flag){
					clearTimeout(timer2);
				}else{
					var _this=$(this);
					timer1=setTimeout(function(){
						_this.addClass(s.current);
						flag=true;
					},s.delay);
				}
			}).bind("mouseout",function(){
				if (flag){
					var _this=$(this);timer2=setTimeout(function(){
						_this.removeClass(s.current);
						flag=false;
					},s.delay);
				}else{
					clearTimeout(timer1);
				}
			})
		})
	}
})(jQuery);
						$(function(){
						    $(".allsort").hoverForIE6({current:"allsorthover",delay:200});
$(".allsort .item").hoverForIE6({delay:150});
						});