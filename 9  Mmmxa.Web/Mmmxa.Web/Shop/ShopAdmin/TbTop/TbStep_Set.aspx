﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="Admin_TbTop_TbSetp_Set" Codebehind="TbStep_Set.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link rel='stylesheet' type='text/css' href='../style/style.css' />
    <style type="text/css">
        .TB_h21
        {
            padding-left: 35px;
            font-size: 14px;
            color: #0279cc;
            background: url(images/icon.gif) 13px 2px no-repeat;
        }
        .TB_h22
        {
            padding-left: 35px;
            font-size: 14px;
            color: #0279cc;
            background: url(images/icon.gif) 13px top no-repeat;
        }
    </style>
</head>
<body class="right_body">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
<div class="dpsc_mian">
     <p class="ptitle" ><a href="../S_Welcome.aspx">我是卖家</a><span class="breadcrume_icon">>></span><span class="breadcrume_text">淘宝同步设置</span></p>

    <div class="taobaopad" style="margin-left:15px;">
            <div style=" width: 740px; padding-top: 8px;  line-height: 30px;">
           
                     <p class="ultit">同步开启/关闭</p>


                <div style="line-height: 30px; height: 30px; padding-left: 20px;">
                    <asp:RadioButton ID="radStepOpen" runat="server" Text="开启" GroupName="radstep" 

onclick="itemDivSet.style.display='block'" />
                    <asp:RadioButton ID="radStepClose" runat="server" Text="关闭" GroupName="radstep" 

onclick="itemDivSet.style.display='none'" />
                </div>



                <div style="padding: 0 0 10px 20px;">
                    您绑定的淘宝店为： <span runat="server" id="spanShopName">andyoneandy</span>
                </div>
            </div>
            <div style="margin-top: 20px; display: none;">
               <p class="ultit">
                    评论设置</p>


                <div style="line-height: 25px; height: 25px; padding-left: 20px;">
                    商品详情页中加入淘宝评论：
                    <asp:RadioButton ID="RadioButtonPlOpen" runat="server" Checked="true" Text="开启" GroupName="radPl" />
                    <asp:RadioButton ID="RadioButtonPlClose" runat="server" Text="关闭" GroupName="radPl" />
                </div>
            </div>


            <div id="itemDivSet">
                <div style="margin: 20px auto 20px auto; display: none;">
                    <p class="ultit">
                        订单设置</p>
                    <div style="line-height: 25px; height: 25px; padding-left: 20px;">
                        商品详情页中加入淘宝订单：<asp:RadioButton ID="radOrderOpen" Checked="true" runat="server" Text="开

启"
                            GroupName="radOrder" />
                        <asp:RadioButton ID="radOrderClose" runat="server" Text="关闭" GroupName="radOrder" />
                    </div>
                </div>
                <div>
                     <p class="ultit">
                        商品双向同步数据时，同步设置（向淘宝新增商品不受规则影响）</p>
                    <div style="padding-left: 20px;">
                        <table>
                            <tr style="height: 25px; line-height: 25px;">
                                <td>
                                    商品标题：
                                </td>
                                <td>
                                    <asp:CheckBox ID="tTitleTtS" runat="server" Text="淘宝->本地 " />
                                </td>
                             
                            </tr>
                            <tr style="height: 25px; line-height: 25px;">
                                <td>
                                    商品价格：
                                </td>
                                <td>
                                    <asp:CheckBox ID="tPriceTtS" runat="server" Text="淘宝->本地 " />
                                </td>
                            
                            </tr>
                            <tr style="height: 25px; line-height: 25px;">
                                <td>
                                    自定类目：
                                </td>
                                <td>
                                    <asp:CheckBox ID="tTypeTtS" runat="server" Text="淘宝->本地 " />
                                </td>
                               
                            </tr>
                            <tr style="height: 25px; line-height: 25px;">
                                <td>
                                    商品数量：
                                </td>
                                <td>
                                    <asp:CheckBox ID="tCountTtS" runat="server" Text="淘宝->本地 " />
                                </td>
                               
                            </tr>
                           
                            <tr style="height: 25px; line-height: 25px;">
                                <td>
                                    商品描述：
                                </td>
                                <td>
                                    <asp:CheckBox ID="tDescTtS" runat="server" Text="淘宝->本地 " />
                                </td>
                              
                            </tr>
                             <tr style="height: 25px; line-height: 25px; display:none" >
                                <td>
                                    图片下载到本地：
                                </td>
                                <td colspan="2">
                                    <asp:RadioButton ID="RadioButtonTimg" runat="server" Text="是" GroupName="RadioButtonTimg" />
                                    <asp:RadioButton ID="RadioButtonTimgNo" runat="server" Text="否"  GroupName="RadioButtonTimg" Checked="true"/>
                                (系统默认是"否",淘宝下载商品到店铺时，图片链接默认是使用淘宝图片链接)
                                </td>
                            </tr>
                        </table>
                    </div>
          



           <table  width="120" style="margin-top:15px;">
               <tr>
                   <td>
              <asp:linkButton ID="btnOK" runat="server"  OnClick="btnOK_Click" CssClass="tjbtn" >确定</asp:linkButton>
                   </td>
                <td><asp:linkButton ID="btnCancel" runat="server"  CssClass="tjbtn"  >取消</asp:linkButton></td>
                  
               </tr>
           </table>

            
           
        </div>

</div>



    </div>
    
    
    </form>
</body>
</html>
