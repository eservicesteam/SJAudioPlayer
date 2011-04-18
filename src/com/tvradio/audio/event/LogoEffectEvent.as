/**
 * Copyright 2011 SMARTJOG * TV-RADIO.
 * Licensed under the MIT License (see LICENSE.txt)
 */
package com.tvradio.audio.event
{
	import flash.events.Event;
	
	public class LogoEffectEvent extends Event
	{
		
		public static const PLAY_EFFECT:String = "playEffect";
		public var arg:String;		
		
		public function LogoEffectEvent(type:String, customArg:String=null, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.arg = customArg;
		}
		
		public override function clone():Event {
	         return new LogoEffectEvent(type, arg, bubbles, cancelable);
	    }

      	public override function toString():String {
        	return formatToString("LogoEffectEvent", "type", "arg", "bubbles", "cancelable", "eventPhase");
      	}

	}
}