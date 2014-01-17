package de.pferdworks.game
{
	import starling.display.Sprite;
	import starling.text.TextField;
	
	/**
	 * ...
	 * @author Florian Tatzky
	 */
	public class Game extends Sprite 
	{
		
		public function Game() 
		{
			var text_field:TextField = new TextField(400, 300, "Welcome to This!");
			addChild(text_field);
		}
		
	}

}