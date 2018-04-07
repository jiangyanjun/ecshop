﻿<%@ Page Language="C#" EnableViewState="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Import Namespace="ShopNum1.Common" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>店铺优惠券管理</title>
    <link rel='stylesheet' type='text/css' href='style/style.css' />
    <script language="javascript" type="text/javascript" src="js/jquery.pack.js"></script>
    <script type="text/javascript" src="js/SpryTabbedPanels.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="dpsc_mian">
    <p class="ptitle" ><a href="S_Welcome.aspx">我是卖家</a><span class="breadcrume_icon">>></span><span class="breadcrume_text">优惠券管理</span></p>
    <ShopNum1ShopAdmin:S_ShopCoupon ID="S_ShopCoupon" runat="server" SkinFilename="Skin/S_ShopCoupon.ascx" PageSize="10" />
    </div>
    <script type="text/javascript" language="javascript">
        function checknum(str)
        {
            var re = /^[0-9]+.?[0-9]*$/; 
            if (!re.test(str))
            {
                alert("请输入正确的数字！");
                return false;
            }else{return true;}
        }

         //跳转到制定的页码
         function ontoPage(txtId)
         {
            var pageindex=$(txtId).parent().parent().prev().prev().find("input").val();
//            alert(pageindex);
           if(checknum(pageindex))
           {
                var pageEnd=parseInt($(".page_2 b").text());
                if(pageEnd<=pageindex)
                    pageindex=pageEnd;
                location.href="S_ShopCoupon.aspx?pageid="+pageindex;
           }        
//               location.href='?isread=<%= Common.ReqStr("type") %>&pageid='+$("#txtIndex").val();
         }
  </script>
    </form>
</body>
</html>