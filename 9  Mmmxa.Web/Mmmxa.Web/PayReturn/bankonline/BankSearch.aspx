﻿<%@ page language="C#" autoeventwireup="true" inherits="PayReturn_bankonline_BankSearch, ShopNum1.Deploy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body onLoad="javascript:document.E_FORM.submit()" >
     <form action="https://pay3.chinabank.com.cn/receiveorder.jsp"  method="post" name="E_FORM">
    
      	<input type=hidden name="v_oid" value="<%=v_oid%>">
		<input type=hidden name="v_mid" value="<%=v_mid%>">
		<input type=hidden name="billNo_md5" value="<%=billNo_md5%>">
		<input type=hidden name="v_url" value="<%=v_url%>">
    </form>
</body>
</html>
