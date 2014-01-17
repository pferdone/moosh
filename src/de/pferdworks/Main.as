package de.pferdworks
{
	import de.pferdworks.config.MainConfig;
	import flash.display.Sprite;
	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.impl.Context;
	import starling.core.Starling;
	
	[SWF(width="400", height="300", frameRate="60", backgroundColor="#ffffff")]
	/**
	 * ...
	 * @author Florian Tatzky
	 */
	public class Main extends Sprite 
	{
		private var _starling:Starling;
		private var _context:IContext;
		
		public function Main():void 
		{
			_context = new Context()
				.install(MVCSBundle)
				.configure(MainConfig)
				.configure(new ContextView(this));
		}
		
	}
	
}