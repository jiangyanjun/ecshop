﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Page Language="C#" %>

<%@ Register TagPrefix="skm" Namespace="ActionlessForm" Assembly="ActionlessForm" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href='<%= Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.LastIndexOf('/') + 1) %>' />
    <meta http-equiv="x-ua-compatible" content="ie=7" />
    <link type="text/css" rel="Stylesheet" href='Themes/Skin_Default/Style/index-green.css' />
   
    <ShopNum1Shop:ShopMeto ID="ShopMeto" runat="server" SkinFilename="SetMeta.ascx" />
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
</head>
<body>
    <form id="from1" runat="server" method="post">
    <!--head start-->
    <!-- #include file="AgentHead.aspx" -->
    <div id="content">
        <!-- #include file="head.aspx" -->
        <div class="warp clearfix">
            <!--main start-->
            <!--left is start-->
            <div class="sidebar leftn_hot">
                <!--自定义导航-->
                <!--店铺信息-->
                <ShopNum1Shop:ShopInfo ID="ShopInfo" runat="server" SkinFilename="ShopInfo.ascx" />
                <!--商品搜索-->
                <ShopNum1Shop:ProduceSearch ID="ProduceSearch" runat="server" SkinFilename="ProduceSearch.ascx" />
                <!--商品分类-->
                <ShopNum1Shop:ProductCategory ID="ProductCategory" runat="server" SkinFilename="ProductCategory.ascx" />
               <!-- 宝贝排行-->
               <h3 class="penis">商品排行<a href="/ProductSearchList.html"></a></h3>
                <div class="ks_panel">
                    
                    <ul class="sellor">
                        <li id="a0" class="aa" onmouseover="tab('a','b',0,2,'aa','bb')">热销宝贝排行</li>
                        <li id="a1" class="bb" onmouseover="tab('a','b',1,2,'aa','bb')">热门收藏排行</li>
                    </ul>
                    <div class="ktlist">
                        <input type="hidden" id="hidShopId" value="<%=Request.QueryString["ShopID"]%>" />
                        	<script type="text/javascript" language="javascript" src="/main/js/shop1/ProductListOp.js"></script>
                        	<!--热销排行-->
                        	<div id="b0" style="display: block"></div>
                        	<!--收藏排行-->
                        	<div id="b1" style="display: none"></div>
                    </div>
               </div>
            </div>
            <!--Right start-->
            <div class="main">
                <div class="str_advt">
                     <ShopNum1Shop:Advertisements ID="topadvertisement" runat="server" SkinFilename="Advertisements.ascx" PageName="ProductListNew.aspx"/>
                </div>
                <!--新品商品列表-->
                <ShopNum1ShopNew:ProductListIsNewMore ID="productListIsNewMore" ShowCount="12" runat="server"
                    SkinFilename="ProductListIsNewMoreNew.ascx" />
            </div>
            <!--is the end-->
        </div>
    </div>
    <!--foot start-->
    <!-- #include file="foot.aspx" -->
    <!--end-->
    </form>
</body>
</html>
