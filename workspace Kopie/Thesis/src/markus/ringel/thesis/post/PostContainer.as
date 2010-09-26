package markus.ringel.thesis.post
{
	import spark.components.Panel;
	
	public class PostContainer extends Panel
	{
		
		private var postBox:PostBox=new PostBox();
		
		public function PostContainer()
		{
			super();
			this.title="Meldungen";
			
			this.addElement(postBox);
		}
	}
}