﻿<%@ Control Language="C#" EnableViewState="false" %>

<script type="text/javascript" language="javascript">
     $(function(){
         $("input[name='fee_check']").click(function(){$("#S_Import_ctl00_hidfee").val($(this).val());
                        if($(this).val()=="1"){$("#selectfee").hide();}else{$("#selectfee").show();}
                });
     });
  $(function(){
        //显示商品类型
        //GetType("ctype",0,"ctype");
        //显示商品分类方法
        GetType("ptype",0,"ptype_1");
        $("select[name='ptype_1']").change(function(){
                $("select[name='ptype_2']").hide();$("select[name='ptype_3']").hide();
                var id=$(this).find("option:selected").val();
                var ctype=$(this).find("option:selected").attr("lang");
                GetBrandType("btype",ctype,"btype"); //显示品牌
                GetType("ptype",id,"ptype_2");
        });
        $("select[name='ptype_2']").change(function(){$("select[name='ptype_3']").hide();
                var id=$(this).find("option:selected").val();
                var ctype=$(this).find("option:selected").attr("lang");
                GetType("ptype",id,"ptype_3");
                GetBrandType("btype",ctype,"btype"); //显示品牌
        });
        $("select[name='ptype_3']").change(function(){
                var ctype=$(this).find("option:selected").attr("lang");
                GetBrandType("btype",ctype,"btype"); //显示品牌
        });
        //显示店铺分类
        GetShopType("stype",0,"stype_1");
        $("select[name='stype_1']").change(function(){
              var id=$(this).find("option:selected").attr("lang");
              GetShopType("stype",id,"stype_2");
              $("select[name='stype_2']").show();
        });
       
//        $("select[name='ctype']").change(function(){var id=$(this).find("option:selected").val();
//                $("select[name='btype']").html('<option value="000">-请选择-</option>');
//                GetType("btype",id,"btype");//显示对应的品牌
//        });
        //显示商品图片分类
        GetType("vtype",0,"vtype");//GetType("btype",0,"btype");
  });
  //通用加载分类js方法
  function GetType(type,id,name)
  {
        $.get("/Api/ShopAdmin/S_Import.ashx?type="+type+"&id="+id,function(data){
               if(data!=""&&data.toString().length>20){
                   var vdata=eval('('+data+')');
                   var ptype=new Array("<option value='000'>-请选择-</option>");
                   $.each(vdata,function(m,n){
                   ptype.push("<option value='"+n.code+"' lang='"+n.categorytype+"'>"+n.name+"</option>");});
                   $("select[name='"+name+"']").show().html(ptype.join(""));  
               }
        });
  }
  function GetBrandType(type,id,name)
  {
        $.get("/Api/ShopAdmin/S_Import.ashx?type="+type+"&id="+id,function(data){
               var ptype=new Array("<option value='00000000-0000-0000-0000-000000000000' lang='0'>其它</option>");
               if(data!=""&&data.toString().length>20){
                   var vdata=eval('('+data+')');
                   $.each(vdata,function(m,n){ptype.push("<option value='"+n.guid+"'>"+n.name+"</option>");});
                   $("select[name='"+name+"']").html(ptype.join(""));  
               }
        });
  }
  function GetShopType(type,id,name)
  {
        $.get("/Api/ShopAdmin/S_Import.ashx?type="+type+"&id="+id,function(data){
               var ptype=new Array("<option value='000'>-请选择-</option>");
               if(data!=""&&data.toString().length>20){
                   var vdata=eval('('+data+')');
                   $.each(vdata,function(m,n){ptype.push("<option value='"+n.code+"' lang='"+n.id+"'>"+n.name+"</option>");});
                   $("select[name='"+name+"']").html(ptype.join(""));  
               }
              
        });
  }
  function checkImport()
  {
     if(Page_ClientValidate())
     {
        $("span[check='errormsg']").hide();
        var pt1=$("select[name='ptype_1']").find("option:selected");
        var pt2=$("select[name='ptype_2']").find("option:selected");
        var pt3=$("select[name='ptype_3']").find("option:selected");
        var st1=$("select[name='stype_1']").find("option:selected");
        var st2=$("select[name='stype_2']").find("option:selected");
        var bt=$("select[name='btype']").find("option:selected");
        var at=$("select[name='vtype']").find("option:selected");
        var sell=$("input[name='sell_radio']:checked").val();
        if(pt1.val()=="000"){$("select[name='ptype_3']").next().show().html("主平台分类必须选择！");return false;}
        if(pt2.val()=="000"&$("select[name='ptype_2']").is(":visible")){$("select[name='ptype_3']").next().show().html("主平台分类必须选择！");return false;}
        if(pt3.val()=="000"&$("select[name='ptype_3']").is(":visible")){$("select[name='ptype_3']").next().show().html("主平台分类必须选择！");return false;}
        
        var xpType=new Array();
        $("input[name='pType']").each(function(){
                if($(this).is(":checked"))
                {
                     xpType.push($(this).attr("id"));
                }
        });
        $("#S_Import_ctl00_hidProdtype").val(xpType.join(""));
        if(st1.val()=="000"){$("select[name='stype_2']").next().show().html("请选择店铺分类！");$("select[name='ptype_3']").next().hide();return false;}
        
        var product_type=pt1.val()+"|"+pt1.text();
        var ctype=pt1.attr("lang");
        if(pt1.val()!="000"&&pt2.val()!="000")
        {
            ctype=pt2.attr("lang");
            product_type=pt2.val()+"|"+pt1.text()+" > "+pt2.text();
            if(pt3.val()!="000")
            {
                 ctype=pt3.attr("lang");
                 product_type=pt3.val()+"|"+pt1.text()+" > "+pt2.text()+" > "+pt3.text();
            }  
        }       
        $("#S_Import_ctl00_hidctype").val(ctype);
        var shop_type=st1.val()+"|"+st1.text();
        if(st2.val()!="000")
        {
            shop_type=st2.val()+"|"+st2.text();
        }
        $("#S_Import_ctl00_hidptype").val(product_type);
        $("#S_Import_ctl00_hidstype").val(shop_type);
        $("#S_Import_ctl00_hidbtype").val(bt.val()+"|"+bt.text());
        $("#S_Import_ctl00_hidatype").val(at.val()+"|"+at.text());
        $("#S_Import_ctl00_hidsell").val(sell);
        if($("#S_Import_ctl00_hidpath").val()=="")
        {
           $("#uperror").show().html("请上传淘宝csv文件！");
        }
        $("#spanImg").show();
        return true;  
     }
     else
     {
        return false;
     }
  }
