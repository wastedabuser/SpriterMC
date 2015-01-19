/** SpriterMC: a Starling implementation for importing skeletal 
 * (and non-skeletal) animations generated with Spriter (http://www.brashmonkey.com/spriter.htm)
 *
 *   @author Sammy Joe Osborne
 *   http://www.sammyjoeosborne.com
 *   https://github.com/SammyJoeOsborne/SpriterMC
 */

/**
 * Licensed under the MIT License
 *
 * Copyright (c) 2013 Sammy Joe Osborne
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 */

package com.sammyjoeosborne.spriter.data 
{
	import com.sammyjoeosborne.spriter.Animation;
	import com.sammyjoeosborne.spriter.models.AnimationData;
	import com.sammyjoeosborne.spriter.models.Folder;
	import starling.events.EventDispatcher;
	/**
	 * A Data class holding all Animations parsed from a Scml file generated by Spriter
	 * 1/15/2013 6:51 PM
	 * @author Sammy Joe Osborne
	 */
	public class ScmlData extends EventDispatcher
	{
		public static var SCML_READY:String = "scml_ready";
		
		private var _scmlXML:XML;
		private var _name:String;
		private var _scmlFilepath:String;
		private var _animationDatas:Vector.<AnimationData> = new Vector.<AnimationData>();
		private var _folders:Vector.<Folder> = new Vector.<Folder>();
		
		private var _isReady:Boolean = false;
		
		public function ScmlData($name:String, $scmlFilepath:String) 
		{
			_name = $name;
			_scmlFilepath = $scmlFilepath;
		}
		
		public function disposeXML():void 
		{
			if(_scmlXML) _scmlXML = null;
		}
		
		public function get name():String { return _name; }
		
		public function get scmlFilepath():String { return _scmlFilepath; }
		
		public function get animationNames():Vector.<String>
		{
			var $names:Vector.<String> = new Vector.<String>();
			var $length:uint = _animationDatas.length;
			for (var i:int = 0; i < $length; i++) 
			{
				$names.push(_animationDatas[i].name)
			}
			
			return $names;
		}
		
		public function get scmlXML():XML { return _scmlXML; }
		public function set scmlXML(value:XML):void { _scmlXML = value; }
		
		public function get folders():Vector.<Folder> { return _folders; }
		public function set folders(value:Vector.<Folder>):void { _folders = value; }
		
		public function get animationDatas():Vector.<AnimationData> { return _animationDatas; }
		public function set animationDatas(value:Vector.<AnimationData>):void { _animationDatas = value; }
		
		public function get isReady():Boolean { return _isReady; }
		public function set isReady(value:Boolean):void { _isReady = value; }
	}

}