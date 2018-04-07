﻿<%@ Control Language="C#" EnableViewState="false" %>
<div class="tjsp_mian">
    <p class="ptitle">
        <a href="javascript:void(0)">我是买家</a>&nbsp;>>&nbsp;<a href="javascript:void(0)"><%=lblExit.Text %>申请</a></p>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="biaod" style="margin-top: 15px;">
        <tr>
            <th colspan="2" scope="col">
                我要<asp:Label ID="lblExit" runat="server" Text="退款"></asp:Label>
            </th>
        </tr>
        <tr>
            <td class="bordleft">
                是否收到货：
            </td>
            <td class="bordrig">
                <select id="selisreceive" Class="tselect2">
                    <option value="0" id="a">未收到货</option>
                    <option value="1" id="b">已收到货</option>
                </select>
            </td>
        </tr>
        <tr>
            <td class="bordleft">
                需要<%=lblExit.Text %>金额：
            </td>
            <td class="bordrig">
                <input type="text" id="txtmoney" runat="server" Class="textwb" /><span class="star">*</span><span
                    id="spanmoney"><%=lblExit.Text %>金额至少要大于0且小于等于<asp:Label ID="lblmoney" runat="server"></asp:Label></span>
            </td>
        </tr>
        <tr>
            <td class="bordleft">
                <%=lblExit.Text %>原因：
            </td>
            <td class="bordrig">
                <select id="selrefundCase" Class="tselect2">
                    <option data-tip="请选择<%=lblExit.Text %>原因" selected="true">请选择<%=lblExit.Text %>原因</option>
                    <option value="1" id="c" data-tip="申请七天无理由退换货，请注意保持商品的完好，且不影响二次销售。">七天无理由退换货 </option>
                    <option value="2" id="d" data-tip="商城支持正品保障服务，若您表示商品为假货，请提供有效凭证，并申请<%=lblExit.Text %>。">收到假货
                    </option>
                    <option value="3" id="e" data-tip="如果您需要退还运费，可申请此<%=lblExit.Text %>，并提供有效凭证或与商家协商一致。 ">退运费
                    </option>
                    <option value="4"  id="f" data-tip="如您收到商品时就存在破损问题，可选择此项<%=lblExit.Text %>原因，并且需要提供有效的物流凭证。">
                        收到商品破损 </option>
                    <option value="5" id="g" data-tip="与卖家已经通过交流沟通达成一致进行<%=lblExit.Text %>。 ">协商一致<%=lblExit.Text %>
                    </option>
                    <option value="6" id="h" data-tip="如商家发错或漏发商品，可选择此项<%=lblExit.Text %>原因，且您需要提供有效的物流凭证。">商品错发/漏发
                    </option>
                    <option value="7" id="i"  data-tip="如商品需要维修，可申请此<%=lblExit.Text %>，并提供有效凭证或与商家协商一致。 ">商品需要维修
                    </option>
                    <option value="8" id="m" data-tip="商城商家承诺提供发票，若商家实际未提供发票，您可以要求商家进行补寄，您也可以提供凭证申请维权。 ">发票问题
                    </option>
                    <option value="9"  id="n" data-tip="收到的商品与商家或宝贝详情页面的描述存在不符的情况。">收到商品与描述不符 </option>
                    <option value="10" id="o" data-tip="若您收到的商品存在做工粗糙、商品瑕疵等质量问题时，可申请此原因<%=lblExit.Text %>。 ">商品质量问题
                    </option>
                    <option value="11" id="p" data-tip="无特殊约定，商家未在72小时内进行发货，您可以获得额外赔偿。">未按约定时间发货 </option>
                </select><span class="star">*</span><span id="datatip">请选择<%=lblExit.Text %>原因</span>
            </td>
        </tr>
        <tr>
            <td class="bordleft">
                <%=lblExit.Text %>说明：
            </td>
            <td class="bordrig">
                <textarea id="txtIntroduce" runat="server" class="textwb1"></textarea><div class="texttw_star"><span class="star">*</span><span id="spanIntroduce"><%=lblExit.Text %>说明不能为空</span></div>
            </td>
        </tr>
        <tr>
            <td class="bordleft" style="border-bottom:1px solid #C6DFFF;">
                上传凭证：
            </td>
            <td class="bordrig" style="padding-top:10px;border-bottom:1px solid #C6DFFF;">
                <img src="" runat="server" id="showimg" style="width: 400px; height: 160px; border: 0px;" />
                <input type="file" name="fileups" id="fileups" onchange="changfile(this)" /><span id="errpicmsg" style="display: block;"></span><span id="spanimg">上传图片不超过1M，上传图片支持gif、jpg、png格式。</span>
            </td>
        </tr>
        <tr id="trstate" runat="server" visible="false">
            <td class="bordleft" style="border-bottom:1px solid #C6DFFF;">
                <%=lblExit.Text %>状态：
            </td>
            <td class="bordrig" style="border-bottom:1px solid #C6DFFF;">
                <asp:Label ID="lblState" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <div style="text-align: center; margin: 20px 0px 50px 0px;">
        <asp:Button ID="btnSubmit" runat="server" Text="确定" CssClass="baocbtn" OnClientClick="return checksub()" />
       <%string strUrl = "";
          if (Request.QueryString["op"] != null)
          {
              if (Request.QueryString["op"].ToString().IndexOf("lifeorder") != -1) { strUrl = "M_LifeOrderList.aspx"; } else { strUrl = "M_OrderList.aspx"; }
          }
          else if (Request.QueryString["view"] != null)
          {
              if (Request.QueryString["view"].ToString().IndexOf("lifeorder") != -1) { strUrl = "M_LifeOrderList.aspx"; } else { strUrl = "M_OrderList.aspx"; }
          }
          else { strUrl = "M_OrderList.aspx"; }
          %>
        <input type="button" value="返回" class="baocbtn" onclick="window.location.href='<%=strUrl %>'" />
    </div>
