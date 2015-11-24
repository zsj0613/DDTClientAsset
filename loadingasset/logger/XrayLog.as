package com.blitzagency.xray.logger
{
	import com.blitzagency.xray.logger.XrayLogger;
	import com.blitzagency.xray.logger.Log;

	public class XrayLog
	{
		private static var logger:XrayLogger =  XrayLogger.getInstance();
		
		public static function debug(message:String, dump:*=""):void
		{
			logger.debug(new Log(message, dump, XrayLogger.DEBUG));
		}
		
		public static function info(message:String, dump:*=""):void
		{
			logger.info(new Log(message, dump, XrayLogger.INFO));
		}
		
		public static function warn(message:String, dump:*=""):void
		{
			logger.warn(new Log(message, dump, XrayLogger.WARN));
		}
		
		public static function error(message:String, dump:*=""):void
		{
			logger.error(new Log(message, dump, XrayLogger.ERROR));
		}
		
		public static function fatal(message:String, dump:*=""):void
		{
			logger.fatal(new Log(message, dump, XrayLogger.FATAL));
		}
	}
}