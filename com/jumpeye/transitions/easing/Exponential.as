package com.jumpeye.transitions.easing
{
	public class Exponential extends Object
	{
		final public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
		{
			return param1 == param4 ? param2 + param3 : (param3 * (-(Math.pow(2, (-10 * param1) / param4))) + 1) + param2;
		}

		final public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
		{
			return param1 == 0 ? param2 : (param3 * (Math.pow(2, 10 * (param1 / param4) - 1))) + param2 - (param3 * 0.00);
		}

		final public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
		{
			if(param1 == 0)
			{
				return param2;
			}
			if(param1 == param4)
			{
				return param2 + param3;
			}
			var _loc_5:int = param1 / (param4 / 2);
			param1 = _loc_5;
			if(_loc_5 < 1)
			{
				return (param3 / 2) * (Math.pow(2, 10 * (param1 - 1))) + param2;
			}
			param1 = param1 - 1;
			return (param3 / 2) * (-(Math.pow(2, -10 * (param1 - 1)))) + 2 + param2;
		}

		public function Exponential()
		{
			super();
		}
	}
}
