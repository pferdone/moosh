package de.pferdworks.config 
{
	import de.pferdworks.view.MainView;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	
	/**
	 * ...
	 * @author Florian Tatzky
	 */
	public class MainConfig implements IConfig
	{
		[Inject]
		public var injector:IInjector;

		[Inject]
		public var mediatorMap:IMediatorMap;

		[Inject]
		public var commandMap:IEventCommandMap;

		[Inject]
		public var contextView:ContextView;

		public function configure():void
		{
			// The "view" property is a DisplayObjectContainer reference.
			// If this was a Flex application we would need to cast it
			// as an IVisualElementContainer and call addElement().
			contextView.view.addChild(new MainView());
		}
	}

}