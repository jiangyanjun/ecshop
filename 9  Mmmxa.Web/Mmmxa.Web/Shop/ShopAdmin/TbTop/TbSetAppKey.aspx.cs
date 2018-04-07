﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Xml;
using ShopNum1.Common;
using ShopNum1.BusinessLogic;
using ShopNum1.Factory;
using ShopNum1.TbLinq;

public partial class ShopTbSetAppKey : System.Web.UI.Page
{

    // private TextBox TextBoxTbKey;//淘宝key
    // private TextBox TextBoxTbSecret;//淘宝secret

    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        //TextBoxTbKey = (TextBox)Page.FindControl("TextBoxTbKey");
        //TextBoxTbSecret = (TextBox)Page.FindControl("TextBoxTbSecret");
    }

    protected void Page_Load(object sender, EventArgs e)
    {
       
        //验证会员中心的cookies
        if (Page.Request.Cookies["MemberLoginCookie"] == null)
        {      //退出
            GetUrl.RedirectTopLogin();
        }
        else
        {
            HttpCookie cookieMemberLogin = Page.Request.Cookies["MemberLoginCookie"];
            HttpCookie decodedCookieMemberLogin = HttpSecureCookie.Decode(cookieMemberLogin);
            string MemberType = decodedCookieMemberLogin.Values["MemberType"].ToString();
            if (MemberType != "2")
            {
                //退出
                GetUrl.RedirectTopLogin();
                return;
            }
            //会员登录ID
            MemLoginID = decodedCookieMemberLogin.Values["MemLoginID"].ToString();
        }

        if (!IsPostBack)
        {
            BindAppKey();
        }


    }

    private void BindAppKey()
    {
        ShopNum1_TbTopKey_Action tbTopKeyAction = (ShopNum1_TbTopKey_Action)LogicTbFactory.CreateShopNum1_TbTopKey_Action();
       ShopNum1_TbTopKey tbTop = tbTopKeyAction.SearchTopKey(MemLoginID);
        if (tbTop == null)
        {
            ViewState["isadd"] = "1";
        }
        else
        {
            //设置节点的值
            TextBoxTbKey.Text = tbTop.AppKey;
            TextBoxTbSecret.Text = tbTop.AppSecret;
            //设置为编辑
            ViewState["isadd"] = "0";
        }
    }

    protected void ButtonUpdate_Click(object sender, EventArgs e)
    {

        ShopNum1_TbTopKey tbTop = new ShopNum1_TbTopKey();
        tbTop.Guid = Guid.NewGuid();
       
        tbTop.CreateTime = Convert.ToDateTime(System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
        tbTop.CreateUser = MemLoginID;
        tbTop.URL = "";
        tbTop.AppKey = TextBoxTbKey.Text.Trim();
        tbTop.AppSecret = TextBoxTbSecret.Text.Trim();
        tbTop.IsForbid = 0;
        tbTop.MemloginID = MemLoginID;
        tbTop.ModifyTime = Convert.ToDateTime(System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
        tbTop.ModifyUser = MemLoginID;
        try
        {
            ShopNum1_TbTopKey_Action tbTopKeyAction = (ShopNum1_TbTopKey_Action)LogicTbFactory.CreateShopNum1_TbTopKey_Action();
            bool isopreate = true;//操作状态
            ///添加
            if (ViewState["isadd"].ToString().Trim() == "1")
            {
                if (tbTopKeyAction.AddTbTopKey(tbTop))
                {
                    isopreate = true;
                    //设置为修改的
                    ViewState["isadd"] = "0";
                }
                else
                {
                    isopreate = false;
                }
            }
            //修改
            else
            {


                if (tbTopKeyAction.UpdateTopKey(tbTop))
                {

                    isopreate = true;
                }
                else
                {
                    isopreate = false;
                }
            }
            if (isopreate)
            {
                MessageBox.Show("操作成功了咯!");
            }
            else
            {
                MessageBox.Show("操作失败!");
            }
        }
        catch (Exception err)
        {
            MessageBox.Show(err.Message);
        }


    }

    /// <summary>
    /// 会员名
    /// </summary>
    private string MemLoginID { get; set; }
}
