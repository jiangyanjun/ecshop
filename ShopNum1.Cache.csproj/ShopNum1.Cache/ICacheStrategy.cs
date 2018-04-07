using System;
namespace ShopNum1.Cache
{
	public interface ICacheStrategy
	{
		int TimeOut
		{
			get;
			set;
		}
		void AddObject(string objId, object object_0);
		void AddObject(string objId, object object_0, int expire);
		void AddObjectWithFileChange(string objId, object object_0, string[] files);
		void AddObjectWithDepend(string objId, object object_0, string[] dependKey);
		void RemoveObject(string objId);
		object RetrieveObject(string objId);
		void FlushAll();
	}
}