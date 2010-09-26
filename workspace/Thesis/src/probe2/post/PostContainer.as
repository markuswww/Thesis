package probe2.post
{
	import mx.collections.ArrayCollection;
	import mx.containers.VBox;
	
	import probe2.post.PostBox;
	import markus.ringel.thesis.model.Post;
	import spark.components.SkinnableDataContainer;
	import spark.skins.spark.SkinnableDataContainerSkin;
	
	
	public class PostContainer extends VBox
	{
		
		private var pm:PostManager=PostManager.getInstance();
		public function PostContainer()
		{
			super();
		}
		
		private function createPostBox():void{
			var postList:ArrayCollection=pm.getPostList();
			for each(var post:Post in postList){
				var pb:PostBox=new PostBox();
				pb._title=post.title;
				pb._url=post.uri;
				addElement(pb);
			}
			
		}
		
		/*
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
			navigateToURL(new URLRequest(),'_blank');
		}
		*/
	}
}