package probe2.tag
{
	import spark.primitives.Rect;
	import spark.components.SkinnableContainer;
	[Bindable]
	public class TagBox extends SkinnableContainer
	{
	
		public var title:String;
		
		public var color:uint;
	
		public var tagColorBox:Rect;
		
		
		public function TagBox()
		{
			super();
		}
		
		override protected function partAdded(
			partName:String, instance:Object):void {
			super.partAdded(partName, instance);
			
			
			
		}
		override protected function partRemoved(
			partName:String, instance:Object):void {
			super.partRemoved(partName, instance);
			
			
			
		}
		
		
		
	}
}