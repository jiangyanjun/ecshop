﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Page Language="C#" %>

<%@ Import Namespace="ShopNum1.Common" %>
<%@ Register TagPrefix="skm" Namespace="ActionlessForm" Assembly="ActionlessForm" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <base href='<%= Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.LastIndexOf('/') + 1) %>' />
    <meta http-equiv="x-ua-compatible" content="ie=7" />
    <link type="text/css" rel="Stylesheet" href='Themes/Skin_Default/Style/index-golden.css' />
   
    <ShopNum1Shop:ShopMeto ID="ShopMeto" runat="server" SkinFilename="SetMeta.ascx" />
    
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
        <div>
            <div class="sidebar leftn_hot">
                <!--店铺信息-->
                <ShopNum1Shop:ShopInfo ID="ShopInfo" runat="server" SkinFilename="ShopInfo.ascx" />
                <!--视频分类-->
                <%--<ShopNum1Shop:VideoCategoryList ID="VideoCategoryList" runat="server" SkinFilename="VideoCategoryList.ascx" />--%>
                <!--商品搜索-->
                <ShopNum1Shop:ProduceSearch ID="ProduceSearch" runat="server" SkinFilename="ProduceSearch.ascx" />
                <!--商品分类-->
                <ShopNum1Shop:ProductCategory ID="productCategory" runat="server" SkinFilename="ProductCategory.ascx" />
                <!--最新资讯-->
                <ShopNum1Shop:NewsListBestNew ID="NewsListBestNew" ShowCount="15" runat="server" SkinFilename="NewsListBestNew.ascx" />
            </div>
            <div class="main">
                <!--视频列表-->
                <ShopNum1ShopNew:VideoList ID="VideoList" runat="server" ShowCount="10" SkinFilename="VideoListNew.ascx" />
            </div>
        </div>
    </div>
    <div class="clear"></div>
    </div>
    <!--foot start-->
    <!-- #include file="foot.aspx" -->
    <!--end-->
    </form>

    <script src='Themes/Skin_Default/js/jquery-1.2.6.pack.js' type="text/javascript"></script>

    <script src='Themes/Skin_Default/js/changeUrl.js' type="text/javascript"></script>

</body>
</html>
