<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href='<%= Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.LastIndexOf('/') + 1) %>' />
    <meta http-equiv="x-ua-compatible" content="ie=7" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="shortcut icon" href="favicon.ico" />
    <ShopNum1:Meto ID="meto1" runat="server" Type="1" SkinFilename="Meto.ascx" />
    <link href="Themes/Skin_Default/Style/index.css" rel="stylesheet" type="text/css" />
    <script src="Themes/Skin_Default/js/jquery.min.js" type="text/javascript"></script>
     <script type="text/javascript">window.scrollTo(0,0);
    $(function(){
        var tasli = $(".categoryn ul").find(".iten:gt(5)");
        tasli.hide();
        $(".categoryn").hover(function(){
        $(this).find(".iten:lt(20)").show();
        },function(){
        tasli.hide();
        });
    })
    
    </script>
    
    
<style>

.mallLeft{ width:205px; }
.categoryn{ width:205px;}
.categoryn .categoryHd{ width: 205px;}
.categoryn .menu {width: 205px;}
.categoryn .iten{ width: 203px;height: 66px;}
.categoryn .itemCol1{ width:179px;}

#content {
  background:none;
}

.topScreen{ width:1190px; height:456px; padding-bottom:10px;}

.tsMain {
  float: left;
  height: 456px;
  overflow: hidden;
  width: 985px;
}

.tsSlide{height: 446px;overflow: hidden;position: relative;width:770px;*z-index:9;zoom:1;z-index:1; margin:10px; margin-bottom:0;_margin:10px 5px 0 5px; float:left;}
.tsSlide_list li {height: 446px;overflow: hidden;position: relative;width:770px;*z-index:9;zoom:1;z-index:1;}

.lmf_top_left{ width:195px; float:right; margin-top:10px;}

