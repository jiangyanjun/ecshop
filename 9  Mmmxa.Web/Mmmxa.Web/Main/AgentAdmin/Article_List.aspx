<%@ page language="C#" autoeventwireup="true" inherits="AgentAdmin_Article_List, ShopNum1.Deploy" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ShopNum1" %>
<%@ Register Assembly="ShopNum1.Control" Namespace="ShopNum1.Control" TagPrefix="cc1" %>
<%@ Register Src="UserControl/MessageShow.ascx" TagName="MessageShow" TagPrefix="uc1" %>
<%@ Import Namespace="ShopNum1.Common" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>��Ѷ�б�</title>
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
                 ƽ̨�����б�</h3>
            </div>
            <div class="rr">
            </div>
        </div>
        <div class="welcon clearfix">
            <div class="order_edit">
                <table border="0" cellspacing="0" cellpadding="0">
                    <tr style="height: 35px; vertical-align:top;">
                        <td>
                            ���±��⣺
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxTitle" Width="200" runat="server" CssClass="tinput"></asp:TextBox>
                        </td>
                        <td class="lmf_padding">
                            �������
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownListArticleCategoryID" runat="server" Width="207px"
                                CssClass="tselect">
                            </asp:DropDownList>
                        </td>
                        <td class="lmf_padding">
                            ǰ̨�Ƿ���ʾ��
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownListIsShow" runat="server" Width="207px" CssClass="tselect">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr style="height: 35px; vertical-align:top;">
                        <td style="text-align: right;">
                            �����ˣ�
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxPublisher" runat="server" Width="200" CssClass="tinput"></asp:TextBox>
                        </td>
                        <td class="lmf_padding">
                            �Ƿ�ͷ����
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownListIsHead" runat="server" Width="207px" CssClass="tselect">
                            </asp:DropDownList>
                        </td>
                        <td class="lmf_padding">
                            �Ƿ��Ƽ���
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownListIsRecommend" runat="server" Width="207px" CssClass="tselect">
                            </asp:DropDownList>
                        </td>
                        <asp:DropDownList ID="DropDownListIsAllowComment" runat="server" Width="180px" Visible="false"
                            CssClass="tselect">
                        </asp:DropDownList>
                    </tr>
                    <tr style="height: 35px; vertical-align:top;">
                    <td align="right">
                            �Ƿ��ȵ㣺
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownListIsHot" runat="server" Width="207px" CssClass="tselect">
                            </asp:DropDownList>
                        </td>
                        <td class="lmf_padding">
                            ����ʱ�䣺
                        </td>
                        <td colspan="3">
                        <table cellpadding="0" cellspacing="0" border="0">
                        <tr>
                        <td><asp:TextBox ID="textBoxStartDate" Width="68" runat="server" CssClass="tinput"></asp:TextBox></td>
                        <td><ShopNum1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnableScriptGlobalization="True"
                                EnableScriptLocalization="True">
                            </ShopNum1:ToolkitScriptManager></td>
                        <td style="padding-left:4px; vertical-align:top;"><img id="imgCalendarStartTime" alt="" src="/ImgUpload/Calendar.png" style="width: 16px;
                                height: 18px; position: relative; top: 3px;" /></td>
                        <td><asp:RegularExpressionValidator ID="RegularExpressionValidatortextBoxStartDate" runat="server"
                                ControlToValidate="textBoxStartDate" Display="Dynamic" ErrorMessage="ʱ���ʽ����ȷ"
                                ValidationExpression="^((((1[6-9]|[2-9]\d)\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\d|3[01]))|(((1[6-9]|[2-9]\d)\d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]\d|30))|(((1[6-9]|[2-9]\d)\d{2})-0?2-(0?[1-9]|1\d|2[0-9]))|(((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-))( (20|21|22|23|[0-1]?\d):[0-5]?\d:[0-5]?\d)?$"></asp:RegularExpressionValidator></td>
                        <td><ShopNum1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="textBoxStartDate"
                                PopupButtonID="imgCalendarStartTime" CssClass="ajax__calendar" Format="yyyy-MM-dd">
                            </ShopNum1:CalendarExtender></td>
                        <td class="lmf_px">-</td>
                        <td><asp:TextBox ID="textBoxEndDate" runat="server" Width="68" CssClass="tinput"></asp:TextBox></td>
                        <td style="padding-left:4px; vertical-align:top;"><img id="imgCalendarEndTime" alt="" src="/ImgUpload/Calendar.png" style="width: 16px;
                                height: 18px; position: relative; top: 3px;" /></td>
                        <td><asp:RegularExpressionValidator ID="RegularExpressionValidatortextBoxEndDate" runat="server"
                                ControlToValidate="textBoxEndDate" Display="Dynamic" ErrorMessage="ʱ���ʽ����ȷ" ValidationExpression="^((((1[6-9]|[2-9]\d)\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\d|3[01]))|(((1[6-9]|[2-9]\d)\d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]\d|30))|(((1[6-9]|[2-9]\d)\d{2})-0?2-(0?[1-9]|1\d|2[0-9]))|(((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-))( (20|21|22|23|[0-1]?\d):[0-5]?\d:[0-5]?\d)?$"></asp:RegularExpressionValidator></td>
                        <td><ShopNum1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="textBoxEndDate"
                                PopupButtonID="imgCalendarEndTime" CssClass="ajax__calendar" Format="yyyy-MM-dd">
                            </ShopNum1:CalendarExtender></td>
                        <td><asp:Button ID="ButtonSearch" runat="server" Text="��ѯ" OnClick="ButtonSearch_Click"
                                CssClass="dele" /></td>
                        </tr>
                        </table>
                        </td>
                    </tr>

                </table>
                <div class="sbtn">
                    <asp:Button ID="ButtonAdd" runat="server" Text="���" OnClick="ButtonAdd_Click" CausesValidation="False"
                        CssClass="tianjia2 picbtn" />
                    <asp:Button ID="ButtonEdit" runat="server" CausesValidation="False" Text="�༭" OnClientClick="return EditButton()"
                        OnClick="ButtonEdit_Click" CssClass="dele" Visible="false" />
                    <asp:Button ID="ButtonUp" runat="server" Text="����" CssClass="dele" />
                    <asp:Button ID="ButtonDown" runat="server" Text="����" CssClass="dele" />
                    <asp:Button ID="ButtonDelete" runat="server" CausesValidation="False" Text="����ɾ��"
                        OnClientClick="if(Page_ClientValidate()) return DeleteButton();return false;"
                        OnClick="ButtonDelete_Click" CssClass="shanchu com" />
                    <asp:Button ID="ButtonShow" runat="server" Text="ǰ̨��ʾ" CssClass="qb" />
                    <asp:Button ID="ButtonHidden" runat="server" Text="ǰ̨����" CssClass="qb" />
                    <asp:Button ID="ButtonBrowse" runat="server" Text="ǰ̨Ԥ��" CssClass="qb" />
                    <asp:Button ID="ButtonViewComment" runat="server" Text="�鿴����" CssClass="chakanpl picbtn" OnClick="ButtonViewComment_Click"
                        OnClientClick="return EditButton()" />
                    <uc1:MessageShow ID="MessageShow" runat="server" Visible="False" />
                </div>
            </div>
            <cc1:Num1GridView ID="Num1GridViewShow" runat="server" AutoGenerateColumns="False"
                AllowPaging="True" AllowSorting="True" AscendingImageUrl="~/images/SortAsc.gif"
                DescendingImageUrl="~/images/SortDesc.gif" Width="98%" AddSequenceColumn="False"
                AllowMultiColumnSorting="False" BorderColor="#CCDDEF" BorderStyle="Solid" BorderWidth="1px"
                CellPadding="4" Del="False" DeletePromptText="ȷʵҪɾ��ָ���ļ�¼��" Edit="False" FixHeader="False"
                GridViewSortDirection="Ascending" PagingStyle="None" TableName="" DataSourceID="ObjectDataSourceData">
                <HeaderStyle HorizontalAlign="Center" CssClass="list_header" ForeColor="White"></HeaderStyle>
                <PagerStyle HorizontalAlign="left" BackColor="#EEEEEE" ForeColor="#6699CC"></PagerStyle>
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <input id="checkboxAll" onclick="javascript:SelectAllCheckboxes(this);" type="checkbox" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <input id="checkboxItem" value='<%# Eval("Guid") %>' type="checkbox" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Guid" HeaderText="Guid" Visible="False" SortExpression="Guid">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="����" SortExpression="Title">
                        <ItemTemplate>
                            <a href='<%#GetUrl("ArticleDetail",Eval("guid").ToString())%>'  target="_blank"  title="<%#Eval("Title") %>">
                                      <asp:Label ID="LabelTitle" runat="server" Text='<%#(Eval("Title").ToString().Length > 15 ? Eval("Title").ToString
