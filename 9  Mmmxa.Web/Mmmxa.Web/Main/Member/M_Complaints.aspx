<%@ Page Language="C#" EnableViewState="false" %>

<%@ Import Namespace="ShopNum1.Common" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�ҵ�Ͷ��</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel='stylesheet' type='text/css' href='style/style.css' />

    <script src="js/jquery-1.6.2.min.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript" src="js/Common.js"></script>

    <script type="text/javascript" language="javascript" src="/js/artDialog/artDialog.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="dpsc_mian">
     <p class="ptitle">
            <a href="M_Welcome.aspx">�������</a><span class="breadcrume_icon">>></span><span class="breadcrume_text">�ҵ�Ͷ��</span></p>
        <ShopNum1:M_MyComplaints ID="M_MyComplaints" runat="server" SkinFilename="Skin/M_MyComplaints.ascx"
            PageSize="10" />
    </div>

    <script type="text/javascript" language="javascript">
          // �ж��Ƿ�������
        function checknum(str)
        {
            var re = /^[0-9]+.?[0-9]*$/; 
            if (!re.test(str))
            {
                alert("��������ȷ�����֣�");
                return false;
            }else{return true;}
        }
        //ҳ����ת
        function ontoPage(o)
        {
           var pageindex=$(o).parent().parent().prev().prev().find("input").val();
           if(checknum(pageindex))
           {
                location.href='?isread=<%= Common.ReqStr("isread") %>&pageid='+pageindex;
           }
        }
         
         $(function(){
            //����ɾ������
            $(".shanchu").click(function(){
                var ArrayGuid=new Array();
                var bflag=true;
                $("input[name='checksub']").each(function(){
                        if($(this).is(":checked")){bflag=false
                        ArrayGuid.push("'"+$(this).val()+"'");}
                }); 
                if(bflag)
                {
                    alert("�빴ѡһ�");
                    return;
                }
                IsDelete(ArrayGuid.join(","));
            });
         });
        function IsDelete(val){
        if(confirm("�Ƿ�ɾ����ѡ�"))
        {
            $("input[type='checkbox']").removeAttr("checked");
               $.get("/Api/Main/Member/DeleteOp.ashx?type=OrderComplaint&delid="+val,null,function(data){
                    if(data=="ok"){alert("ɾ���ɹ���");location.reload(); return false;}
                    else{alert("ɾ��ʧ�ܣ�");return false;}
               });
        }
     }
    </script>

    </form>
</body>
</html>
