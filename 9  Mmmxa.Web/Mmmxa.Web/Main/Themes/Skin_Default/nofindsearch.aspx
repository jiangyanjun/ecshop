<%@ Page Language="C#"  EnableViewState="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>û�в�ѯ�ҵ���ص�����</title>
    <base href='<%= Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.LastIndexOf('/') + 1) %>' />
    <meta http-equiv="x-ua-compatible" content="ie=7" />
    <link href="Themes/Skin_Default/Style/index.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
</head>
<body>
    <form id="form1" runat="server">
    <!--head start-->
    <!-- #include file="headShop.aspx" -->
    <!--main start-->
    <!-- middle -->
           <!--û���������-->
        <shopnum1:nofindsearch id="nofindsearch" runat="server" skinfilename="nofindsearch.ascx" />
    <!--foot start-->
    <!-- #include file="foot1.aspx" -->
    <!--       end                -->
    </form>
</body>
</html>
