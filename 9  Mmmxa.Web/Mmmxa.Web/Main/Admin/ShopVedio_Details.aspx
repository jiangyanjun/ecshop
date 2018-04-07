﻿<%@ page language="C#" autoeventwireup="true" inherits="Admin_ShopVedio_Details"   CodeBehind="ShopVedio_Details.aspx.cs"      %>

<%@ Register Src="UserControl/MessageShow.ascx" TagName="MessageShow" TagPrefix="ShopNum1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>店铺视频操作</title>
    <link rel='stylesheet' type='text/css' href='style/css.css' />
    <link id="sizestylesheet" rel='stylesheet' type='text/css' href='style/css1.css' />

    <script src="/JS/jquery-1.6.2.min.js" type="text/javascript"></script>
     <script type="text/javascript" language="javascript">
        function funShow()
        {
            $("#showvodie").show(1000);
        }
        function funHide()
        {
            $("#showvodie").hide(1000);
        }
     </script>
</head>
<body style="padding: 0; background-image: url(images/Bg_right.gif); background-repeat: repeat;">
    <form id="form1" runat="server">


 <div id="right">
        <div class="rhigth">
            <div class="rl">
            </div>
            <div class="rcon">
                <h3>
                    <asp:Label ID="LabelTitle" runat="server" Text="店铺视频信息"></asp:Label></h3>
            </div>
            <div class="rr">
            </div>
        </div>
        <div class="welcon clearfix">
        <div class="inner_page_list">
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <th align="right">
                            <asp:Localize ID="LocalizeAssociatedCategoryGuid" runat="server" Text="视频分类："></asp:Localize>
                    </th>
                    <td valign="middle">
                            <asp:TextBox ID="TextBoxCategoryGuid" CssClass="tinput" ReadOnly="true" runat="server">无</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th align="right">
                            <asp:Localize ID="LocalizeTitle" runat="server" Text="视频标题："></asp:Localize>
                    </th>
                    <td>
                            <asp:TextBox ID="TextBoxTitle" ReadOnly="true" CssClass="tinput" runat="server">无</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th align="right">
                            <asp:Localize ID="LocalizeCreateTime" runat="server" Text="发布时间："></asp:Localize>
                    </th>
                    <td>
                            <asp:TextBox ID="TextBoxCreateTime" CssClass="tinput" ReadOnly="true" runat="server">无</asp:TextBox>
                        </div>
                    </td>
                </tr>
                 <tr>
                    <th align="right">
                            <asp:Localize ID="LocalizeMember" runat="server" Text="发布人："></asp:Localize>
                    </th>
                    <td>
                            <asp:TextBox ID="TextBoxMemberLoginID" CssClass="tinput" ReadOnly="true" runat="server">无</asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <th align="right">
                            <asp:Localize ID="LocalizeKeywords" runat="server" Text="关键字："></asp:Localize>
                    </th>
                    <td>
                            <asp:TextBox ID="TextBoxKeywords" CssClass="tinput" ReadOnly="true" runat="server">无</asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <th align="right">
                            <asp:Localize ID="LocalizeVideo" runat="server" Text="视频地址："></asp:Localize>
                    </th>
                    <td><table border="0">
                        <tr>
                            <td width="350"><asp:TextBox ID="TextBoxVideo" CssClass="tinput" ReadOnly="true" runat="server" Width="350" TextMode="MultiLine" Height="160">无</asp:TextBox></td>
                            <td><input type="button" value="预览视频" class="fanh" onclick="funShow()"/></td>
                        </tr>
                    </table>
                    </td>
                </tr>
                <tr>
                    <th align="right">
                            <asp:Localize ID="LocalizeImgage" runat="server" Text="视频图片："></asp:Localize>
                    </th>
                    <td>
                             <asp:Image ID="Image" onerror="javascript:this.src='../../ImgUpload/noImage.gif'"
                    runat="server" Width="300" Height="300"/>
                    </td>
                </tr>
            </table>
            <div class="tablebtn">
                
                <asp:Button ID="Button1" runat="server"  CssClass="fanh" Text="审核通过" OnClick="ButtonAudit_Click" ></asp:Button>&nbsp;&nbsp;&nbsp;
                <asp:Button  ID="ButtonCancelAudit" runat="server" CssClass="fanh" Text="审核未通过"  OnClick="ButtonCancelAudit_Click" ></asp:Button>&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ButtonBack" runat="server" CssClass="fanh" CausesValidation="false"
                     Text="返回列表"  OnClick="ButtonBack_Click"/>
                <ShopNum1:MessageShow ID="MessageShow" runat="server" Visible="False" />
            </div>
        </div>
      <asp:HiddenField ID="hiddenFieldGuid" runat="server" Value="0" />
    </div>

    <div style=" width:100%; height:710px;top:0px; text-align:center; background:#000;position:absolute; z-index:999999999; display:none;" id="showvodie">
    <div style=" line-height:30px; text-align:left">
        <input type="button" value="关闭视频" class="fanh" onclick="funHide()"/>
    </div>
    <div>
        <asp:Literal ID="LiteralShowVodie" runat="server"></asp:Literal>
    </div>
    </div>    </div>

    </form>
</body>
</html>
