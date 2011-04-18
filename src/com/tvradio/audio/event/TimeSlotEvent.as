/**
 * Copyright 2011 SMARTJOG * TV-RADIO.
 * Licensed under the MIT License (see LICENSE.txt)
 */
package com.tvradio.audio.event
{
	import flash.events.Event;
	
	public class TimeSlotEvent extends Event
	{

		public static const TIMESLOT_STATUS:String = "videoStatus";
      	public var arg:String;

		public function TimeSlotEvent(type:String, customArg:String=null, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.arg = customArg;
		}
		
		public override function clone():Event {
	         return new TimeSlotEvent(type, arg, bubbles, cancelable);
	    }

      	public override function toString():String {
        	return formatToString("TimeSlotEvent", "type", "arg", "bubbles", "cancelable", "eventPhase");
      	}

	}
}