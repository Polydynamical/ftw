package fl.events
{
	import flash.events.*;

	public class ListEvent extends Event
	{
		public static const ITEM_DOUBLE_CLICK:String = "itemDoubleClick";
		public static const ITEM_ROLL_OUT:String = "itemRollOut";
		public static const ITEM_ROLL_OVER:String = "itemRollOver";
		public static const ITEM_CLICK:String = "itemClick";
		protected var _index:int;
		protected var _item:Object;
		protected var _columnIndex:int;
		protected var _rowIndex:int;

		public function ListEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:int = -1, param5:int = -1, param6:int = -1, param7:Object = null)
		{
			super(param1, param2, param3);
			_rowIndex = param5;
			_columnIndex = param4;
			_index = param6;
			_item = param7;
		}

		public function get rowIndex() : Object
		{
			return _rowIndex;
		}

		public function get index() : int
		{
			return _index;
		}

		public function get item() : Object
		{
			return _item;
		}

		public function get columnIndex() : int
		{
			return _columnIndex;
		}

		override public function clone() : Event
		{
			return new ListEvent(type, bubbles, cancelable, _columnIndex, _rowIndex);
		}

		override public function toString() : String
		{
			return formatToString("ListEvent", "type", "bubbles", "cancelable", "columnIndex", "rowIndex", "index", "item");
		}
	}
}
