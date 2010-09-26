package probe2
{
	import PostBox.*;
	
	import mx.containers.VBox;
	
	import spark.components.SkinnableDataContainer;
	import spark.skins.spark.SkinnableDataContainerSkin;
	
	
	public class PostContainer extends VBox
	{
		public function PostContainer()
		{
			var p:PostBox=new PostBox();
			p._title="ich bin post nr. "+i;
			p._url="http://www.mactechnews.de/news/index.html";
			addChild(p);
			createPostBox();
		}
		
		private function createPostBox(){
			for(var i:int=1;i<11;i++){
				var p:PostBox=new PostBox();
				p._title="ich bin post nr. "+i;
				p._url="http://www.mactechnews.de/news/index.html";
				addChild(p);
			}
		}
		
		
		override protected function partAdded(
			partName:String, instance:Object):void {
			super.partAdded(partName, instance);
			if (instance==p) {
				
				p.addEventListener(
					MouseEvent.CLICK, onHelpButton_click);
			}
			
			
		}
		override protected function partRemoved(
			partName:String, instance:Object):void {
			super.partRemoved(partName, instance);
			
			if (instance==p) {
				p.removeEventListener(
					MouseEvent.CLICK, onHelpButton_click);
			}
			
		}
		
		protected function onHelpButton_click(event:MouseEvent):void {
			navigateToURL(new URLRequest("http://www.mactechnews.de/news/index/Auswirkungen-der-entschaften-Entwickler-Richtlinien-Mehr-iOS-Apps-werden-zugelassen-147808.html"),'_blank');
		}
		
	}
}