package markus.ringel.thesis.model{
	
	public class Feed{
		
		private var _id:int;
		private var _name:String;
		private var _author:String:
		private var _trust:Number;
		private var _uri:String;
		private var _muted:Boolean;
		
		public function Feed(){
		}
		
		
		public function Feed(name:String, author:String, trust:String, uri:String, muted:Boolean){
			this._name=name;
			this._author=author;
			this._trust=trust;
			this._uri=uri;
			this._muted=muted;
		}
		
		public function get id():int{
			return this._id;
		}
		
		public function set id(id):void{
			this._id=id;
		}
		
		public function get name():String{
			return this._name;
		}
		
		public function set name(name):void{
			this._name=name;
		}
		
		public function get author():String{
			return this._author;
		}
		
		public function set author(author):void{
			this._name=author;
		}
		
		public function get trust():Number{
			return this._trust;
		}
		
		public function set trust(trust):void{
			this._trust=trust;
		}
		
		public function get uri():String{
			return this._uri;
		}
		
		public function set uri(uro):void{
			this._uri=uri;
		}
		
		public function get muted():Boolean{
			return this._muted;
		}
		
		public function set muted(muted):void{
			this._muted=muted;
		}
		
		public funtion toString():String{
			return "id: " + this._id + " name: " + this._name + " author: " 
				+ this._author + " trust :" + this._trust + " uri: " + this._uri 
				+ " muted: " +this._muted;
		}
	}
}