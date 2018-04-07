﻿<%@ WebHandler Language="C#" Class="S_OrderDetail" %>

using System;
using System.Web;
using ShopNum1.Common;
using ShopNum1.BusinessLogic;
using ShopNum1.Factory;
using System.Data;
using System.Text;

public class S_OrderDetail : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string strType = Common.ReqStr("type");
        switch (strType)
        {
            case "getlogistic":
                ShopNum1_Logistic_Action shopNum1_Logistic_Action = (ShopNum1_Logistic_Action)LogicFactory.CreateShopNum1_Logistic_Action();
                DataTable dt_logistic=shopNum1_Logistic_Action.Search(1);
                context.Response.Write(GetJson(dt_logistic));
                break; 
        }
    }
    /// <summary>
    /// 将datatable转换成json数组
    /// </summary>
    /// <param name="dt"></param>
    /// <returns></returns>
    private string GetJson(DataTable dt)
    {
        StringBuilder sbJson = new StringBuilder();
        sbJson.Append("[");
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                sbJson.Append("{");
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    sbJson.Append("\"" + dt.Columns[j].ColumnName.ToLower() + "\":\"" + dt.Rows[i][j] + "\",");
                }
                sbJson.Remove(sbJson.Length - 1, 1);
                sbJson.Append("},");
            }
        }
        sbJson.Remove(sbJson.Length - 1, 1);
        sbJson.Append("]");
        return sbJson.ToString();
    }
    public bool IsReusable {
        get {
            return false;
        }
    }

}