.tabs2 {border-bottom: 1px solid #999999;border-left: 1px solid #E4E4E4;height: 32px; width: 100%;}
.tabs2 li {
  background-color:#F1EFF0;
  border-color: #E4E4E4 #E4E4E4 #FFFFFF ;
  border-style: solid solid solid none;
  border-width: 1px 1px 1px medium;
  float: left;
  height: 31px;
  line-height: 31px;
  margin-bottom: -1px;
  overflow: hidden;
  position: relative;
  width: 96px;
}
.tabs2 .thistab, .tabs2 .thistab a:hover {
  background: none repeat scroll 0 0 #FFFFFF;
  border-bottom: 1px solid #FFFFFF;
}
.tabs2 li a 
{
	text-align:center;
  display: block;
  outline: medium none;
  padding: 0 9px;
}

.lmf_gonggao dl{
  line-height: 22px;
  padding: 0 5px;
}

.tsSlide .btnBg {position:absolute; width:770px; height:32px; left:0; bottom:0; background:#000; z-index:3;}
.tsSlide .btn {position:absolute; width:750px; height:24px; left:0; bottom:4px; padding:0 10px; z-index:5;text-align:right;}
.tsSlide .btn span{background-color:#716564;color: #FFFFFF;cursor: pointer;display: inline-block;font-family: "Microsoft YaHei",SimHei;font-size: 16px;height: 24px;line-height: 22px;margin-right: 10px;text-align: center;width: 24px;}
.tsSlide .btn span.on{color:#fcc;background-color:#B91919;}

.tsSlide_list .li1_div1{left: 0; top: 0; width: 770px; height: 420px;}
.tsSlide_list .li1_div2{right: 0; top: 0; width: 770px; height: 420px;}
.tsSlide_list .li1_div3{right: 0; top: 0; width: 770px; height: 420px;}
.tsSlide_list .li1_div4{right: 0; top:0; width: 770px; height: 420px;}
.tsSlide_list .li1_div5{right: 0; top:0; width: 770px; height: 420px;}

.subCategory{left: 203px;position: absolute;top: -10px;z-index: 16;display:none;}



</style>

<script type="text/javascript">
    
    function HideWenzi0()
    {
        $("#w0").hide();
        $("#w1").hide();
        $("#w2").hide();
        
        document.getElementById("q0").className = "";
        document.getElementById("q1").className = "";
        document.getElementById("q2").className = "";
        
        document.getElementById("d0").className = "";
        document.getElementById("d1").className = "";
        document.getElementById("d2").className = "";
    }
     function HideWenzi1()
    {
        $("#w1").hide();
        $("#w2").hide();
    }
    function HideWenzi2()
    {      
        $("#w2").hide();
    }
</script>

<script type="text/javascript">
        function changeTab(selfid,targetid,index,count,selfclass,otherclass,BNum,Bclass) {
            for(var i=0;i<count;i++) {
                if(i == index) {
                    document.getElementById(selfid + i).className = selfclass;
                    document.getElementById(targetid + i).style.display = "block";
                }
                else {
                    document.getElementById(selfid + i).className = otherclass;

                    document.getElementById(targetid + i).style.display = "none";
                }
                 document.getElementById("d" + i).className = "";
            }
            document.getElementById("d" + BNum).className =Bclass;
        }   
</script>

<script type="text/javascript">
        function tab(selfid,targetid,index,count,selfclass,otherclass) {
            for(var i=0;i<count;i++) {
                if(i == index) {
                    document.getElementById(selfid + i).className = selfclass;
                    document.getElementById(targetid + i).style.display = "block";
                     
                }
                else {
                    document.getElementById(selfid + i).className = otherclass;
                    document.getElementById(targetid + i).style.display = "none";
                }
                
            }
            
            
        }
</script>

<!--��ҳ���λ-->
<script type="text/javascript">
$(function() {
	var sWidth = $("#focus").width(); //��ȡ����ͼ�Ŀ�ȣ���ʾ�����
	var len = $("#focus ul li").length; //��ȡ����ͼ����
	var index = 0;
	var picTimer;
	
	//���´���������ְ�ť�Ͱ�ť��İ�͸������
	var btn = "<div class='btnBg'></div><div class='btn'>";
	for(var i=0; i < len; i++) {
		btn += "<span>" + (i+1) + "</span>";
	}
	btn += "</div>"
	$("#focus").append(btn);
	$("#focus .btnBg").css("opacity",0.2);
	
	//Ϊ���ְ�ť�����껬���¼�������ʾ��Ӧ������
	$("#focus .btn span").mouseenter(function() {
		index = $("#focus .btn span").index(this);
		showPics(index);
	}).eq(0).trigger("mouseenter");
	
	//����Ϊ���ҹ�����������liԪ�ض�����ͬһ�����󸡶�������������Ҫ�������ΧulԪ�صĿ��
	$("#focus ul").css("width",sWidth * (len + 1));
	
//��껬��ĳli�е�ĳdiv�������ͬ��divԪ�ص�͸���ȣ�����li�ı���Ϊ��ɫ�����Ի��б䰵��Ч��
	$("#focus ul li div").hover(function() {
		$(this).siblings().css("opacity",0.7);
	},function() {
		$("#focus ul li div").css("opacity",1);
	});
	
	//��껬�Ͻ���ͼʱֹͣ�Զ����ţ�����ʱ��ʼ�Զ�����
	$("#focus").hover(function() {
		clearInterval(picTimer);
	},function() {
		picTimer = setInterval(function() {
			if(index == len) { //�������ֵ����liԪ�ظ�����˵�����һ��ͼ������ϣ�������Ҫ��ʾ��һ��ͼ��������showFirPic()��Ȼ������ֵ����
				showFirPic();
				index = 0;
			} else { //�������ֵ������liԪ�ظ���������ͨ״̬�л�������showPics()
				showPics(index);
			}
			index++;
		},5000); //��3000�����Զ����ŵļ������λ������
	}).trigger("mouseleave");
	
	//��ʾͼƬ���������ݽ��յ�indexֵ��ʾ��Ӧ������
	function showPics(index) { //��ͨ�л�
		var nowLeft = -index*sWidth; //����indexֵ����ulԪ�ص�leftֵ
		$("#focus ul").stop(true,false).animate({"left":nowLeft},500); //ͨ��animate()����ulԪ�ع������������position
		$("#focus .btn span").removeClass("on").eq(index).addClass("on"); //Ϊ��ǰ�İ�ť�л���ѡ�е�Ч��
	}
	
	function showFirPic() { //���һ��ͼ�Զ��л�����һ��ͼʱר��
		$("#focus ul").append($("#focus ul li:first").clone());
		var nowLeft = -len*sWidth; //ͨ��liԪ�ظ�������ulԪ�ص�leftֵ��Ҳ�������һ��liԪ�ص��ұ�
		$("#focus ul").stop(true,false).animate({"left":nowLeft},500,function() {
			//ͨ��callback���ڶ����������ulԪ�����¶�λ����㣬Ȼ��ɾ�����һ�����ƹ�ȥ��Ԫ��
			$("#focus ul").css("left","0");
			$("#focus ul li:last").remove();
		}); 
		$("#focus .btn span").removeClass("on").eq(0).addClass("on"); //Ϊ��һ����ť���ѡ�е�Ч��
	}
	
	
});

</script>

<!--Ʒ�Ƶ���-->
<script type="text/javascript">
$(function(){
    //��껮��ʱ
    $('#drop1').hover
    (
            function()
            {     
                  $(this).children('#w0').show();
                  $(this).children('#w1').hide();
                  $(this).children('#w2').hide();
                  
                  $(this).children('dt').children('a').toggleClass("dhover");
                  $("#drop2").children('dt').children('a').toggleClass("cc");
                  $("#drop3").children('dt').children('a').toggleClass("cc");
                  
                  $(this).children('dt').children('a').children('b').addClass("d0");
            },
            //����Ƴ�ʱ
            function()
            {
                  $(this).children('#w0').hide();
                  
                  $(this).children('dt').children('a').attr("class","");
                  $("#drop2").children('dt').children('a').attr("class","");
                  $("#drop3").children('dt').children('a').attr("class","");
                  
                  $(this).children('dt').children('a').children('b').removeClass("d0");
            }
     );
     
      $('#drop2').hover
      (
            function()
            {
                  $(this).children('#w0').hide();
                  $(this).children('#w1').show();
                  $(this).children('#w2').hide();
                  
                  $(this).children('dt').children('a').toggleClass("dhover");
                  $("#drop1").children('dt').children('a').toggleClass("cc");
                  $("#drop3").children('dt').children('a').toggleClass("cc");
                  
                  $(this).children('dt').children('a').children('b').addClass("d1");
            
            },
            //����Ƴ�ʱ
            function()
            {
                $(this).children('#w1').hide();
                 $(this).children('dt').children('a').attr("class","");
                  $("#drop1").children('dt').children('a').attr("class","");
                  $("#drop3").children('dt').children('a').attr("class","");
                  
                  $(this).children('dt').children('a').children('b').removeClass("d1");
            }
        
      );
      
      $('#drop3').hover
      (
            function()
            {
                  $(this).children('#w0').hide();
                  $(this).children('#w1').hide();
                  $(this).children('#w2').show();
                  
                  $(this).children('dt').children('a').toggleClass("dhover");
                  $("#drop1").children('dt').children('a').toggleClass("cc");
                  $("#drop2").children('dt').children('a').toggleClass("cc");
                  
                  $(this).children('dt').children('a').children('b').addClass("d2");
            
            },
            //����Ƴ�ʱ
            function()
            {
                  $(this).children('#w2').hide();
                  
                  $(this).children('dt').children('a').attr("class","");
                  $("#drop1").children('dt').children('a').attr("class","");
                  $("#drop2").children('dt').children('a').attr("class","");
                  
                  $(this).children('dt').children('a').children('b').removeClass("d2");
                  
            }
        
      );
//     $(".itenone h3 a,.itenone .item_col a,.itentwo h3 a,.itentwo .item_col a").each(function(){
//            $(this).removeAttr("href");
//     });
})
</script>
    
    
</head>
<body>
    <form id="form1" runat="server">
        <!--head start-->
        <!-- #include file="head.aspx" -->
        <!--//head end-->
        <!--main start-->
        
        
        
        <div id="content">
    <div class="mallFpCon">
        <div class="topScreen">
            <!--�������� Start-->
            <ShopNum1:ProductThreeCategory2_V8_2 ID="ProductThreeCategory2_V8_2" FlowerID="3" SimulationID="4"
                CartoonID="5" CakeID="6" PlantsID="7" WeddingID="8" Show0Count="3" ShowOneCount="20"
                ShowTwoCount="1000" ShowThreeCount="30" runat="server" SkinFilename="ProductThreeCategory2_V8_2.ascx" CssClass="w_cate" />
            <!--//�������� End-->
            
            <!--�õ�Ƭ Start-->
            <div class="tsMain">
                <div id="focus" class="tsSlide">
                    <ul class="tsSlide_list">
                        <li>
                            <div class="li1_div1">
                                <ShopNum1:AdSimpleImage ID="AdSimpleImage6" runat="server" AdImgId="1" SkinFilename="AdSimpleImage.ascx" />
                            </div>
                        </li>
                        <li>
                            <div class="li1_div2">
                                <ShopNum1:AdSimpleImage ID="AdSimpleImage7" runat="server" AdImgId="2" SkinFilename="AdSimpleImage.ascx" />
                            </div>
                        </li>
                        <li>
                           <div class="li1_div3">
                                <ShopNum1:AdSimpleImage ID="AdSimpleImage3_0" runat="server" AdImgId="3" SkinFilename="AdSimpleImage.ascx" />
                            </div>
                        </li>
                        <li>
                            <div class="li1_div4">
                                <ShopNum1:AdSimpleImage ID="AdSimpleImage8" runat="server" AdImgId="4" SkinFilename="AdSimpleImage.ascx" />
                            </div>
                        </li>
                        <li>
                            <div class="li1_div5">
                                <ShopNum1:AdSimpleImage ID="AdSimpleImage5_0" runat="server" AdImgId="5" SkinFilename="AdSimpleImage.ascx" />
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="lmf_top_left">
                        <%--<div class="lmf_top_left1">
                            <div class="lmf_mybb">
                                <table cellpadding="0" cellspacing="0" border="0">
                                    <tr>
                                        <td style="width: 60px;">
                                            <div class="lmf_mybb1">
                                                <img src="Themes/Skin_Default/Images/lmf_mybb1.jpg" />
                                            </div>
                                            <div class="lmf_mybb_text">
                                                ���ٰ���</div>
                                        </td>
                                        <td style="width: 75px;">
                                            <div class="lmf_mybb1" style="padding-left: 15px;">
                                                <img src="Themes/Skin_Default/Images/lmf_mybb2.jpg" />
                                            </div>
                                            <div class="lmf_mybb_text" style="padding-left: 15px;">
                                                ��Ʒ����</div>
                                        </td>
                                        <td style="width: 60px;">
                                            <div class="lmf_mybb1">
                                                <img src="Themes/Skin_Default/Images/lmf_mybb3.jpg" />
                                            </div>
                                            <div class="lmf_mybb_text">
                                                �ۺ�����</div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="lmf_tese">
                                <div class="lmf_tese_title">
                                    �̳���ɫ��Ŀ</div>
                                <table cellpadding="0" cellspacing="0" border="0">
                                    <tr>
                                        <td>
                                            <div class="lmf_ts">
                                                <a href="/Integral.html">
                                                    <img src="Themes/Skin_Default/Images/lmf_ts01.jpg" />
                                                    <span>�����̳�</span></a>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="lmf_ts">
                                                <a href="#">
                                                    <img src="Themes/Skin_Default/Images/lmf_ts02.jpg" />
                                                    <span>���а�</span></a>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="lmf_ts">
                                                <a href="#">
                                                    <img src="Themes/Skin_Default/Images/lmf_ts03.jpg" />
                                                    <span>��������</span></a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>--%>

                        <script>
<!--
function setTab(name,cursel,n){
for(i=1;i<=n;i++){
var menu=document.getElementById(name+i);/* zzjs1 */
var con=document.getElementById("con_"+name+"_"+i);/* con_zzjs_1 */
menu.className=i==cursel?"hover":"";/*��Ŀ���� �Ⱥ�����*/
con.style.display=i==cursel?"block":"none";
}
}
//-->
                        </script>

                        <%--<div id="main">
                            <div id="menubox">
                                <!--��ʽ1 ����ѡ�-->
                                <ul>
                                    <li id="zzjs1" onmousemove="setTab('zzjs',1,6)" class="hover">Ʒ������</li>
                                    <li id="zzjs2" onmousemove="setTab('zzjs',2,6)">Ʒ���Ƽ�</li>
                                </ul>
                            </div>
                            <div id="conten">
                                <div class="www_zzjs_net_show" id="con_zzjs_1">

                                    <script type="text/javascript" src="Themes/Skin_Default/js/jquery.pack.js"></script>

                                    <script type="text/javascript" src="Themes/Skin_Default/js/jQuery.blockUI.js"></script>

                                    <script type="text/javascript" src="Themes/Skin_Default/js/jquery.SuperSlide.js"></script>

                                    <div id="demoContent">
                                        <div class="effect">
                                            <div id="slideBox" class="slideBox">
                                                <div class="hd">
                                                    <ul>
                                                        <li>1</li><li>2</li><li>3</li></ul>
                                                </div>
                                                <div class="bd">
                                                    <ul>
                                                        <li>
                                                        <span>
                                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew55" runat="server" SkinFilename="WebAdImage.ascx"
                                                        AdID="1" />
                                                        </span>
                                                        <span>
                                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew56" runat="server" SkinFilename="WebAdImage.ascx"
                                                        AdID="2" />
                                                        </span>
                                                        <span>
                                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew57" runat="server" SkinFilename="WebAdImage.ascx"
                                                        AdID="3" />
                                                        </span>
                                                        <span>
                                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew58" runat="server" SkinFilename="WebAdImage.ascx"
                                                        AdID="4" />
                                                        </span>
                                                        </li>
                                                        <li>
                                                        <span>
                                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew59" runat="server" SkinFilename="WebAdImage.ascx"
                                                        AdID="5" />
                                                        </span>
                                                        <span>
                                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew60" runat="server" SkinFilename="WebAdImage.ascx"
                                                        AdID="6" />
                                                        </span>
                                                        <span>
                                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew61" runat="server" SkinFilename="WebAdImage.ascx"
                                                        AdID="7" />
                                                        </span>
                                                        <span>
                                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew62" runat="server" SkinFilename="WebAdImage.ascx"
                                                        AdID="8" />
                                                        </span>
                                                        </li>
                                                        <li>
                                                        <span>
                                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew63" runat="server" SkinFilename="WebAdImage.ascx"
                                                        AdID="9" />
                                                        </span>
                                                        <span>
                                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew64" runat="server" SkinFilename="WebAdImage.ascx"
                                                        AdID="10" />
                                                        </span>
                                                        <span>
                                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew65" runat="server" SkinFilename="WebAdImage.ascx"
                                                        AdID="11" />
                                                        </span>
                                                        <span>
                                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew66" runat="server" SkinFilename="WebAdImage.ascx"
                                                        AdID="12" />
                                                        </span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>

                                            <script type="text/javascript">jQuery(".slideBox").slide( { mainCell:".bd ul",effect:"left",autoPlay:true} );</script>

                                        </div>
                                    </div>
                                </div>
                                <div class="www_zzjs_net_show" id="con_zzjs_2">
                                    <ShopNum1:NewBrandRecommend ID="NewBrandRecommend" runat="server" SkinFilename="NewBrandRecommend.ascx"  ShowCount="10"/>
                                </div>
                            </div>
                        </div>--%>

  <script type="text/javascript">
$(document).ready(function() {
	jQuery.jqtab = function(tabtit,tab_conbox,shijian) {
		$(tab_conbox).find("li").hide();
		$(tabtit).find("li:first").addClass("thistab").show(); 
		$(tab_conbox).find("li:first").show();
	
		$(tabtit).find("li").bind(shijian,function(){
		  $(this).addClass("thistab").siblings("li").removeClass("thistab"); 
			var activeindex = $(tabtit).find("li").index(this);
			$(tab_conbox).children().eq(activeindex).show().siblings().hide();
			return false;
		});
	
	};
	/*���÷������£�*/
	$.jqtab("#tabs","#tab_conbox","mouseenter");
	$.jqtab("#tabs2","#tab_conbox2","mouseenter");
	$.jqtab("#tabs3","#tab_conbox3","mouseenter");
	
});
                        </script>
                        
                       <script language="javascript" type="text/javascript">
                            jQuery(function($){
                                $('.marquee').each(function(){
                                    $(this).marquee({
                                        step: 22, // ����
                                        time: 300, // �����ٶ�
                                        wait: 1500 // ���ʱ��
                                    });
                                });
                            });

                            jQuery.fn.extend({
                                marquee: function(setting){
                                    if(this.length <= 0){
                                        return this;
                                    }

                                    var main = this;
                                    var marquee_items = main.children();

                                    // Ϊ���ڱ߽�ֵ����ѭ������Ҫ��ԭ����Ԫ�ظ���һ��
                                    var html = main.html();
                                    main.html(html + html);
                                    var marquee_current = 0;
                                    var marquee_timer = null;
                                    var marquee_run = function(){
                                        console.log(marquee_current);
                                        if(marquee_current >= marquee_items.length){
                                            marquee_current = 0;
                                            main.css({
                                                top: '0px'
                                            });
                                        }

                                        clearTimeout(marquee_timer);

                                        main.stop().animate({
                                            top: - marquee_current * setting.step + 'px'
                                        }, setting.time, function(){
                                            marquee_timer = setTimeout(function(){
                                                marquee_run();
                                            }, setting.wait);
                                        });

                                        marquee_current++;
                                    }
                                    marquee_run();

                                    // �������ȥ��ͣ
                                    main.children().bind({
                                        mouseover: function(e){
                                            main.stop();
                                            clearTimeout(marquee_timer);
                                        },
                                        mouseout: function(e){
                                            marquee_timer = setTimeout(function(){
                                                marquee_run();
                                            }, setting.wait);
                                        }
                                    });
                                }
                            })
                        </script> 
                        <div class="lmf_gonggao">
                            <ul class="tabs2" id="tabs" style="border-bottom:none;">
                                <li><a>���¹���</a></li>
                                <li><a>��������</a></li>
                            </ul>
                            <div id="tab_conbox">
                            <div style="border:1px solid #e4e4e4;border-top:none;width:193px;height:412px; overflow:hidden; position:relative; display:block;">
                                <ShopNum1:AnnouncementNewList ID="AnnouncementNewList1" runat="server" SkinFilename="AnnouncementNewList.ascx" ShowCount="20" />
                            </div>
                            <div style="border:1px solid #e4e4e4;border-top:none;width:193px;height:412px; overflow:hidden; position:relative; display:none;">
                                <ShopNum1:ArticleNewList ID="ArticleNewList" runat="server" SkinFilename="ArticleNewList.ascx" ShowCount="20" />
                            </div>
                            </div>
                        </div>
                        
                    </div>
            </div>
            <!--//�õ�Ƭ End-->
        </div>
    </div>
    <div class="mainFpCon">
    
                <div class="lmf_xsqg" style=" padding:0 2px;">
                            <ul class="tabs1" id="tabs3">
                                <li><a>�Ƽ���Ʒ</a></li>
                                <li><a>������Ʒ</a></li>
                                <li><a>�Ƽ�����</a></li>
                                <li><a>���ŵ���</a></li>
                            </ul>
                            <ul class="tab_conbox1" id="tab_conbox3">
                            <li class="tab_con1" id="tab_id1">
                               <ShopNum1:WebProduct ID="WebProduct1" runat="server" ShowCount="6" type="IsSystemRecommend"   SkinFilename="WebProduct.ascx" OrderWord="SystemOrderID"/>
                              </li>
                                 <li class="tab_con1" id="tab_id2">
                               <ShopNum1:WebProduct ID="WebProduct2" runat="server" ShowCount="6" type="IsSystemHot"   SkinFilename="WebProduct.ascx" OrderWord="SystemOrderID"/>
                              </li>
                                 <li class="tab_con1" id="tab_id3">
                               <ShopNum1:WebShopList ID="WebShopList1" type="IsSystemRecommend" runat="server" ShowCount="6"   SkinFilename="WebShopList.ascx"  OrderWord="SystemOrderID"/>
                              </li>
                                 <li class="tab_con1" id="tab_id4">
                               <ShopNum1:WebShopList ID="WebShopList2" type="IsSystemHot" runat="server" ShowCount="6"  SkinFilename="WebShopList.ascx" OrderWord="SystemOrderID" />
                              </li>
                            </ul>
                        </div>
                        
         <div class="maptop_index">
           <%-- <ShopNum1:AdSimpleImage ID="AdSimpleImage18" runat="server" AdImgId="78" SkinFilename="AdSimpleImage.ascx" />--%>
        </div>
        
    </div>
</div>
                 <!--���λ--> 
               <div class="lmf_all_main">
                <div class="maptop_index">
            <ShopNum1:AdSimpleImage ID="floor_bottom" runat="server" AdImgId="77" SkinFilename="AdSimpleImage.ascx" />
        </div>  
                 <!--���λ-->
        <!--1¥-->         
        <div class="lmf_mod_floor1">
                    <div class="title" style="height: 27px;">
                        <div class="setitle fl">
                            <span class="num_floor">1F</span><span class="floor_text"><a href="ShopListSearch.aspx?code=001">��Ů����</a></span>
                           <%-- <img src="Themes/Skin_Default/Images/floorHd.png" />--%></div>
                        <ShopNum1:ProductSubCategory ID="ProductSubCategory7" runat="server" SkinFilename="ProductSubCategory.ascx"
                            CategoryID="622" ShowCount="8" />
                    </div>
                    <div class="lmf_mod_main">
                        <div class="lmf_mod_right" style="display: block;width:1190px;">
                             <table cellpadding="0" cellspacing="0" border="0">
                                <tr>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew17" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="1" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew1" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="2" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew2" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="3" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew3" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="4" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew4" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="5" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew5" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="6" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
              
            <!--1¥-->
            
             <!--���λ--> 
                <%--<div class="lmf_adad">
                    <div class="lmf_ad_left">
                          <ShopNum1:AdSimpleImage ID="AdSimpleImage12" runat="server" AdImgId="95" SkinFilename="AdSimpleImage.ascx" />
                    </div>
                    <div class="lmf_ad_right">
                         <ShopNum1:AdSimpleImage ID="AdSimpleImage13" runat="server" AdImgId="95" SkinFilename="AdSimpleImage.ascx" />
                    </div>
                </div>--%>  
                 <!--���λ-->
        <!--2¥-->         
        <div class="lmf_mod_floor1">
                    <div class="title" style="height: 27px;">
                        <div class="setitle fl">
                            <span class="num_floor">2F</span><span class="floor_text"><a href="ShopListSearch.aspx?code=001">Ь������</a></span>
                           <%-- <img src="Themes/Skin_Default/Images/floorHd.png" />--%></div>
                        <ShopNum1:ProductSubCategory ID="ProductSubCategory1" runat="server" SkinFilename="ProductSubCategory.ascx"
                            CategoryID="622" ShowCount="8" />
                    </div>
                    <div class="lmf_mod_main">
                        <div class="lmf_mod_right" style="display: block;width:1190px;">
                             <table cellpadding="0" cellspacing="0" border="0">
                                <tr>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew6" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="7" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew7" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="8" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew8" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="9" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew9" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="10" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew10" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="11" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew11" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="12" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            <!--2¥-->
            
             <!--���λ--> 
                <%--<div class="lmf_adad">
                    <div class="lmf_ad_left">
                          <ShopNum1:AdSimpleImage ID="AdSimpleImage20" runat="server" AdImgId="95" SkinFilename="AdSimpleImage.ascx" />
                    </div>
                    <div class="lmf_ad_right">
                         <ShopNum1:AdSimpleImage ID="AdSimpleImage21" runat="server" AdImgId="95" SkinFilename="AdSimpleImage.ascx" />
                    </div>
                </div>--%>  
                 <!--���λ-->
        <!--3¥-->         
        <div class="lmf_mod_floor1">
                    <div class="title" style="height: 27px;">
                        <div class="setitle fl">
                            <span class="num_floor">3F</span><span class="floor_text"><a href="ShopListSearch.aspx?code=001">������ױ</a></span>
                           <%-- <img src="Themes/Skin_Default/Images/floorHd.png" />--%></div>
                        <ShopNum1:ProductSubCategory ID="ProductSubCategory2" runat="server" SkinFilename="ProductSubCategory.ascx"
                            CategoryID="622" ShowCount="8" />
                    </div>
                    <div class="lmf_mod_main">
                        <div class="lmf_mod_right" style="display: block;width:1190px;">
                             <table cellpadding="0" cellspacing="0" border="0">
                                <tr>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew12" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="13" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew13" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="14" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew14" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="15" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew15" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="16" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew16" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="17" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew18" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="18" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            <!--3¥-->
            
            
             <!--���λ--> 
            <div class="maptop_index">
            <ShopNum1:AdSimpleImage ID="AdSimpleImage1" runat="server" AdImgId="77" SkinFilename="AdSimpleImage.ascx" />
            </div>
                 <!--���λ-->
        <!--4¥-->         
        <div class="lmf_mod_floor1">
                    <div class="title" style="height: 27px;">
                        <div class="setitle fl">
                            <span class="num_floor">4F</span><span class="floor_text"><a href="ShopListSearch.aspx?code=001">�˶�����</a></span>
                           <%-- <img src="Themes/Skin_Default/Images/floorHd.png" />--%></div>
                        <ShopNum1:ProductSubCategory ID="ProductSubCategory3" runat="server" SkinFilename="ProductSubCategory.ascx"
                            CategoryID="622" ShowCount="8" />
                    </div>
                    <div class="lmf_mod_main">
                        <div class="lmf_mod_right" style="display: block;width:1190px;">
                             <table cellpadding="0" cellspacing="0" border="0">
                                <tr>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew19" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="19" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew20" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="20" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew21" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="21" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew22" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="22" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew23" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="23" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew24" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="24" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            <!--4¥-->
            
            
             <!--���λ--> 
                <%--<div class="lmf_adad">
                    <div class="lmf_ad_left">
                          <ShopNum1:AdSimpleImage ID="AdSimpleImage36" runat="server" AdImgId="95" SkinFilename="AdSimpleImage.ascx" />
                    </div>
                    <div class="lmf_ad_right">
                         <ShopNum1:AdSimpleImage ID="AdSimpleImage37" runat="server" AdImgId="95" SkinFilename="AdSimpleImage.ascx" />
                    </div>
                </div>--%>  
                 <!--���λ-->
        <!--5¥-->         
        <div class="lmf_mod_floor1">
                    <div class="title" style="height: 27px;">
                        <div class="setitle fl">
                            <span class="num_floor">5F</span><span class="floor_text"><a href="ShopListSearch.aspx?code=001">����ҵ�</a></span>
                           <%-- <img src="Themes/Skin_Default/Images/floorHd.png" />--%></div>
                        <ShopNum1:ProductSubCategory ID="ProductSubCategory4" runat="server" SkinFilename="ProductSubCategory.ascx"
                            CategoryID="622" ShowCount="8" />
                    </div>
                    <div class="lmf_mod_main">
                        <div class="lmf_mod_right" style="display: block;width:1190px;">
                             <table cellpadding="0" cellspacing="0" border="0">
                                <tr>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew25" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="25" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew26" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="26" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew27" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="27" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew28" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="28" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew29" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="29" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew30" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="30" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            <!--5¥-->
             <div class="maptop_index">
            <ShopNum1:AdSimpleImage ID="AdSimpleImage3" runat="server" AdImgId="77" SkinFilename="AdSimpleImage.ascx" />
        </div>
        <!--6¥-->         
        <div class="lmf_mod_floor1">
                    <div class="title" style="height: 27px;">
                        <div class="setitle fl">
                            <span class="num_floor">6F</span><span class="floor_text"><a href="ShopListSearch.aspx?code=001">���ðٻ�</a></span>
                           <%-- <img src="Themes/Skin_Default/Images/floorHd.png" />--%></div>
                        <ShopNum1:ProductSubCategory ID="ProductSubCategory5" runat="server" SkinFilename="ProductSubCategory.ascx"
                            CategoryID="622" ShowCount="8" />
                    </div>
                    <div class="lmf_mod_main">
                        <div class="lmf_mod_right" style="display: block;width:1190px;">
                             <table cellpadding="0" cellspacing="0" border="0">
                                <tr>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew31" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="31" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew32" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="32" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew33" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="33" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew34" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="34" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew35" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="35" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew36" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="36" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            <!--6¥-->
            
            
             <!--���λ--> 
                <%--<div class="lmf_adad">
                    <div class="lmf_ad_left">
                          <ShopNum1:AdSimpleImage ID="AdSimpleImage52" runat="server" AdImgId="95" SkinFilename="AdSimpleImage.ascx" />
                    </div>
                    <div class="lmf_ad_right">
                         <ShopNum1:AdSimpleImage ID="AdSimpleImage53" runat="server" AdImgId="95" SkinFilename="AdSimpleImage.ascx" />
                    </div>
                </div>  --%>
                 <!--���λ-->
        <!--7¥-->         
        <div class="lmf_mod_floor1">
                    <div class="title" style="height: 27px;">
                        <div class="setitle fl">
                            <span class="num_floor">7F</span><span class="floor_text"><a href="ShopListSearch.aspx?code=001">��������</a></span>
                           <%-- <img src="Themes/Skin_Default/Images/floorHd.png" />--%></div>
                        <ShopNum1:ProductSubCategory ID="ProductSubCategory6" runat="server" SkinFilename="ProductSubCategory.ascx"
                            CategoryID="622" ShowCount="8" />
                    </div>
                    <div class="lmf_mod_main">
                        <div class="lmf_mod_right" style="display: block;width:1190px;">
                             <table cellpadding="0" cellspacing="0" border="0">
                                <tr>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew37" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="37" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew38" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="38" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew39" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="39" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew40" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="40" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew41" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="41" />
                                    </td>
                                    <td class="lmf_prog">
                                        <ShopNum1:WebAdImageNew ID="WebAdImageNew42" runat="server" SkinFilename="WebAdImage.ascx"
                                            AdID="42" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>

            <!--7¥-->
            <!--���λ--> 
        <div class="maptop_index">
            <ShopNum1:AdSimpleImage ID="AdSimpleImage2" runat="server" AdImgId="77" SkinFilename="AdSimpleImage.ascx" />
        </div>
        </div>     
        <!--//main end-->
        <!--foot start-->
        <!-- #include file="foot1.aspx" -->
        <!--foot end-->
        <!--js-->
      <script src="/js/load.js" type="text/javascript"></script>
        <script type="text/javascript" charset="utf-8">
          $(function() {
              $("#content img:not([class='imghdp'])").lazyload({placeholder : "/ImgUpload/noImg.jpg"});
              $("img").each(function(){$(this).attr("src",$(this).attr("original"));});
          });
        </script>
    </form>
</body>
</html>
