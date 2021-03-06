﻿namespace ShopNum1.Interface
{
    using ShopNum1MultiEntity;
    using System;
    using System.Data;

    public interface IShopNum1_AdvancePaymentApplyLog_Action
    {
        int ApplyOperateMoney(ShopNum1_AdvancePaymentApplyLog advancePaymentApplyLog);
        int ChangeApplyLogStatus(int operateStatus, string strOrderNumber);
        int Delete(string guids);
        DataTable Search(string guid);
        DataTable Search(string memLoginID, string date1, string date2, int operateType, int operateStatus, int isDeleted);
        DataTable SelectAdvPayment_List(CommonPageModel commonModel);
        DataTable SelectOperateMoney(string memberid, string operatetype, string datetime1, string datetime2, string ordernumber, string hidbank, string bank);
        int Update(string guid, string memLoginID, string operateType, decimal operateMoney, int operateStatus, string userMemo, ShopNum1_AdvancePaymentModifyLog advancePaymentModifyLog);
    }
}

