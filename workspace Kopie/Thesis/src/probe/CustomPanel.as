package probe
{
	import flash.events.MouseEvent;
	import mx.core.IVisualElementContainer;
	import mx.events.FlexEvent;
	import spark.components.Button;
	import spark.components.SkinnableContainer;
	[SkinState("help")]
	public class CustomPanel extends SkinnableContainer
	{
		[Bindable] public var title:String;
		[Bindable] public var helpContent:String;
		[SkinPart(required="true")]
		public var helpButton:Button;
		override protected function partAdded(
			partName:String, instance:Object):void {
			super.partAdded(partName, instance);
			if (instance==helpButton) {
				helpButton.addEventListener(
					MouseEvent.CLICK, onHelpButton_click);
			}
		}
		override protected function partRemoved(
			partName:String, instance:Object):void {
			super.partRemoved(partName, instance);
			if (instance==helpButton) {
				helpButton.removeEventListener(
					MouseEvent.CLICK, onHelpButton_click);
			}
		}
		protected function onHelpButton_click(event:MouseEvent):void {
			skin.currentState = (skin.currentState=='normal')
				? 'help' : 'normal';
		}
	}
}