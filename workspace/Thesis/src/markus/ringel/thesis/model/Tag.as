package markus.ringel.thesis.model{
	public class Tag{
		
		private var _id:int;
		private var _name:String;
		
		public function Tag(){
		}
		
		public function Tag(name:String){
			this._name=name;
		}
		
		public function get name():String{
			return this._name;
		}
		
		public function set name(name):void{
			this._name=name;
		}
		
		public toString():String{
			return "name: " + this._name;
		}
	}
}