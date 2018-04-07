﻿<%@ page language="C#" autoeventwireup="true" inherits="Admin_SiteMota_List"   CodeBehind="SiteMota_List.aspx.cs"      %>


<%@ Register Src="UserControl/MessageShow.ascx" TagName="MessageShow" TagPrefix="uc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ShopNum1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
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
                <h3>
                    SEO设置</h3>
            </div>
        </div>
        <div>
        </div>
        <div class="welcon clearfix">
            <div class="order_edit">
            <table cellpadding="0" cellspacing="0" border="0">
                <tr style="height:35px; vertical-align:top;">
                <td><asp:Label ID="LabelPageName" runat="server" Text="页面名："></asp:Label></td>
                <td><asp:TextBox ID="TextBoxPageName" runat="server" CssClass="orinput" Width="258"></asp:TextBox></td>
                 <td><asp:Button ID="butSearch" runat="server" Text="查询" OnClick="butSearch_Click" class="dele" /></td>
                </tr>
                </table>
                <div class="sbtn">
                <table cellpadding="0" cellspacing="0" border="0">
                        <tr>
                           
                            <td valign="top" >
                                <asp:LinkButton ID="ButtonAdd" runat="server" CausesValidation="False" OnClick="ButtonAdd_Click" class="tianjia2 lmf_btn"><span>添加</span></asp:LinkButton>
                            </td>
                            <td valign="top" class="lmf_app">
                                <asp:LinkButton ID="ButtonEdit" Visible="false" runat="server" OnClick="ButtonEdit_Click"
                                    OnClientClick="return EditButton()" class="dele lmf_btn"><span>编辑</span></asp:LinkButton>
                                <asp:LinkButton ID="ButtonDelete" CausesValidation="False" runat="server" OnClick="ButtonDelete_Click" OnClientClick="return DeleteButton()"
                                    class="shanchu lmf_btn"><span>批量删除</span></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <ShopNum1:Num1GridView ID="Num1GridViewShow" runat="server" AutoGenerateColumns="False"
                AllowPaging="True" AllowSorting="True" ascendingimageurl="~/images/SortAsc.gif"
                descendingimageurl="~/images/SortDesc.gif" AddSequenceColumn="False" Width="98%"
                Del="False" DeletePromptText="确实要删除指定的记录吗？" Edit="False" FixHeader="False" GridViewSortDirection="Ascending"
                PagingStyle="None" TableName="" DataSourceID="ObjectDataSourceDate" AllowMultiColumnSorting="False"
                BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="0" CellPadding="4"
                GridLines="Vertical">
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle HorizontalAlign="Center" CssClass="list_header" ForeColor="White"></HeaderStyle>
                <%--分页--%>
                <PagerStyle CssClass="lmf_page" BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <input id="checkboxAll" onclick="javascript:SelectAllCheckboxes(this);" type="checkbox" />
                        </HeaderTemplate>
                        <HeaderStyle CssClass="select_width" />
                        <ItemTemplate>
                            <input id="checkboxItem" type="checkbox" value='<%# Eval("PageName") %>' />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="30px" />
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="页面名">
                        <ItemTemplate>
                            <%#ShopNum1.Common.Common.cut(Eval("pagename"), 20)%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="49%"/>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="关键字">
                        <ItemTemplate>
                           <%#ShopNum1.Common.Common.cut(Eval("KeyWords"),40)%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center"  Width="48%"/>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="操作">
                        <ItemTemplate>
                            <a href="<%# "SiteMota_Operate.aspx?PageName='"+Eval("PageName")+"'" %>" style="color: #4482b4;">编辑</a>
                        <asp:LinkButton ID="LinkDelte" runat="server" Style="color: #4482b4;" OnClick="ButtonDeleteBylink_Click"
                            CommandArgument='<%# Eval("PageName") %>' OnClientClick="return window.confirm('您确定要删除吗?');">删除</asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
            </ShopNum1:Num1GridView>
            <asp:ObjectDataSource ID="ObjectDataSourceDate" runat="server" SelectMethod="SearchMetoList"
                TypeName="ShopNum1.BusinessLogic.ShopNum1_ExtendSiteMota_Action">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBoxPageName" Name="pagename" PropertyName="Text"
                        Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
    <asp:HiddenField ID="CheckGuid" runat="server" Value="0" />
    </form>
</body>
</html>
