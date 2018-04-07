using AjaxControlToolkit;
using ShopNum1.Control;
using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class AgentAdmin_OrderProductReport : PageBase, IRequiresSessionState
{
	protected const string strOrderProductReport = "OrderProduct_Report.aspx";
	protected ScriptManager ScriptManager1;
	protected Label LabelPageTitle;
	protected System.Web.UI.WebControls.TextBox txtOrderNumber;
	protected System.Web.UI.WebControls.TextBox txtProductName;
	protected System.Web.UI.WebControls.TextBox TextBoxShopName;
	protected System.Web.UI.WebControls.TextBox TextBoxStartDate;
	protected RegularExpressionValidator RegularExpressionValidatorStartDate;
	protected CalendarExtender CalendarExtender1;
	protected System.Web.UI.WebControls.TextBox TextBoxEndDate;
	protected RegularExpressionValidator RegularExpressionValidatorStartDate0;
	protected CalendarExtender CalendarExtender2;
	protected System.Web.UI.WebControls.Button ButtonSearch;
	protected LinkButton ButtonReport;
	protected LinkButton ButtonHtml;
	protected Num1GridView Num1GridViewShow;
	protected ObjectDataSource ObjectDataSourceData;
	protected HiddenField HiddenFieldSubstationID;
	protected HtmlForm form1;
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
		base.CheckLogin();
		this.HiddenFieldSubstationID.Value = base.SubstationID;
		if (!base.IsPostBack)
		{
			this.method_5();
		}
	}
	private void method_5()
	{
		this.Num1GridViewShow.DataBind();
	}
	protected void ButtonReport_Click(object sender, EventArgs e)
	{
		base.Response.Redirect(string.Concat(new string[]
		{
			"OrderProduct_Report.aspx?Type=xls&pname=",
			this.txtProductName.Text,
			"&oname=",
			this.txtOrderNumber.Text.ToString(),
			"&DispatchTime1=",
			this.TextBoxStartDate.Text.ToString(),
			"&DispatchTime2=",
			this.TextBoxEndDate.Text.ToString(),
			"&ShopName=",
			this.TextBoxShopName.Text.ToString()
		}));
	}
	protected void ButtonHtml_Click(object sender, EventArgs e)
	{
		base.Response.Redirect(string.Concat(new string[]
		{
			"OrderProduct_Report.aspx?Type=html&pname=",
			this.txtProductName.Text,
			"&oname=",
			this.txtOrderNumber.Text.ToString(),
			"&DispatchTime1=",
			this.TextBoxStartDate.Text.ToString(),
			"&DispatchTime2=",
			this.TextBoxEndDate.Text.ToString(),
			"&ShopName=",
			this.TextBoxShopName.Text.ToString()
		}));
	}
	protected void ButtonSearch_Click(object sender, EventArgs e)
	{
		this.Num1GridViewShow.DataBind();
	}
}