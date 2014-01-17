package de.pferdworks.view 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import starling.core.Starling;
	import de.pferdworks.game.Game;
	
	/**
	 * Main View.
	 * @author Florian Tatzky
	 */
	public class MainView extends Sprite
	{
		private var _starling:Starling;
		
		public function MainView() 
		{
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			_starling = new Starling(Game, stage);
			_starling.start();
		}
		
	}

}