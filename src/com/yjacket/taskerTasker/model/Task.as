package com.yjacket.taskerTasker.model
{
	import com.yjacket.taskerTasker.util.TimeUtil;
	
	import mx.utils.UIDUtil;
	
	[Bindable]
	[RemoteClass(alias="Task")]
	public class Task
	{
		public function Task(name:String=null)
		{
			_id = UIDUtil.createUID();
			_name = name;
			_begin = new Date();
		}
		
		protected var _isIdle:Boolean = false;
		private var _id:String;
		private var _name:String;
		private var _begin:Date;
		private var _end:Date;
		private var _memo:String;
		private var _later:Boolean = false;
		
		public function get later():Boolean
		{
			return _later;
		}

		public function set later(value:Boolean):void
		{
			_later = value;
		}

		public function get memo():String
		{
			return _memo;
		}

		public function set memo(value:String):void
		{
			_memo = value;
		}

		public function get end():Date
		{
			return _end;
		}

		public function set end(value:Date):void
		{
			_end = value;
		}

		public function get begin():Date
		{
			return _begin;
		}

		public function set begin(value:Date):void
		{
			_begin = value;
		}

		public function get name():String
		{
			return _name;
		}

		public function set name(value:String):void
		{
			_name = value;
		}
		
		public function get period():String
		{
			return begin.toLocaleString() + " ~ " + end.toLocaleString();
		}
		
		public function get elapsed():String
		{
			var endTime:Number = end ? end.getTime() : new Date().getTime();
			return TimeUtil.toString(Math.floor((endTime - begin.getTime()) / 1000));
		}
		
		public function get isIdle():Boolean
		{
			return _isIdle;
		}
	}
}