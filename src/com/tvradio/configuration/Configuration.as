/**
 * Copyright 2011 SMARTJOG * TV-RADIO.
 * Licensed under the MIT License (see LICENSE.txt)
 */
package com.tvradio.configuration
{
	public class Configuration
	{
		public function Configuration()
		{		
		}
		
		private var _playerType:String;
		private var _token:String;
		private var _preURL:String;
		private var _category:String;
		private var _clock:String;
		private var _timeSlot:String;
		
		public function initConfiguration(xml:XML):void {
			this._playerType = xml.child("playerType").valueOf();
			this._token = xml.child("token").valueOf();
			this._preURL = xml.child("preURL").valueOf();
			this._category = xml.child("category").valueOf();
			this._clock = xml.child("clock").valueOf();
			this._timeSlot = xml.child("timeSlot").valueOf();			
		}
		
		
		public function get playerType():String{
			return _playerType;
		}
		public function set playerType(value:String):void{
			_playerType = value;
		}
		public function get token():String{
			return _token;
		}
		public function set token(value:String):void{
			_token = value;
		}
		public function get preURL():String{
			return _preURL;
		}
		public function set preURL(value:String):void{
			_preURL = value;
		}
		public function get category():String{
			return _category;
		}
		public function set category(value:String):void{
			_category = value;
		}
		public function get clock():String{
			return _clock;
		}
		public function set clock(value:String):void{
			_clock = value;
		}
		public function get timeSlot():String{
			return _timeSlot;
		}
		public function set timeSlot(value:String):void{
			_timeSlot = value;
		}
	}
}