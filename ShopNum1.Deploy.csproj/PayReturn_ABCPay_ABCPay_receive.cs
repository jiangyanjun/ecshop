using com.hitrust.trustpay.client.b2c;
using ShopNum1.BusinessLogic;
using ShopNum1.Common;
using ShopNum1.Factory;
using ShopNum1MultiEntity;
using System;
using System.Collections;
using System.Collections.Specialized;
using System.Data;
using System.IO;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
public class PayReturn_ABCPay_ABCPay_receive : Page, IRequiresSessionState
{
	public string strReceivePage = string.Empty;
	protected DefaultProfile Profile
	{
		get
		{
			return (DefaultProfile)this.Context.Profile;
		}
	}
	protected HttpApplication ApplicationInstance
	{
		get
		{
			return this.Context.ApplicationInstance;
		}
	}
	protected void Page_Load(object sender, EventArgs e)
	{
		this.method_0("************************************************************");
		this.method_0("================收到支付结果开始" + DateTime.Now.ToString() + "================");
		PaymentResult paymentResult = new PaymentResult();
		string text = string.Format("{0}", base.Request["MSG"]);
		try
		{
			paymentResult.init(text);
		}
		catch (Exception ex)
		{
			File.AppendAllText(base.Server.MapPath("~/JS/log.txt"), "[" + ex.Message + "]\r\n");
		}
		if (!string.IsNullOrEmpty(text))
		{
			this.method_0("RSASigClass初始化成功！");
		}
		else
		{
			this.method_0("RSASigClass初始化失败！");
		}
		string string_ = string.Empty;
		if (paymentResult.isSuccess())
		{
			string_ = base.Request["TradeID"];
			string string_2 = base.Request["OperateType"];
			string string_3 = base.Request["memloginid"];
			string string_4 = base.Request["OrderAmount"];
			this.method_1(string_, string_2, string_3, string_4);
			this.method_0("支付成功！");
		}
		else
		{
			this.method_0("支付失败！");
		}
		base.Response.Redirect("/index.html?shopurlOrderList.aspx");
		this.method_0("================收到支付结果结束" + DateTime.Now.ToString() + "================");
	}
	private void method_0(string string_0)
	{
	}
	private void method_1(string string_0, string string_1, string string_2, string string_3)
	{
		if (string_1.Equals("product"))
		{
			ShopNum1_OrderInfo_Action shopNum1_OrderInfo_Action = (ShopNum1_OrderInfo_Action)LogicFactory.CreateShopNum1_OrderInfo_Action();
			DataTable dataTable = shopNum1_OrderInfo_Action.SearchStatus(string_0);
			int num = int.Parse(dataTable.Rows[0]["OderStatus"].ToString());
			if (num < 1)
			{
				shopNum1_OrderInfo_Action.UpdateOrderInfoStatus_tenpay(string_0, "OderStatus", "1");
			}
		}
		else if (string_1.StartsWith("Recharge") && string_1.IndexOf('_') != -1)
		{
			try
			{
				ShopNum1_AdvancePaymentModifyLog_Action shopNum1_AdvancePaymentModifyLog_Action = (ShopNum1_AdvancePaymentModifyLog_Action)LogicFactory.CreateShopNum1_AdvancePaymentModifyLog_Action();
				DataTable advancePaymentModifyLog = shopNum1_AdvancePaymentModifyLog_Action.GetAdvancePaymentModifyLog(string_1.Split(new char[]
				{
					'_'
				})[1].ToString());
				if (advancePaymentModifyLog != null && advancePaymentModifyLog.Rows.Count > 0 && advancePaymentModifyLog.Rows[0]["OperateStatus"].ToString() == "0")
				{
					string iD = string.Empty;
					iD = string_1.Split(new char[]
					{
						'_'
					})[1].ToString();
					shopNum1_AdvancePaymentModifyLog_Action.ChangeOperateStatus(iD, 1);
					string nameById = Common.GetNameById("advancepayment", "shopnum1_member", " and memloginid='" + string_2 + "'");
					if (nameById != "")
					{
						ShopNum1_AdvancePaymentModifyLog shopNum1_AdvancePaymentModifyLog = new ShopNum1_AdvancePaymentModifyLog();
						shopNum1_AdvancePaymentModifyLog.Guid = new Guid?(Guid.NewGuid());
						shopNum1_AdvancePaymentModifyLog.OperateType = 1;
						shopNum1_AdvancePaymentModifyLog.CurrentAdvancePayment = Convert.ToDecimal(nameById);
						shopNum1_AdvancePaymentModifyLog.OperateMoney = Convert.ToDecimal(string_3);
						shopNum1_AdvancePaymentModifyLog.LastOperateMoney = Convert.ToDecimal(nameById) + Convert.ToDecimal(shopNum1_AdvancePaymentModifyLog.OperateMoney);
						shopNum1_AdvancePaymentModifyLog.Date = DateTime.Now;
						shopNum1_AdvancePaymentModifyLog.Memo = "农行网银充值";
						shopNum1_AdvancePaymentModifyLog.MemLoginID = string_2;
						shopNum1_AdvancePaymentModifyLog.CreateUser = string_2;
						shopNum1_AdvancePaymentModifyLog.CreateTime = new DateTime?(DateTime.Now);
						shopNum1_AdvancePaymentModifyLog.IsDeleted = new int?(0);
						shopNum1_AdvancePaymentModifyLog_Action.OperateMoney(shopNum1_AdvancePaymentModifyLog);
					}
				}
			}
			catch (Exception)
			{
			}
		}
	}
	public ArrayList GetRequestPost()
	{
		ArrayList arrayList = new ArrayList();
		NameValueCollection queryString = base.Request.QueryString;
		string[] allKeys = queryString.AllKeys;
		for (int i = 0; i < allKeys.Length; i++)
		{
			arrayList.Add(allKeys[i] + "=" + base.Request.QueryString[allKeys[i]]);
		}
		return arrayList;
	}
}