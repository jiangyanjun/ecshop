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
.categoryn{ width:205px; }
.categoryn .categoryHd{ width: 205px;}
.categoryn .menu {width: 205px; }
.categoryn .iten{width: 203px;height: 66px;}
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

.lmf_xsqg { margin-top: 10px;}
.tabs1{height: 32px;border-bottom:1px solid #dbdbdb;border-left: 1px solid #dbdbdb; width:1188px;}
.tabs1 li{height:31px;line-height:31px;float:left;border:1px solid #dbdbdb;border-left:none; border-bottom:1px #dbdbdb solid;margin-bottom: -1px;background: #f1eff0;overflow: hidden;position: relative; width:296px;}
.tabs1 li a {display: block;padding: 0 20px;outline: none; color:#333333; text-align:center;}
.tabs1 li a:hover {background: #ffffff;}	
.tabs1 .thistab,.tabs .thistab a:hover{background: #fff;border-bottom: 1px solid #ffffff;}
.tabs1 .thistab a{ font-weight:bold;}
.tab_conbox1{border: 1px solid #dbdbdb;border-top: none; width:1187px; overflow:hidden;}
.tab_con1{ display:none;}
.tab_con1 {padding:4px 0;font-size: 14px;}
.tab_con1 a{ border-top:1px #e4e4e4 solid; display:block;}
.lmf_qianggou{ padding:10px 6px; overflow:hidden;}
.lmf_padding{ width:164px; padding:0 16px;}
.lmf_qg_img a{ display:block; border:2px #ffffff solid; overflow:hidden; width:160px; height:160px;} 
.lmf_qg_img a:hover {border: 2px solid #E4E4E4;}
.lmf_qg_img a img{ width:160px; height:160px;}
.lmf_qg_title {display: block;font-size: 12px;height: 28px;line-height: 14px;overflow: hidden;padding: 4px 4px 0;text-align: left;}
.lmf_qg_title a {border: medium none;color: #666666;}
.lmf_qg_title a:hover{ color:#cc0000;}
.lmf_qg_price {color: #CC0000;font-family: "Arial";font-size: 12px;font-weight: bold;padding: 0 4px;text-align: left;}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <!--head start-->
        <!-- #include file="head.aspx" -->
        <!--//head end-->
        <!--main start-->
        


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
})
</script>
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
                                <ShopNum1:AdSimpleImage ID="AdSimpleImage1" runat="server" AdImgId="1" SkinFilename="AdSimpleImage.ascx" />
                            </div>
                        </li>
                        <li>
                            <div class="li1_div2">
                                <ShopNum1:AdSimpleImage ID="AdSimpleImage2" runat="server" AdImgId="2" SkinFilename="AdSimpleImage.ascx" />
                            </div>
                        </li>
                        <li>
                           <div class="li1_div3">
                                <ShopNum1:AdSimpleImage ID="AdSimpleImage3_0" runat="server" AdImgId="3" SkinFilename="AdSimpleImage.ascx" />
                            </div>
                        </li>
                        <li>
                            <div class="li1_div4">
                                <ShopNum1:AdSimpleImage ID="AdSimpleImage4" runat="server" AdImgId="4" SkinFilename="AdSimpleImage.ascx" />
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
                        
                        <div class="lmf_gonggao">
                            <ul class="tabs2" id="tabs" style="border-bottom:none;">
                                <li><a>���¹���</a></li>
                                <li><a>��������</a></li>
                            </ul>
                            <div id="tab_conbox">
                            <div style="border:1px solid #e4e4e4;border-top:none;height:412px;">
                                <ShopNum1:AnnouncementNewList ID="AnnouncementNewList1" runat="server" SkinFilename="AnnouncementNewList.ascx" ShowCount="17" />
                            </div>
                            <div style="border:1px solid #e4e4e4;border-top:none;height:412px;">
                                <ShopNum1:ArticleNewList ID="ArticleNewList" runat="server" SkinFilename="ArticleNewList.ascx" ShowCount="17" />
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
                               <ShopNum1:WebProduct ID="WebProduct1" runat="server" ShowCount="6" type="IsAgentRecommend"   SkinFilename="WebProduct.ascx" OrderWord="OrderID"/>
                              </li>
                                 <li class="tab_con1" id="tab_id2">
                               <ShopNum1:WebProduct ID="WebProduct2" runat="server" ShowCount="6" type="IsAgentHot"   SkinFilename="WebProduct.ascx" OrderWord="OrderID"/>
                              </li>
                                 <li class="tab_con1" id="tab_id3">
                               <ShopNum1:WebShopList ID="WebShopList1" type="IsAgentRecommend" runat="server" ShowCount="6"   SkinFilename="WebShopList.ascx"  OrderWord="OrderID"/>
                              </li>
                                 <li class="tab_con1" id="tab_id4">
                               <ShopNum1:WebShopList ID="WebShopList2" type="IsAgentHot" runat="server" ShowCount="6"  SkinFilename="WebShopList.ascx" OrderWord="OrderID" />
                              </li>
                            </ul>
                        </div>
                        
         <div class="maptop_index">
           <%-- <ShopNum1:AdSimpleImage ID="AdSimpleImage18" runat="server" AdImgId="78" SkinFilename="AdSimpleImage.ascx" />--%>
        </div>
        <!--1¥ ������ױ Start-->
        <div class="mod_right4">
            <div class="title">
                <div class="setitle fl">
                    <ShopNum1:AdSimpleImage ID="floor1" runat="server" AdImgId="58" SkinFilename="AdSimpleImage.ascx" Visible="false" />
                    <b>1F</b>�����鱦                    
                </div>
                <ShopNum1:ProductSubCategory ID="ProductSubCategory7" runat="server" SkinFilename="ProductSubCategory.ascx"
                    CategoryID="4" ShowCount="8"  NewCategoryID="004" />
            </div>
            <div class="brandAdvice_con clearfix">
                <div class="floorleft">
                    <ShopNum1:AdSimpleImage ID="floor1top" runat="server" AdImgId="54" SkinFilename="AdSimpleImage.ascx" />
     
                </div>
                <div class="flooright">
                    <ShopNum1:ProductListForCategory ID="ProductListForCategory7" runat="server" SkinFilename="ProductListForCategory.ascx"
                        CategoryID="004" ShowCountProduct="10" />
                </div>
            </div>
        </div>
        <!--//1¥ ������ױ End-->
        <!--2¥ �������� Start-->
        <div class="mod_right4">
            <div class="title">
                <div class="setitle fl">
                    <ShopNum1:AdSimpleImage ID="floor2top" runat="server" AdImgId="59" SkinFilename="AdSimpleImage.ascx" Visible="false" />
                     <b>2F</b>��������
                </div>
                <ShopNum1:ProductSubCategory ID="ProductSubCategory1" runat="server" SkinFilename="ProductSubCategory.ascx"
                    CategoryID="2" ShowCount="8"  NewCategoryID="002" />
            </div>
            <div class="brandAdvice_con clearfix">
                <div class="floorleft">
                    <ShopNum1:AdSimpleImage ID="j_2_top" runat="server" AdImgId="55" SkinFilename="AdSimpleImage.ascx" />
                  
                </div>
                <div class="flooright">
                    <ShopNum1:ProductListForCategory ID="ProductListForCategory1" runat="server" SkinFilename="ProductListForCategory.ascx"
                        CategoryID="002" ShowCountProduct="10" />
                </div>
            </div>
        </div>
        <!--//2¥ �������� End-->
        <div class="maptop_index">
            <ShopNum1:AdSimpleImage ID="AdSimpleImage2_f" runat="server" AdImgId="56" SkinFilename="AdSimpleImage.ascx" />
        </div>        
        <!--3¥ Ь���˶� Start-->
        <div class="mod_right4">
            <div class="title">
                <div class="setitle fl">
                    <ShopNum1:AdSimpleImage ID="AdSimpleImage3" runat="server" AdImgId="60" SkinFilename="AdSimpleImage.ascx" Visible="false" />
                     <b>3F</b>Ь���˶�
                </div>
                <ShopNum1:ProductSubCategory ID="ProductSubCategory2" runat="server" SkinFilename="ProductSubCategory.ascx"
                    CategoryID="3" ShowCount="8"  NewCategoryID="003" />
            </div>
            <div class="brandAdvice_con clearfix">
                <div class="floorleft">
                    <ShopNum1:AdSimpleImage ID="floor_3_top" runat="server" AdImgId="66" SkinFilename="AdSimpleImage.ascx" />
                 
                </div>
                <div class="flooright">
                    <ShopNum1:ProductListForCategory ID="ProductListForCategory2" runat="server" SkinFilename="ProductListForCategory.ascx"
                        CategoryID="003" ShowCountProduct="10" />
                </div>
            </div>
        </div>
        <!--//3¥ Ь���˶� End-->
        <!--4¥ ĸӤ��Ʒ Start-->
        <div class="mod_right4">
            <div class="title">
                <div class="setitle fl">
                    <ShopNum1:AdSimpleImage ID="floor_4" runat="server" AdImgId="61" SkinFilename="AdSimpleImage.ascx" Visible="false" />
                     <b>4F</b>ĸӤ��Ʒ
                </div>
                <ShopNum1:ProductSubCategory ID="ProductSubCategory3" runat="server" SkinFilename="ProductSubCategory.ascx"
                    CategoryID="9" ShowCount="8"  NewCategoryID="009" />
            </div>
            <div class="brandAdvice_con clearfix">
                <div class="floorleft">
                    <ShopNum1:AdSimpleImage ID="floor_4_top" runat="server" AdImgId="68" SkinFilename="AdSimpleImage.ascx" />
                  
                </div>
                <div class="flooright">
                    <ShopNum1:ProductListForCategory ID="ProductListForCategory3" runat="server" SkinFilename="ProductListForCategory.ascx"
                        CategoryID="009" ShowCountProduct="10" />
                </div>
            </div>
        </div>
        <!--//4¥ ĸӤ��Ʒ End-->
        <div class="maptop_index">
            <ShopNum1:AdSimpleImage ID="AdSimpleImage5" runat="server" AdImgId="70" SkinFilename="AdSimpleImage.ascx" />
        </div>
        <!--5¥ ����ҵ� Start-->
        <div class="mod_right4">
            <div class="title">
                <div class="setitle fl">
                    <ShopNum1:AdSimpleImage ID="AdSimpleImage6" runat="server" AdImgId="62" SkinFilename="AdSimpleImage.ascx" Visible="false" />
                     <b>5F</b>����ҵ�
                </div>
                <ShopNum1:ProductSubCategory ID="ProductSubCategory4" runat="server" SkinFilename="ProductSubCategory.ascx"
                    CategoryID="6" ShowCount="8" NewCategoryID="006" />
            </div>
            <div class="brandAdvice_con clearfix">
                <div class="floorleft">
                    <ShopNum1:AdSimpleImage ID="flool_5_top" runat="server" AdImgId="71" SkinFilename="AdSimpleImage.ascx" />
            
                </div>
                <div class="flooright">
                    <ShopNum1:ProductListForCategory ID="ProductListForCategory4" runat="server" SkinFilename="ProductListForCategory.ascx"
                        CategoryID="006" ShowCountProduct="10" />
                </div>
            </div>
        </div>
        <!--//5¥ ����ҵ� End-->
        <!--6¥ ��װ���� Start-->
        <div class="mod_right4">
            <div class="title">
                <div class="setitle fl">
                    <ShopNum1:AdSimpleImage ID="floor_6" runat="server" AdImgId="63" SkinFilename="AdSimpleImage.ascx" Visible="false" />
                     <b>6F</b>��װ����
                </div>
                <ShopNum1:ProductSubCategory ID="ProductSubCategory5" runat="server" SkinFilename="ProductSubCategory.ascx"
                    CategoryID="7" ShowCount="8"  NewCategoryID="007" />
            </div>
            <div class="brandAdvice_con clearfix">
                <div class="floorleft">
                    <ShopNum1:AdSimpleImage ID="floor_6_top" runat="server" AdImgId="73" SkinFilename="AdSimpleImage.ascx" />
         
                </div>
                <div class="flooright">
                    <ShopNum1:ProductListForCategory ID="ProductListForCategory5" runat="server" SkinFilename="ProductListForCategory.ascx"
                        CategoryID="007" ShowCountProduct="10" />
                </div>
            </div>
        </div>
        <!--//6¥ ��װ���� End-->
        <!--7¥ ʳƷ���� Start-->
        <div class="mod_right4">
            <div class="title">
                <div class="setitle fl">
                    <ShopNum1:AdSimpleImage ID="floor_7" runat="server" AdImgId="64" SkinFilename="AdSimpleImage.ascx" Visible="false" />
                     <b>7F</b>ʳƷ����
                </div>
                <ShopNum1:ProductSubCategory ID="ProductSubCategory6" runat="server" SkinFilename="ProductSubCategory.ascx"
                    CategoryID="8" ShowCount="8"  NewCategoryID="008" />
            </div>
            <div class="brandAdvice_con clearfix">
                <div class="floorleft">
                    <ShopNum1:AdSimpleImage ID="floor_7_top" runat="server" AdImgId="75" SkinFilename="AdSimpleImage.ascx" />
         
                </div>
                <div class="flooright">
                    <ShopNum1:ProductListForCategory ID="ProductListForCategory6" runat="server" SkinFilename="ProductListForCategory.ascx"
                        CategoryID="008" ShowCountProduct="10" />
                </div>
            </div>
        </div>
        <!--//7¥ ʳƷ���� End-->
        <div class="maptop_index">
            <ShopNum1:AdSimpleImage ID="floor_bottom" runat="server" AdImgId="77" SkinFilename="AdSimpleImage.ascx" />
        </div>
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
