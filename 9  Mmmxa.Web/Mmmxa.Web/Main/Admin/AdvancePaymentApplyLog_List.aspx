﻿<%@ page language="C#" autoeventwireup="true" inherits="Admin_AdvancePaymentApplyLog_List"   CodeBehind="AdvancePaymentApplyLog_List.aspx.cs"      %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ShopNum1" %>
<%@ Register Src="UserControl/MessageShow.ascx" TagName="MessageShow" TagPrefix="ShopNum1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>提现审核</title>
    <link rel='stylesheet' type='text/css' href='style/css.css' />
    <link id="sizestylesheet" rel='stylesheet' type='text/css' href='style/css1.css' />
    <script type="text/javascript" language="javascript" src="js/CommonJS.js"></script>
     <script type='text/javascript' src='js/resolution-test.js'></script>
</head>
<body class="widthah">
    <form id="form1" runat="server">
    <div id="right">
          <div class="rhigth">
            <div class="rl">
            </div>
            <div class="rcon">
                <h3>
                    提现审核</h3>
            </div>
            <div class="rr">
            </div>
        </div>
        <div class="welcon clearfix">
            <div class="order_edit">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr style="height: 35px; vertical-align: top;">
                        <td class="lmf_padding">
                            <asp:Label ID="Label1" runat="server" Text="提现单号："></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxOrderNumber" runat="server" CssClass="tinput" Width="150px"></asp:TextBox>
                        </td>
                        <td class="lmf_padding">
                            <asp:Label ID="LabelSMemLoginID" runat="server" Text="会员名："></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxSMemLoginID" runat="server" CssClass="tinput" Width="150px"></asp:TextBox>
                        </td>
                        <td class="lmf_padding">
                            <asp:Label ID="LabelSOperateStatus" runat="server" Text="状态："></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropdownListSOperateStatus" runat="server" Width="100px" CssClass="tselect">
                                <asp:ListItem Value="-1" Selected="True">-全部-</asp:ListItem>
                                <asp:ListItem Value="0">未确认</asp:ListItem>
                                <asp:ListItem Value="1">已完成</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="lmf_padding">
                            <asp:Label ID="LabelSDate" runat="server" Text="操作日期："></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxSDate1" runat="server" CssClass="tinput" Style="width: 68px;"></asp:TextBox>
                        </td>
                        <td style="padding-left: 4px; vertical-align: top;">
                            <img id="imgCalendarSDate1" alt="" src="/ImgUpload/Calendar.png" style="width: 16px;
                                height: 18px; position: relative; top: 3px;" />
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorStartDate" runat="server"
                                ControlToValidate="TextBoxSDate1" Display="Dynamic" ErrorMessage="时间格式不正确" ValidationExpression="^((((1[6-9]|[2-9]\d)\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\d|3[01]))|(((1[6-9]|[2-9]\d)\d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]\d|30))|(((1[6-9]|[2-9]\d)\d{2})-0?2-(0?[1-9]|1\d|2[0-9]))|(((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-))( (20|21|22|23|[0-1]?\d):[0-5]?\d:[0-5]?\d)?$"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            <ShopNum1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnableScriptGlobalization="True"
                                EnableScriptLocalization="True">
                            </ShopNum1:ToolkitScriptManager>
                        </td>
                        <td>
                            <ShopNum1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBoxSDate1"
                                PopupButtonID="imgCalendarSDate1" CssClass="ajax__calendar" Format="yyyy-MM-dd">
                            </ShopNum1:CalendarExtender>
                        </td>
                        <td class="lmf_px">
                            -
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxSDate2" runat="server" CssClass="tinput" Style="width: 68px;"></asp:TextBox>
                        </td>
                        <td style="padding-left: 4px; vertical-align: top;">
                            <img id="imgCalendarSDate2" alt="" src="/ImgUpload/Calendar.png" style="width: 16px;
                                height: 18px; position: relative; top: 3px;" />
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEndDate" runat="server"
                                ControlToValidate="TextBoxSDate2" Display="Dynamic" ErrorMessage="时间格式不正确" ValidationExpression="^((((1[6-9]|[2-9]\d)\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\d|3[01]))|(((1[6-9]|[2-9]\d)\d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]\d|30))|(((1[6-9]|[2-9]\d)\d{2})-0?2-(0?[1-9]|1\d|2[0-9]))|(((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-))( (20|21|22|23|[0-1]?\d):[0-5]?\d:[0-5]?\d)?$"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            <ShopNum1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBoxSDate2"
                                PopupButtonID="imgCalendarSDate2" CssClass="ajax__calendar" Format="yyyy-MM-dd">
                            </ShopNum1:CalendarExtender>
                        </td>
                        <td>
                            <asp:Button ID="ButtonSearch" runat="server" Text="查询" OnClick="ButtonSearch_Click"
                                CssClass="dele" />
                        </td>
                    </tr>
                    <tr height="30" style="display: none;">
                        <td align="right">
                            <asp:Label ID="LabelSOperateType" runat="server" Text="操作类型："></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropdownListSOperateType" runat="server" Width="180px" CssClass="tselect">
                                <asp:ListItem Value="0" Selected="True">提现</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td colspan="2">
                        </td>
                    </tr>
                </table>
                <div class="sbtn">
               <table cellpadding="0" cellspacing="0" border="0">
                <tr>
                <td valign="top">
                    <asp:LinkButton ID="ButtonDelete" runat="server" OnClick="ButtonDelete_Click"  Visible="false"  OnClientClick="if(Page_ClientValidate()) return DeleteButton();return false;"
                            CausesValidation="False" class="shanchu lmf_btn"><span>批量删除</span></asp:LinkButton>
                </td>
                <td>&nbsp;&nbsp;</td>
                <td>
                    <asp:LinkButton ID="ButtonReportAll" OnClick="ButtonReportAll_Click" runat="server"  CausesValidation="False" CssClass="daochubtn lmf_btn"><span>导出全部</span></asp:LinkButton>
                </td>
                <td valign="top" class="lmf_app">
                    <ShopNum1:MessageShow ID="MessageShow" runat="server" Visible="False" />

                </td>
               
                </tr>
                </table>


                        
                   
                
                </div>
            </div>
            <ShopNum1:Num1GridView ID="Num1GridViewShow" runat="server" AutoGenerateColumns="False"
                AllowPaging="True" AllowSorting="True" ascendingimageurl="~/images/SortAsc.gif"
                descendingimageurl="~/images/SortDesc.gif" AddSequenceColumn="False" Width="98%"
                Del="False" DeletePromptText="确实要删除指定的记录吗？" Edit="False" FixHeader="False" GridViewSortDirection="Ascending"
                PagingStyle="Default" TableName="" DataSourceID="ObjectDataSourceData" AllowMultiColumnSorting="False"
                BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="0" CellPadding="4"
                GridLines="Vertical">
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle HorizontalAlign="Center" CssClass="list_header" ForeColor="White"></HeaderStyle>
                <%--分页--%>
                <PagerStyle  CssClass="lmf_page"  BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <%--<asp:TemplateField>
                        <HeaderTemplate>
                            <input id="checkboxAll"  onclick="javascript:SelectAllCheckboxes(this);" type="checkbox" />
                        </HeaderTemplate>
                        <HeaderStyle CssClass="select_width" />
                        <ItemTemplate>
                            <input id="checkboxItem" value='<%# Eval("Guid") %>' type="checkbox" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="30px" />
                    </asp:TemplateField>--%>
                    <asp:BoundField DataField="Guid" HeaderText="Guid" Visible="False" />
                    <asp:BoundField DataField="OrderNumber" HeaderText="提现单号" SortExpression="OrderNumber">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MemLoginID" HeaderText="会员名" SortExpression="MemLoginID">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Date" HeaderText="操作日期" SortExpression="Date">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CurrentAdvancePayment" HeaderText="当前预存款" SortExpression="CurrentAdvancePayment">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="OperateMoney" HeaderText="金额" SortExpression="OperateMoney">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="状态" SortExpression="OperateStatus">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# ChangeOperateStatus(DataBinder.Eval(Container, "DataItem(OperateStatus)","{0}")) %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="审核" SortExpression="IsShow">
                        <ItemTemplate>
                            <a href="<%# "AdvancePaymentMemApplyLog_Operate.aspx?guid="+Eval("Guid")+"&Type=0" %>"
                                style="color: #4482b4;">提现</a>
                            <asp:LinkButton ID="LinkDelte" runat="server" Style="color: #4482b4; display:none" CommandArgument='<%# Eval("Guid")%>'
                                OnClientClick="return window.confirm('您确定要删除吗?');" OnClick="ButtonDeleteBylink_Click">删除</asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="15%" />
                    </asp:TemplateField>
                </Columns>
            </ShopNum1:Num1GridView>
        </div>
        <asp:ObjectDataSource ID="ObjectDataSourceData" runat="server" SelectMethod="Search"
            TypeName="ShopNum1.BusinessLogic.ShopNum1_AdvancePaymentApplyLog_Action">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxOrderNumber" Name="OrderNumber" PropertyName="Text"
                    Type="String" />
                <asp:ControlParameter ControlID="TextBoxSMemLoginID" Name="memLoginID" PropertyName="Text"
                    Type="String" />
                <asp:ControlParameter ControlID="TextBoxSDate1" Name="date1" PropertyName="Text"
                    Type="String" />
                <asp:ControlParameter ControlID="TextBoxSDate2" Name="date2" PropertyName="Text"
                    Type="String" />
                <asp:ControlParameter ControlID="DropdownListSOperateType" Name="operateType" PropertyName="SelectedValue"
                    Type="Int32" />
                <asp:ControlParameter ControlID="DropdownListSOperateStatus" Name="operateStatus"
                    PropertyName="SelectedValue" Type="Int32" />
                <asp:Parameter Name="IsDeleted" Type="Int32" DefaultValue="0" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:HiddenField ID="CheckGuid" runat="server" Value="0" />
    </div>
    </form>
</body>
</html>
