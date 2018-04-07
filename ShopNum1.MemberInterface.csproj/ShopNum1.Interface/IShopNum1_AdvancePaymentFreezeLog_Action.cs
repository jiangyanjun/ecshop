﻿namespace ShopNum1.Interface
{
    using ShopNum1MultiEntity;
    using System;
    using System.Data;

    public interface IShopNum1_AdvancePaymentFreezeLog_Action
    {
        int OperateMoney(ShopNum1_AdvancePaymentFreezeLog advancePaymentFreezeLog, decimal lastAdvancePayment);
        DataTable Search(string memLoginID, string date1, string date2, int operateType, int isDeleted);
    }
}
