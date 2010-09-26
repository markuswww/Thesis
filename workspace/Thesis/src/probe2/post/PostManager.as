package probe2.post
{
	import markus.ringel.thesis.model.Post;
	
	import mx.collections.ArrayCollection;
	
	[Bindable]
	 public class PostManager
	{
		static private var _instance:PostManager;
		public  static var allPosts:ArrayCollection=new ArrayCollection();
		
		public function PostManager(enforcer:SingletonEnforcer)
		{
			createPostList();
		}
		
		public static function getInstance():PostManager
		        {
			            if(PostManager._instance==null)
				                PostManager._instance = new PostManager(new SingletonEnforcer())
			            return PostManager._instance;
		        }
		
		private  static function createPostList():void{
			var url:Array=["http://www.youtube.com/","http://www.sportschau.de/sp/","http://www.spiegel.de/",
				"http://www.spiegel.de/sport/","http://www.spiegel.de/netzwelt/","http://www.spiegel.de/wissenschaft/"
			,"http://www.spiegel.de/unispiegel/","http://www.mactechnews.de/news/index.html","http://www.golem.de/","http://www.twitter.com",
			"http://www.bild.de/","http://www.heise.de/","http://www.heise.de/tr/","http://www.heise.de/mobil/","http://www.heise.de/security/",
			"http://www.heise.de/netze/","http://www.heise.de/open/","http://www.heise.de/developer/"];	
			
			for(var i:int=0;i<url.length;i++){
				var p:Post=new Post();
				p.color="#FFFFFF";
				p.postRating=1.0;
				p.seen=false;
				p.sourceRating=1.0;
				p.sourceRatingOverridden=false;
				p.summary="ich bin eine zusammenfassung und schreibe vor mir her, wenn ich keine waere wuerde ich jawohl nicht hier stehen oder etwa doch.";
				p.title="Ich bin der Title des Post nr " +i;
				p.uri=url[i];
				p.id=i;
				allPosts.addItem(p);
			}
		}
		
		public  function getPostList():ArrayCollection{
			if(allPosts!=null)
				return allPosts;
			return null;
		}
	}
}
class SingletonEnforcer{}