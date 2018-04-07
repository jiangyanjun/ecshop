﻿<%@ Control Language="C#" %>
<div class="tjsp_mian">
    <p class="ptitle">
        <a href="S_Welcome.aspx">我是卖家</a><span class="breadcrume_icon">>></span><span class="breadcrume_text">个人信息</span></p>
    <div class="box_content">
        <div class="control_group">
            <label for="title" class="config_label">
                微信名称：</label>
            <div>
                <asp:TextBox ID="txt_weixinName" MaxLength="50" class="textwb" onblur="CheckNull(this,'*微信名称不能为空')" runat="server"></asp:TextBox><span
                    class="maroon" id="span_weixinName">*</span>
            </div>
        </div>
        <div class="control_group">
            <label for="title" class="config_label">
                公众号：</label>
            <div>
                <asp:TextBox ID="txt_PublicNo" MaxLength="50" class="textwb" onblur="CheckNull(this,'*公众号不能为空')" runat="server"></asp:TextBox><span
                    class="maroon" id="span_PublicNo">*</span>
            </div>
        </div>
        <div class="control_group">
            <label for="title" class="config_label">
                二维码图片：</label>
            <div class="controls">
                <asp:Image ID="img_TwoDimensionalPic" Style="width: 160px; height: 160px;" runat="server" ImageUrl="/ImgUpload/noimg.jpg_160x160.jpg"  onerror="javascript:this.src='/ImgUpload/noImg.jpg_160x160.jpg'"/>
                <asp:HiddenField ID="hid_TwoDimensionalPic" Value="" runat="server" />
                <span><a class="btn_TwoDimensionalPic" onclick="TwoDimensionalImageUpload(1)">浏览</a>&nbsp;&nbsp;<span class="maroon" id="span_TwoDimensionalPic">*</span></span>
            </div>
        </div>
         <div class="control_group">    
            <label for="title" class="config_label">
                店铺首页效果图：</label>
            <div class="controls">
                <asp:Image ID="ImgShopShow" Style="width: 300px; height: 300px;" runat="server" ImageUrl="/ImgUpload/noimg.jpg_300x300.jpg"  onerror="javascript:this.src='/ImgUpload/noImg.jpg_300x300.jpg'"/>
                <asp:HiddenField ID="hidShopShowPic" Value="" runat="server" />
                <span><a class="btn_TwoDimensionalPic" onclick="TwoDimensionalImageUpload(2)">浏览</a>&nbsp;&nbsp;<span class="maroon" id="span_ImgShopShow">*</span></span>
            </div>
        </div>
        <%--<div class="control_group">
            <label class="control_label">
                默认LBS查询范围：</label>
            <div class="controls">
                <input type="text" value="10000" class="textwb" maxlength="5" id="lbs_distance" data-rule-number="true"
                    name="lbs_distance">单位（米）<br>
                <span class="help_inline" style="color: red;">当用户用发送地图定位时在此范围内的商家可被推送给用户!</span>
            </div>
        </div>--%>
        <div class="form_actions">
            <asp:Button ID="Btn_OK" runat="server" Text="保存" CssClass="baocbtn" OnClientClick=" return checkSumbit();" />
        </div>
    </div>
</div>
<input type="hidden" id="hidDataCheck" runat="server" />

<script type="text/javascript">
    function  checkSumbit()
    {
        
        var weixinName=$("#W_ShopConfig_ctl00_txt_weixinName").val();
        var PublicNo=$("#W_ShopConfig_ctl00_txt_PublicNo").val();
        if(weixinName == "")
           {
             $("#W_ShopConfig_ctl00_txt_weixinName").focus();
             $("#span_weixinName").text("*微信名称不能为空");
              return false;
            }
        if(PublicNo == "")
           {
             $("#W_ShopConfig_ctl00_txt_PublicNo").focus();
             $("#span_PublicNo").text("*微信名称不能为空");
              return false;
            }
            
            alert($("#W_ShopConfig_ctl00_img_TwoDimensionalPic").attr("src"));
        if($("#W_ShopConfig_ctl00_img_TwoDimensionalPic").attr("src")==""||$("#W_ShopConfig_ctl00_img_TwoDimensionalPic").attr("src").indexOf("noimg")!=-1)
           {                
               $("#span_TwoDimensionalPic").text("请上传二维码图片！");return false;
           }
        if($("#W_ShopConfig_ctl00_ImgShopShow").attr("src")==""||$("#W_ShopConfig_ctl00_ImgShopShow").attr("src").indexOf("noimg")!=-1)
           {
               $("#span_ImgShopShow").text("请上传店铺首页效果图片！");return false;
           }
      return true;
    };


</script>


<script type="text/javascript">

    function TwoDimensionalImageUpload(flag) { funOpen();
        if(flag==1)
        {
            $("#showiframe").attr("src", "/Shop/ShopAdmin/S_ShowShopPhoto.aspx?txtid=<%=hid_TwoDimensionalPic.ClientID %>&imgid=<%=img_TwoDimensionalPic.ClientID %>");
        }
        else
        {
            $("#showiframe").attr("src", "/Shop/ShopAdmin/S_ShowShopPhoto.aspx?txtid=<%=hidShopShowPic.ClientID %>&imgid=<%=ImgShopShow.ClientID %>");
        }
    }
</script>



<!--弹出层-->
<div class="sp_dialog sp_dialog_out" style="display: none;" id="sp_dialog_outDiv">
    <div class="sp_dialog_cont" style="display: none;" id="sp_dialog_contDiv">
        <div class="sp_tan">
            <h4>
                选择图片</h4>
            <div class="sp_close">
                <a href="javascript:void(0)" onclick="funClose()"></a>
            </div>
            <div class="clear">
            </div>
        </div>
        <div class="sp_tan_content">
            <iframe src="" id="showiframe" width="100%" height="470" frameborder="0" scrolling="no">
            </iframe>
        </div>
    </div>
</div>