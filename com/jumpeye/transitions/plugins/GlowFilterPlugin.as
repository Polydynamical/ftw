package com.jumpeye.transitions.plugins
{
	import com.jumpeye.transitions.*;
	import flash.filters.*;

	public class GlowFilterPlugin extends FilterPlugin
	{
		public static const VERSION:Number = 1;
		public static const API:Number = 1;

		public function GlowFilterPlugin()
		{
			super();
			this.propName = "glowFilter";
			this.overwriteProps = ["glowFilter"];
		}

		override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
		{
			_target = param1;
			_type = GlowFilter;
			param2.quality;
			initFilter(param2, new GlowFilter(16777215, 0, 0, 0, 1, 2, param2.inner, param2.knockout));
			return true;
		}
	}
}
