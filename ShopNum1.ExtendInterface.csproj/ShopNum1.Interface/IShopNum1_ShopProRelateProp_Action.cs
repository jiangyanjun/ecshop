using ShopNum1MultiEntity;
using System;
using System.Collections.Generic;
using System.Data;
namespace ShopNum1.Interface
{
	public interface IShopNum1_ShopProRelateProp_Action
	{
		int AddListPropValue(List<ShopNum1_ShopProRelateProp> ShopProRelateProp);
		DataTable SelectProp(string strPid);
		DataTable SelectPropByIdAndPid(string strId, string strPid);
	}
}