</div>
<input type="hidden" id="hidIsReceive" runat="server" />
<input type="hidden" id="hidShopId" runat="server" />
<input type="hidden" id="hidProductGuID" runat="server" />
<input type="hidden" id="hidImgPath" runat="server" />
<input type="hidden" id="hidRefundType" runat="server" />
<input type="hidden" id="hidRefundReason" runat="server" />
<input type="hidden" id="hidorderstatus" runat="server" value="0" />
<script type="text/javascript" language="javascript">
    $(function(){
            $("#selrefundCase").change(function(){$("#datatip").text($(this).find("option:selected").attr("data-tip"));   
                     if($(this).find("option:selected").text()!="请选择退款原因"&&$(this).find("option:selected").text()!="请选择退货原因")
                    {
                        $("#selrefundCase").focus();$("#datatip").removeAttr("style");
                    }
            
                     });
            if($("#M_RefundGoods_ctl00_hidRefundReason").val()!="")
            {
                $("#datatip").hide();
                $("#selrefundCase option:eq("+$("#M_RefundGoods_ctl00_hidRefundReason").val()+")").attr('selected','selected'); 
            }
            if($("#M_RefundGoods_ctl00_hidIsReceive").val()!="")
            {
                $("#selisreceive option:eq("+$("#M_RefundGoods_ctl00_hidIsReceive").val()+")").attr('selected','selected'); 
            }
    });
   //ajax上传图片
    function changfile(obj)
    {
         //开始提交
        $("#form1").ajaxSubmit({
            beforeSubmit: function(formData, jqForm, options){$("#M_RefundGoods_ctl00_showimg").attr("src","images/loading.gif");},
            success: function(data, textStatus) {
                 var imageinfo=eval('('+data+')');
                 if(imageinfo.msg=="1"){   
                        $("#M_RefundGoods_ctl00_showimg").attr("src",imageinfo.imagepath);$("#M_RefundGoods_ctl00_hidImgPath").val(imageinfo.imagepath);
                 }else{
                        $("#errpicmsg").show().html(imageinfo.imagepath);
                 }
            },
            error: function(data, status, e) {alert("上传失败，错误信息：" + e); $(obj).val("");   },
            url: "/Api/Main/Member/M_RefundGoods.ashx",
            type: "post",
            dataType: "text",
            timeout: 600000
        });
    }
    //判断价格是否合法
    function checkprice(name)
    {
        var oo = /^\d{1,10}$|^\d{1,10}\.\d{1,2}\w?$/;
        if(!oo.test(name)){return false;}else{return true;}
    }
    //提交操作
    function checksub()
    {
        $("#datatip").removeAttr("style");
        $("span").removeAttr("style");
        if(!checkprice($("#M_RefundGoods_ctl00_txtmoney").val())||parseFloat($("#M_RefundGoods_ctl00_lblmoney").text())<parseFloat($("#M_RefundGoods_ctl00_txtmoney").val())||$("#M_RefundGoods_ctl00_txtmoney").val()=="0"||$("#M_RefundGoods_ctl00_txtmoney").val()=="0.00")
        {
           $("#M_RefundGoods_ctl00_txtmoney").focus(); $("#spanmoney").attr("style","color:red;"); return false;
        }
        if($("#selrefundCase").find("option:selected").text()=="请选择退款原因"||$("#selrefundCase").find("option:selected").text()=="请选择退货原因")
        {
            $("#selrefundCase").focus();$("#datatip").attr("style","color:red;"); return false;
        }
        if($("#M_RefundGoods_ctl00_txtIntroduce").val()=="")
        {
           $("#M_RefundGoods_ctl00_txtIntroduce").focus();$("#spanIntroduce").attr("style","color:red;");return false;
        }
//        if($("#M_RefundGoods_ctl00_hidImgPath").val()=="")
//        {   
//           $("#M_RefundGoods_ctl00_hidImgPath").focus();$("#spanimg").attr("style","color:red;");return false;
//        }
        $("#M_RefundGoods_ctl00_hidRefundReason").val($("#selrefundCase").find("option:selected").val());
        $("#M_RefundGoods_ctl00_hidIsReceive").val($("#selisreceive").find("option:selected").val());
        return true;
    } 

    if(document.getElementById("M_RefundGoods_ctl00_hidorderstatus").value==1)
    {
     $("#b").remove(); $("#d").remove();
    $("#h").remove(); $("#f").remove();
    $("#n").remove(); $("#i").remove();$("#o").remove();
    }
</script>