</script>

<script type="text/javascript">
//<![CDATA[
function WebForm_OnSubmit() {
if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
return true;
}
//]]>
</script>

<div class="biaogenr">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="biaod">
        <tr>
            <th colspan="2">
                淘宝数据包批量导入(淘宝csvV5.3.3.0_支持标准Zip压缩包)
            </th>
        </tr>
        <tr style="display: none;">
            <td class="bordleft" width="130">
                商品类型：
            </td>
            <td class="bordrig">
                <select name="ctype" class="tselect2">
                    <option value="000">-请选择-</option>
                </select>主平台分类必须选择<span class="star">*</span><span check="errormsg" class="red">&nbsp;</span>
            </td>
        </tr>
        <tr>
            <td class="bordleft">
                主平台分类：
            </td>
            <td class="bordrig">
                <select name="ptype_1" class="tselect1">
                    <option value="000">-请选择-</option>
                </select>
                <select name="ptype_2" class="tselect1 hideme">
                    <option value="000">-请选择-</option>
                </select>
                <select name="ptype_3" class="tselect1 hideme">
                    <option value="000">-请选择-</option>
                </select><span class="star">*</span><span class="red" check="errormsg">分类必须选择</span>
            </td>
        </tr>
        <tr>
            <td class="bordleft">
                店铺商品分类：
            </td>
            <td class="bordrig">
                <select name="stype_1" size="1" class="tselect1">
                    <option value="000">-请选择-</option>
                </select>
                <select name="stype_2" size="1" class="tselect1 hideme">
                    <option value="000">-请选择-</option>
                </select><span class="star">*</span><span class="red" check="errormsg">必须选择一级分类</span>
            </td>
        </tr>
        <tr>
            <td class="bordleft">
                商品品牌：
            </td>
            <td class="bordrig">
                <select name="btype" size="1" class="op_select">
                    <option value="000">-请选择-</option>
                </select>
            </td>
        </tr>
        <tr>
            <td class="bordleft">
                图片分类：
            </td>
            <td class="bordrig">
                <select name="vtype" size="1" class="op_select">
                </select>
                <span class="red"></span>
            </td>
        </tr>
        <tr>
              <td class="bordleft">
                商品类别：</td>
              <td class="bordrig">
                <input name="pType" type="checkbox" id="isshopnew" value="0"/>新品
                <input name="pType" type="checkbox" id="isshophot" value="1" />热卖
                <input name="pType" type="checkbox" id="isshoppromotion" value="2" />促销 
                <input name="pType" type="checkbox" id="isshoprecommend" value="3" />推荐</td>
        
        </tr>
        <tr>
            <td class="bordleft">
                邮寄类别：
            </td>
            <td class="bordrig">
                <input name="fee_check" type="radio" value="1" checked="checked" />卖家承担运费
                <input name="fee_check" type="radio" value="0" />买家承担运费
            </td>
        </tr>
        <tr style="display:none" id="selectfee">
            <td class="bordleft">
               邮费设置： </td>
               <td class="bordrig">
                    平邮<input name="input" type="text" id="txtPost_fee" runat="server" value="0.00" class="yuan"  />元 &nbsp;&nbsp;&nbsp;&nbsp;
                    快递<input name="input" type="text" id="txtExpress_fee" runat="server" value="0.00" class="yuan"  />元 &nbsp;&nbsp;&nbsp;&nbsp;
                    EMS<input name="input" type="text" id="txtEms_fee" runat="server" class="yuan"  value="0.00" />元 
                </td>
        </tr>
        <tr>
            <td class="bordleft">
                是否上架：
            </td>
            <td class="bordrig">
                <input name="sell_radio" type="radio" value="0" checked="checked" />下架
                <input name="sell_radio" type="radio" value="1" />上架
            </td>
        </tr>
        <tr>
            <td class="bordleft">
                ZIP模板文件：
            </td>
            <td class="bordrig">
                <input onclick="window.location.href='/Template/csv/tbtemp.zip'" type="button" class="xiazzip"
                    value="下载ZIP模板文件" />
                <span class="gray1">请先根据下载模板文件，然后根据内容示例填写商品信息。</span>
            </td>
        </tr>
        <tr>
            <td class="bordleft" style="border-bottom: solid 1px #c6dfff;">
                上传ZIP文件：
            </td>
            <td class="bordrig" style="border-bottom: solid 1px #c6dfff;">
                <input type="button" id="fileupload" />
                <span id="upsuccess" style="color: Green"></span><span id="uperror" style="color: Red">
                </span><span id="submsg">
                    <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label></span>
            </td>
        </tr>
    </table>
    <div style="text-align: center; margin: 20px 0px 50px 0px;">
        <input type="button" class="baocbtn" onclick="if(!checkImport()){return false;}document.form1.target='_self';this.disabled='disabled';__doPostBack('btnOk','')"
            value="确定" />
        <span id="spanImg" style="display: none;">
            <img src='/Main/Themes/Skin_default/Images/lodding.gif' /></span> <span class="gray1">淘宝提供的CSV可能不是标准的格式请注意转换 (上传文件大小不要超过50M)</span>
    </div>
