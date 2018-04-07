﻿<%@ page language="C#" autoeventwireup="true" inherits="AgentAdmin_Group_ProductList, ShopNum1.Deploy" %>
<%@ Import Namespace="ShopNum1.Common" %>
<%@ Register Src="UserControl/MessageShow.ascx" TagName="MessageShow" TagPrefix="GroupFly" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>团购商品列表</title>
     <link rel="stylesheet" type="text/css" href="style/css.css" />
    <script type="text/javascript" language="javascript" src="js/CommonJS.js"></script>
</head>
<body>
    <form id="form1" runat="server">
   <div id="right">
        <div class="rhigth">
            <div class="rl">
            </div>
            <div class="rcon">
                <h3>团购活动审核管理</h3>
            </div>
        </div>
   
        <div class="mhead">
            <div class="ml">
                <div class="mr">
                    <ul class="mul">
                        <li id="current1">
                            <a href="?state=0&Aid=<%=Common.ReqStr("aid")%>"  class="<%=Common.ReqStr("state") == "" || Common.ReqStr("state") == "0"?"cur":""%>" id="LinkButtonAll">待审核</a>
                        </li>
                        <li id="current2">
                            <a href="?state=1&Aid=<%=Common.ReqStr("aid")%>" class="<%= Common.ReqStr("state") =="1"?"cur":""%>" id="LinkButtonNopayment">审核通过</a>
                        </li>
                        <li id="current3">
                            <a href="?state=2&Aid=<%=Common.ReqStr("aid")%>" class="<%= Common.ReqStr("state") =="2"?"cur":""%>" id="A1">审核未通过</a>
                        </li>
                        <li id="current4">
                            <a href="?state=3&Aid=<%=Common.ReqStr("aid")%>" class="<%= Common.ReqStr("state") =="3"?"cur":""%>" id="LinkButtonPayment">已结束</a>
                        </li>
                        <li id="current5">
                            <a href="Group_ActivityList.aspx">返回列表</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="welcon clearfix">
            <div class="order_edit">
                <div class="sbtn">

                 <table cellspacing="0" cellpadding="0" border="0">
                <tbody><tr>
                <td valign="top" >
                  <asp:LinkButton ID="LinkButton1" runat="server" CssClass="shanchu lmf_btn" OnClientClick="return DeleteButton();" OnClick="ButtonDelete_Click"><span>批量删除</span></asp:LinkButton>
                </td>
                <td valign="top" class="lmf_app"><GroupFly:MessageShow ID="MessageShow" Visible="false" runat="server" />
                </td>
                </tr>
                </tbody></table>
                </div>
           </div>


           <table cellspacing="0" cellpadding="4" border="0" id="Num1GridViewShow" rules="cols" class="gridview_m">
		 <thead><tr align="center" style="color:White;" class="list_header">
			<th scope="col" class="select_width">
                 <input type="checkbox" onclick="javascript:SelectAllCheckboxesNew(this);" id="checkboxAll" />
            </th>
            <th scope="col">团购名称</th>
            <th scope="col">活动名称</th>
            <th scope="col">开始时间</th>
            <th scope="col">结束时间</th>
            <th scope="col">团购状态</th>
            <th scope="col">操作</th></tr>
           </thead>
          <tbody>
          <%if (dt.Rows.Count>0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    string strId = dt.Rows[i]["id"].ToString();
                    string strAid = dt.Rows[i]["aid"].ToString();
                    string strName = dt.Rows[i]["name"].ToString();
                    string strAname = dt.Rows[i]["Aname"].ToString();
                    string strStartTime = dt.Rows[i]["starttime"].ToString();
                    string strEndTime = dt.Rows[i]["endtime"].ToString();
                    string strState = dt.Rows[i]["state"].ToString();
                    string strProGuId = dt.Rows[i]["productguid"].ToString();
                    string strMemloginId = dt.Rows[i]["memloginid"].ToString();
                    switch (strState)
                    {
                        case "0": strState = "未审核"; break;
                        case "1": strState = "审核通过"; break;
                        case "2": strState = "不予通过"; break;
                        case "3": strState = "已结束"; break;
                    }
                    string strProductUrl = ShopUrlOperate.RedirectProductDetailByMemloginIDNew(dt.Rows[i]["id"].ToString(), dt.Rows[i]["MemloginId"].ToString(), "1", "1");
                    %>
			    <!--循环代码-->
			      <tr style="cursor:default;" onmouseout="Num1GridViewShow_mout(this)" onmouseover="Num1GridViewShow_mover(this)">
			            <td align="center" style="">
                            <input type="checkbox" value="<%=strId %>" name="subcheck">
                        </td><td align="center">
                            <span id="Span1"><a href="<%=strProductUrl %>" target="_blank"><%=strName%></a></span>
                        </td><td align="center">
                            <span id="Span2"><%=strAname%></span>
                        </td><td align="center">
                            <span id="Span3"><%=strStartTime%></span>
                        </td><td align="center">
                            <span id="Span4"><%=strEndTime%></span>
                        </td>
                        <td align="center">
                            <span id="Span5"><%=strState%></span>
                        </td>
                        <td align="center">
                            <span class="opspan"><a href="<%=ShopUrlOperate.shopHrefNew(strProGuId, strMemloginId)%>" target="_blank" style="color: #4482b4;">查看</a></span>| 

                            <%if (strState == "未审核")
                              { %>                                <span class="opspan oppass"><a style="color: #4482b4;" href="?agree=<%=strId %>&Aid=<%=strAid %>&jk"  onclick="return window.confirm('您确定要审核通过吗?');">审核通过</a></span>| 
                            <span class="opspan opupass"><a style="color: #4482b4;" href="?disagree=<%=strId %>&Aid=<%=strAid %>&jk"  onclick="return window.confirm('您确定要不予通过吗?');">不予通过</a></span>|
                            <%}
                              else if (strState == "审核通过")
                              { %>
                               <span class="opspan opupass"><a style="color: #4482b4;" href="?end=<%=strId %>&Aid=<%=strAid %>&jk"  onclick="return window.confirm('您确定要结束吗?');">结束</a></span>|
                            <%} %>
                             <span class="opspan opdel"><a style="color: #4482b4;" href="?delete=<%=strId %>&state=<%=Common.ReqStr("state")%>&Aid=<%=strAid %>&jk"  onclick="return window.confirm('您确定要删除吗?');">删除</a></span>
                        </td>
                 </tr>
			    <!--循环代码-->
			<%}
            }
            else
            {%>
               <tr><td colspan="7"><center> 没有找到相关团购商品！</center> </td></tr>
            <%} %>
		<tr class="lmf_page" align="right" style="color:Black;background-color:#F7F7DE;">
		   <td style="height:30px;" colspan="10"> 
		   <div class="btnlist" style="overflow:auto; display:none;">
		       <div class="fnum"> 每页显示数量：
		       <a href="?pagesize=10">10</a><a href="?pagesize=20">20</a><a href="?pagesize=50">50</a>
		       </div>
		   <div class="page" id="pageDiv" runat="server">  </div>
		   </div>
		   </td>
		</tr>
	</tbody></table>
        </div>
    </div>
    <input type="hidden" id="CheckGuid" runat="server" value="0" />
    </form>
</body>
</html>
