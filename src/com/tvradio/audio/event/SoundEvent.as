/**
 * Copyright 2011 SMARTJOG * TV-RADIO.
 * Licensed under the MIT License (see LICENSE.txt)
 */
package com.tvradio.audio.event
{
	import flash.events.Event;
	
	public class SoundEvent extends Event
	{
		
		public static const SOUND_VOLUME:String = "soundVolume";
		public static const TOGGLE_VOLUME:String = "toggleVolume";
		public static const CHANGE_VOLUME:String = "changeVolume";
      	public var arg:String;
		
		public function SoundEvent(type:String, customArg:String=null, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.arg = customArg;
		}
		
		public override function clone():Event {
	         return new SoundEvent(type, arg, bubbles, cancelable);
	    }

      	public override function toString():String {
        	return formatToString("SoundEvent", "type", "arg", "bubbles", "cancelable", "eventPhase");
      	}

	}
}