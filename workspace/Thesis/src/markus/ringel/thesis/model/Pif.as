package markus.ringel.thesis.model
{
	import mx.collections.ArrayCollection;

	[Bindable]
	public class Pif
	{
		
		private var _feedList:ArrayCollection=new ArrayCollection();
		private var _friendList:ArrayCollection=new ArrayCollection();
		
		
		public function Pif()
		{
		}

		public function get feedList():ArrayCollection
		{
			return _feedList;
		}

		public function set feedList(value:ArrayCollection):void
		{
			_feedList = value;
		}

		public function get friendList():ArrayCollection
		{
			return _friendList;
		}

		public function set friendList(value:ArrayCollection):void
		{
			_friendList = value;
		}


	}
}