﻿<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>未审核商品</title>
           <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
      <link rel='stylesheet' type='text/css' href='style/style.css' />
      <script type="text/javascript" language="javascript" src="js/jquery.pack.js"></script>
          <script type="text/javascript" language="javascript" src="js/showimg.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="dpsc_mian">
      <p class="ptitle">
        <span class="spanrig"><a href="S_SellGoods_One.aspx?op=add&step=one" class="tianjiafl lmf_btn"
            target="_blank">添加商品</a> </span><a href="S_Welcome.aspx">我是卖家</a><span class="breadcrume_icon">>></span><span class="breadcrume_text">未审核的商品</span></p>
         <ShopNum1ShopAdmin:S_UnAuditProduct ID="S_UnAuditProduct" runat="server" PageSize="10" SkinFilename="skin/S_UnAuditProduct.ascx" />
         </div>
    </form>
</body>
</html>
