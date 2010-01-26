package org.as3commons.logging.impl 
{
	import org.as3commons.logging.ILogTarget;
	import org.as3commons.logging.ILogTargetFactory;
	import org.as3commons.logging.LogLevel;
	import org.as3commons.logging.util.MessageUtil;

	import flash.text.TextField;

	
	/**
	 * @author martin.heidegger
	 */
	public class TextFieldTarget extends TextField implements ILogTarget, ILogTargetFactory
	{
		private var _format: String;

		public function TextFieldTarget ( format:String = null) {
			if (!format) {
				_format = MessageUtil.DEFAULT_FORMAT;
			} else {
				_format = format;
			}
		}
		
		public function log(name: String, level: LogLevel, timeMs: Number, message: String, parameters: Array): void {
			this.text += MessageUtil.toString( _format, name, level, timeMs, message, parameters ) + "\n";
		}
		
		public function get logLevel(): LogLevel {
			return LogLevel.ALL;
		}

		public function getLogTarget(name: String): ILogTarget {
			return this;
		}
	}
}