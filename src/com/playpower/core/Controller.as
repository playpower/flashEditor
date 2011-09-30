﻿package com.playpower.core{	import com.carlcalderon.arthropod.Debug;		import flash.utils.Dictionary;   	public class Controller 	{				private static var instance					:Controller;		private static var allowInstantiation		:Boolean;				private static var _XMLDict					:Dictionary;		private static var _path					:String;		private static var _nesArr					:Array;		private static var _gridEnabled				:Boolean;		private static var _gridAlpha				:Number;		private static var _tileDraw				:Boolean = true;		private static var _palDraw					:Boolean = true;		private static var _chrPage					:Number = 0;		private static var _selectedTile			:Number = 0;		private static var _selectedTile1			:Number = 0;		private static var _selectedTile2			:Number = 0;		private static var _selectedTile3			:Number = 0;		private static var _paletteTileNum			:Number = 0;		private static var _curAttr					:int;		private static var _activeAttr				:int;		private static var _curKey					:int = 0;		private static var _curClr					:String = "00";		private static var _tileBlock				:Array;					public static function getInstance():Controller 		{			if (instance == null) 			{				allowInstantiation = true;				instance = new Controller();				allowInstantiation = false;								_XMLDict = new Dictionary();				_nesArr = new Array();				_tileBlock = new Array();			};						return instance;		};      		public function Controller():void 		{			if (!allowInstantiation) 			{				throw new Error("Error: Instantiation failed: Use Controller.getInstance() instead of new.");			};		};				public function get path():String { return _path; };		public function set path(path:String):void { _path = path; }; 		public function get configXML():XML { return _XMLDict["config"]; };		public function set configXML($xml:XML):void { _XMLDict["config"] = $xml; };		public function get nesArr():Array { return _nesArr; };		public function set nesArr(arr:Array):void { _nesArr = arr; };		public function get gridEnabled():Boolean { return _gridEnabled; };		public function set gridEnabled(boo:Boolean):void { _gridEnabled = boo; };		public function get gridAlpha():Number { return _gridAlpha; };		public function set gridAlpha(n:Number):void { _gridAlpha = n; };		public function get tileDraw():Boolean { return _tileDraw; };		public function set tileDraw(b:Boolean):void { _tileDraw = b; };		public function get palDraw():Boolean { return _palDraw; };		public function set palDraw(b:Boolean):void { _palDraw = b; };		public function get chrPage():Number { return _chrPage; };		public function set chrPage(n:Number):void { _chrPage = n; };		public function get selectedTile():Number { return _selectedTile; };		public function set selectedTile(n:Number):void { _selectedTile = n; };		public function get selectedTile1():Number { return _selectedTile1; };		public function set selectedTile1(n:Number):void { _selectedTile1 = n; };		public function get selectedTile2():Number { return _selectedTile2; };		public function set selectedTile2(n:Number):void { _selectedTile2 = n; };		public function get selectedTile3():Number { return _selectedTile3; };		public function set selectedTile3(n:Number):void { _selectedTile3 = n; };		public function get paletteTileNum():Number { return _paletteTileNum; };		public function set paletteTileNum(n:Number):void { _paletteTileNum = n; };		public function get activeAttr():Number { return _activeAttr; };		public function set activeAttr(n:Number):void { _activeAttr = n; };		public function get curAttr():Number { return _curAttr; };		public function set curAttr(n:Number):void { _curAttr = n; trace("just set curAttr to : " + _curAttr); };		public function get curKey():Number { return _curKey; };		public function set curKey(n:Number):void { _curKey = n; };	}}