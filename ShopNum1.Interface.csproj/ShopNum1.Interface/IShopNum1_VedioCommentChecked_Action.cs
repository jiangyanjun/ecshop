using ShopNum1MultiEntity;
using System;
using System.Data;
namespace ShopNum1.Interface
{
	public interface IShopNum1_VedioCommentChecked_Action
	{
		int Add(ShopNum1_Shop_Video shop_Video);
		DataTable Search(string Title, string memLoginID, string comment, string CommentTime1, string CommentTime2, string replyTime1, string replyTime2, int isReply, int isAudit, string ipAddress, string ShopID);
		DataTable SearchByGuid(string guid);
		int Update(ShopNum1_Shop_Video shop_Video);
		int UpdateAudit(string guids, int isAudit);
		int Delete(string guids);
		DataTable Search(string memLoginID, int isDeleted);
		DataTable Search(string VideoGuid, int isReply, int isAudit, int count);
		DataTable MemberShopVideoComment(string memloginid);
		int DeleteShopVideoComment(string guid);
		DataTable GetShopVideoByGuid(string guid);
		DataTable GetMemLoginIDByGuid(string guid);
	}
}