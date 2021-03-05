package com.yjacket.taskerTasker.util
{
	import mx.formatters.DateFormatter;

	public class Dates
	{
		public static function toString(date:Date, format:String="YYYY-MM-DD J:NN:SS"):String
		{
			if (date == null) return "";
			
			var _df:DateFormatter = new DateFormatter();
			_df.formatString = format;
			return _df.format(date);			
		}
	}
}