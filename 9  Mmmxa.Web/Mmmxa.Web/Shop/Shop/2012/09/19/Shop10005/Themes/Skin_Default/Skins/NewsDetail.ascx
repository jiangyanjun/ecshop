﻿<%@ Control Language="C#" %>
<%--<%@ Import Namespace="TGPai.AgentWebControl" %>--%>
<asp:Repeater ID="RepeaterData" runat="server">
<ItemTemplate>
<div class="artile_list">
<div class="article_title"><%# Eval("Title")%></div>
 <div class="article_time">时间：<%# Eval("CreateTime")%></div>
   <div class="article_content">
   <%# Server.HtmlDecode(Eval("Content").ToString())%>
  </div>
   </div>
</ItemTemplate>
</asp:Repeater>
<asp:HiddenField ID="HiddenFieldGuid" runat="server" Value="0" />