</div>
<input type="hidden" id="hidLoginId" runat="server" />
<input type="hidden" id="hidctype" runat="server" />
<input type="hidden" id="hidptype" runat="server" />
<input type="hidden" id="hidstype" runat="server" />
<input type="hidden" id="hidbtype" runat="server" />
<input type="hidden" id="hidatype" runat="server" />
<input type="hidden" id="hidsell" runat="server" value="0" />
<input type="hidden" id="hidpath" runat="server" />
<input type="hidden" id="hidProdtype" runat="server" value=""/>
<input type="hidden" id="hidfee" runat="server" value="1"/>


<script type="text/javascript" language="javascript">
        //Jely 20120712新加方法
       $(function(){
             $("#fileupload").uploadify({
                                        'uploader': 'uploadify/uploadify.swf',
                                        'script': '/Api/ShopAdmin/S_Import.ashx?logid='+$("#S_Import_ctl00_hidLoginId").val()+'&type=uploadzip',
                                        'cancelImg': 'uploadify/cancel.png',
                                        'fileExt': '*.zip',
                                        'fileDesc': 'Zip压缩包(淘宝csv)',
                                        'sizeLimit':'300000000000', 
                                        'auto': true,
                                        'multi': false,
                                        onComplete: function (event, queueID, fileObj, response, data)  
                                        { 
                                             $("#upsuccess").hide();$("#uperror").hide();
                                             if(response.toString().split("|")[0]=="ok")
                                             {
                                                 $("#upsuccess").show().html("上传成功！");
                                                 $("#S_Import_ctl00_hidpath").val(response.toString().split("|")[1]);
                                             }
                                             else
                                             {   
                                                 $("#uperror").show().html(response.toString().split("|")[1]);
                                             }
                                        }
              });
       });
</script>
