package com.grapefrukt.exporter.serializers.files {
	import flash.utils.ByteArray;
	import com.grapefrukt.exporter.debug.Logger;
	
	public class PrefixNameExporter extends ZipFileSerializer {
		private var _prefix:String;

		public function PrefixNameExporter(prefix:String) {
			_prefix = prefix;
		}

		override public function serialize(filename:String, file:ByteArray):void {
//			Logger.log("TextureExporter", "serializing: " + filename, "", Logger.NOTICE);
			
			if (filename.indexOf("/")>-1) {
				
				var _fold = filename.substring(0, filename.lastIndexOf("/"));
				var _filn = filename.substring(filename.lastIndexOf("/")+1, filename.length);
				super.serialize(_fold+"/"+_prefix + _filn, file);
			} else {
				super.serialize(_prefix + filename, file);
			}	
		}

	}

}