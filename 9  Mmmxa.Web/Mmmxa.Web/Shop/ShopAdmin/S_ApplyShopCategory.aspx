<%@ Page Language="C#" EnableViewState="false"%>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="ShopNum1.Common" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>������</title>
       <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
       <link rel='stylesheet' type='text/css' href='style/style.css' />
       <script type="text/javascript" language="javascript" src="js/jquery.pack.js"></script>
       <link rel='stylesheet' type='text/css' href='style/dshow.css' />
    <script type="text/javascript" src="js/dshow.js"></script>
</head>
<body>
    <form id="form1" runat="server">
          <div class="dpsc_mian">
           <p class="ptitle" ><a href="S_Welcome.aspx">��������</a><span class="breadcrume_icon">>></span><span class="breadcrume_text">�޸ĵ��̷���</span></p>
           <ShopNum1ShopAdmin:S_ApplyShopCategory ID="S_ApplyShopCategory" runat="server" SkinFilename="skin/S_ApplyShopCategory.ascx"/> 
    </div>
    </form>
</body>
</html>