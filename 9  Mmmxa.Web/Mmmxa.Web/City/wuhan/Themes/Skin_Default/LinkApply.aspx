﻿<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href='<%= Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.LastIndexOf('/') + 1) %>' />
    <meta http-equiv="x-ua-compatible" content="ie=7" />
    <link href="Themes/Skin_Default/Style/index.css" rel="stylesheet" type="text/css" />
    <ShopNum1:Meto ID="meto1" runat="server" Type="1" SkinFilename="Meto.ascx" />

    <script src="Themes/Skin_Default/Js/jquery.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function(){
								   
  $("#FlowCate").mouseover(function(){								
          $("#ThrCategory").show();
		  $("#ThrCategory").focus();	  
  }).mouseout(function(){
	  $("#ThrCategory").hide();
  });	
  
  
  $("#ThrCategory").mouseover(function(){
					 $("#ThrCategory").show();		  
					 }).mouseout(function(){
			 $("#ThrCategory").hide();	
						  });
  
        });
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <!--head start-->
    <!-- #include file="headShop.aspx" -->
    
    <!--main start-->
    <div class="FlowCat_cont">
        <div class="warp_site">首页 》<a href="#">申请链接</a></div>
        <div class="article_cont">
            <!-- 申请链接-->
            <ShopNum1:LinkApply ID="LinkApply1" runat="server" SkinFilename="LinkApply.ascx" />
        </div>
    </div>
    <!-- #include file="Hintinfo.aspx" -->
    
    <!--foot start-->
    <!-- #include file="foot1.aspx" -->
    </form>

    <script type="text/javascript" src="/JS/dcommon.js"></script>

</body>
</html>