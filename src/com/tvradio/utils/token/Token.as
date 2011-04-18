/**
 * Copyright 2011 SMARTJOG * TV-RADIO.
 * Licensed under the MIT License (see LICENSE.txt)
 */
package com.tvradio.utils.token
{
	import com.hurlant.crypto.Crypto;
	import com.hurlant.crypto.hash.IHash;
	import com.hurlant.util.Base64;
	import com.hurlant.util.Hex;
	
	import flash.utils.ByteArray;
	
	import mx.controls.Alert;
	
	public class Token
	{
		public function Token()
		{
			/*
			* CONSTRUCTOR
			*/
		}
		
		private var currentResult:ByteArray;
		private var myURL:String = "";
		
		
		
		public function generateTokenizedURL(tokenValue:String, preURL:String, streamName:String, date:String):String {	
														
					var token_date:String = date;
										
					var my_date:Date = new Date();					
					var hex_token_date:String;
					var hex_token_date2:ByteArray;
					
					hex_token_date = parseInt(token_date,10).toString(16);
														
					var hash:IHash = Crypto.getHash("md5");					
										
					var txt:String = tokenValue+hex_token_date;
										
					var data:ByteArray;
					var format:String = "Text";
					data = Hex.toArray(Hex.fromString(txt));	
					currentResult = hash.hash(data);
										
					var format2:String = "hex";
					switch (format2) {
						case "hex": txt = Hex.fromArray(currentResult); break;
						case "b64": txt = Base64.encodeByteArray(currentResult); break;
						default:
							txt = Hex.toString(Hex.fromArray(currentResult)); break;
					}
					
					myURL = preURL+"/"+txt+"/"+hex_token_date+streamName;
					
					return myURL;
				
			}					

	}
}