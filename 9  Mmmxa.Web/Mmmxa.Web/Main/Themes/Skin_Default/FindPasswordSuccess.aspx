<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Page Language="C#" %>

<%@ Import Namespace="ShopNum1.Common" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href='<%= Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.LastIndexOf('/') + 1) %>' />
    <meta http-equiv="x-ua-compatible" content="ie=7" />
    <ShopNum1:Meto ID="meto1" runat="server" Type="1" SkinFilename="Meto.ascx" />
    <link type="text/css" href="Themes/Skin_Default/Style/index.css" rel="Stylesheet" />

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
    <form id="from1" runat="server">
    <!--head Start-->
    <!-- #include file="headShop.aspx" -->
    <!--//head End-->
    
    <!--main Start-->
    <div class="FlowCat_cont">
        <div class="position">����λ��:<a href="Default.aspx">��ҳ</a> > �һ�����</div>
        <div class="findpwd">
            <div id="divAgainLogin" runat="server">
                <h1>�����һ�����</h1>
                <div class="findcont">
                    <!--�����һ�-->
                    <ShopNum1:FindPasswordSuccess ID="FindPasswordSuccess" runat="server" SkinFilename="FindPasswordSuccess.ascx" />
                </div>
            </div>
        </div>
    </div>
    <!--//main End-->
    
    <!--foot Start-->
    <!-- #include file="foot1.aspx" -->
    <!--//foot End-->
    </form>
</body>
</html>
