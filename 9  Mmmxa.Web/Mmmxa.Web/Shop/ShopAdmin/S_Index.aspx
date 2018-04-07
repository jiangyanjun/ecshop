﻿<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>我是卖家</title>
    <link rel='stylesheet' type='text/css' href='style/style.css' />
    <script language="javascript" type="text/javascript" src="js/jquery.pack.js"></script>
     <script language="javascript" type="text/javascript" src="js/s_index.js"></script>
    <script type="text/javascript" language="javascript"> 
    window.onerror=function(){return true;};
    </script>
</head>
<body>
    <form id="form1" runat="server">
   <div id="containe_bg">
        <!--头部Top-->
        <ShopNum1ShopAdmin:S_Head ID="S_Head" runat="server" SkinFilename="Skin/S_Head.ascx" />
        <!--内容部分Content-->
        <div id="content_bg">
            <div id="content1">
                <div id="content2">
                    <!--左边导航nav-->
                     <ShopNum1ShopAdmin:S_Left ID="S_Left" runat="server" SkinFilename="Skin/S_Left.ascx" />
                    <!--右边框架-->
                      <%string strURL = string.Empty;
                      if (Page.Request.QueryString["tosurl"] != null)
                      {
                          strURL = Server.UrlDecode(Page.Request.QueryString["tosurl"].ToString());
                      }
                      else {
                          strURL = "S_Welcome.aspx"; 
                      }
                 %>
                    <div class="ifr_right" >
                      <iframe src="<%=strURL %>" width="100%" frameborder="0" allowTransparency="true" scrolling="auto" id="mainFrame" onload="this.height=100%"  name="win" style="overflow-y:hidden;"></iframe>
                    </div>
                </div>
            </div>
        </div>
        <div style="clear: both;">
        </div>
        <!--页面底部Bottom-->
        <ShopNum1ShopAdmin:S_Bottom ID="S_Bottom" runat="server" SkinFilename="Skin/S_Bottom.ascx" class="foot_bg" />
    </div>
       
    </form>
</body>
</html>