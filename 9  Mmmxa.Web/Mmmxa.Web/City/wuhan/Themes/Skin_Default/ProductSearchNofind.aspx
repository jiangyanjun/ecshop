﻿<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href='<%= Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.LastIndexOf('/') + 1) %>' />
    <meta http-equiv="x-ua-compatible" content="ie=7" />
    <ShopNum1:ProductCategoryMeto ID="ProductCategoryMeto" runat="server" SkinFilename="ProductCategoryMeto.ascx" />
    <link href="Themes/Skin_Default/Style/index.css" rel="stylesheet" type="text/css" />

    <script src="Js/jquery-1.6.2.min.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <!--head start-->
    <!-- #include file="headShop.aspx" -->
    
    <!--main start-->
    <div class="FlowCat_cont">
        <!--没有搜索结果-->
        <ShopNum1:ProductSearchNofind ID="ProductSearchNofind1" runat="server" SkinFilename="ProductSearchNofind.ascx" />
        <!--推荐商品-->
        <ShopNum1:ProductIsCategoryShow ID="ProductIsCategoryShow4" runat="server" SkinFilename="ProductForNofind.ascx"
            ShowCount="5" ProductType="IsShopRecommend" />
    </div>
    <!--foot start-->
    <!-- #include file="foot1.aspx" -->
    </form>
</body>
</html>