().Substring(0, 15) : Eval("Title").ToString())%>'></asp:Label></a>
                        </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Publisher" HeaderText="������" SortExpression="Publisher"   ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="Name" HeaderText="��������" SortExpression="Name"   ItemStyle-HorizontalAlign="Center"  />
                    <asp:BoundField HeaderText="�����" DataField="OrderID" SortExpression="OrderID">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="����ʱ��" DataField="CreateTime" SortExpression="CreateTime">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="�Ƿ���ʾ" SortExpression="IsShow">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# PageOperator.GetListImageStatus(DataBinder.Eval(Container, "DataItem(IsShow)","{0}")=="0"?"1":"0") %>' />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="�Ƿ��ȵ�" SortExpression="IsHot">
                        <ItemTemplate>
         <asp:Image ID="Image2" runat="server" ImageUrl='<%# PageOperator.GetListImageStatus(DataBinder.Eval(Container, "DataItem(IsHot)","{0}")=="0"?"1":"0") %>' />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="�Ƿ��Ƽ�" SortExpression="IsRecommend">
                        <ItemTemplate>
                            <asp:Image ID="Image3" runat="server" ImageUrl='<%# PageOperator.GetListImageStatus(DataBinder.Eval(Container, "DataItem(IsRecommend)","{0}")=="0"?"1":"0")  %>' />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="�Ƿ�ͷ��" SortExpression="IsHead">
                        <ItemTemplate>
                            <asp:Image ID="Image4" runat="server" ImageUrl='<%# PageOperator.GetListImageStatus(DataBinder.Eval(Container, "DataItem(IsHead)","{0}")=="0"?"1":"0")%>' />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="����">
                        <ItemTemplate>
                            <a href="<%# "Article_Operate.aspx?Guid='"+Eval("Guid")+"'" %>" style="color: #4482b4;">
                                �༭</a>
                            <asp:LinkButton ID="LinkDelte" runat="server" Style="color: #4482b4;" OnClick="ButtonDeleteBylink_Click"
                                CommandArgument='<%# Eval("Guid") %>' OnClientClick="return window.confirm('��ȷ��Ҫɾ����?');">ɾ��</asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
            </cc1:Num1GridView>
        </div>
        <asp:HiddenField ID="CheckGuid" runat="server" Value="0" />
        <asp:HiddenField ID="HiddenFieldSubstationID" runat="server" Value="0" />
        <asp:ObjectDataSource ID="ObjectDataSourceData" runat="server" SelectMethod="Search"
            TypeName="ShopNum1.BusinessLogic.ShopNum1_Article_Action">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxTitle" Name="title" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBoxPublisher" Name="publisher" PropertyName="Text"
                    Type="String" />
                <asp:ControlParameter ControlID="DropDownListArticleCategoryID" Name="articlecategoryid"
                    PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="textBoxStartDate" Name="startdate" PropertyName="Text"
                    Type="String" />
                <asp:ControlParameter ControlID="textBoxEndDate" Name="enddate" PropertyName="Text"
                    Type="String" />
                <asp:ControlParameter ControlID="DropDownListIsShow" Name="isshow" PropertyName="SelectedValue"
                    Type="Int32" />
                <asp:ControlParameter ControlID="DropDownListIsHot" Name="ishot" PropertyName="SelectedValue"
                    Type="Int32" />
                <asp:ControlParameter ControlID="DropDownListIsRecommend" Name="isrecommand" PropertyName="SelectedValue"
                    Type="Int32" />
                <asp:ControlParameter ControlID="DropDownListIsHead" Name="ishead" PropertyName="SelectedValue"
                    Type="Int32" />
                <asp:ControlParameter ControlID="DropDownListIsAllowComment" Name="isallowcomment"
                    PropertyName="SelectedValue" Type="Int32" />
                <asp:Parameter Name="isDeleted" Type="Int32" DefaultValue="0" />
                <asp:ControlParameter ControlID="HiddenFieldSubstationID" Name="SubstationID"
                    PropertyName="Value" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
    </form>
</body>
</html>
