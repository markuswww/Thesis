package markus.ringel.thesis.model{
	public class Item{
		
		private var _id:int;
		private var _sourceRating:Number;
		private var _postRating:Number;
		private var _uri:String;
		private var _color:String;//automatic copy from feed
		private var _summary:String;
		private var _title:String;
		private var _sourceRatingOverridden:Boolean;
		private var _seen:Boolean;	
		private var _timestamp:Date;
		
		public function Item(){
		}
		
		public funtion Item(sourceRating:Number, postRating:Number, uri:String, color:String, summary:String, title:String)
		{
			this._sourceRating=sourceRating;
			this._postRating=postRating;
			this._uri=uri;
			this._color=color;
			this._summary=summary;
			this._title=title;
			this._sourceRatingOverridden=false:
			this._seen=false;
			this._timestamp=new Date();
		}
		
		public function get id():int
		{
			return _id;
		}
		
		public function set id(value:int):void
		{
			_id = value;
		}
		
		public function get postRating():Number
		{
			return _postRating;
		}

		public function set postRating(value:Number):void
		{
			_postRating = value;
		}
			
		public function get sourceRating():Number
		{
			return _sourceRating;
		}

		public function set sourceRating(value:Number):void
		{
			_sourceRating = value;
		}
		
		public function get uri():String
		{
			return _uri;
		}
		
		public function set uri(value:String):void
		{
			_uri = value;
		}
		
		public function get color():String
		{
			return _color;
		}
		
		public function set color(value:String):void
		{
			_color = value;
		}
		
		public function get summary():String
		{
			return _summary;
		}
		
		public function set summary(value:String):void
		{
			_summary = value;
		}
			
		public function get title():String
		{
			return _title;
		}
		
		public function set title(value:String):void
		{
			_title = value;
		}
		
		public function get sourceRatingOverridden():Boolean
		{
			return _sourceRatingOverridden;
		}
		
		public function set sourceRatingOverridden(value:Boolean):void
		{
			_sourceRatingOverridden = value;
		}
		
		public function get seen():Boolean
		{
			return _seen;
		}
		
		public function set seen(value:Boolean):void
		{
			_seen = value;
		}
	}
}