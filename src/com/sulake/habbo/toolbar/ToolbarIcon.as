package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_431:ToolbarIconGroup;
      
      private var var_650:String;
      
      private var var_1217:String;
      
      private var var_2629:String;
      
      private var var_1127:Number;
      
      private var var_651:Array;
      
      private var var_962:Array;
      
      private var _region:IRegionWindow;
      
      private var _icon:IBitmapWrapperWindow;
      
      private var var_299:ITextWindow;
      
      private var _events:IEventDispatcher;
      
      private var _bitmapData:BitmapData;
      
      private var var_1509:Array;
      
      private var var_963:Array;
      
      private var var_1216:String = "-1";
      
      private var var_965:String = "-1";
      
      private var var_263:ToolbarBarMenuAnimator;
      
      private var var_964:ToolbarIconBouncer;
      
      private var var_525:ToolbarIconAnimator;
      
      private var var_966:Boolean = false;
      
      private var _state:String = "-1";
      
      private var _x:Number = 0;
      
      private var var_154:Number = 0;
      
      private var var_798:Timer;
      
      private var var_1215:Timer;
      
      private var var_2064:int;
      
      private var var_2065:int;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         this.var_651 = new Array();
         this.var_962 = new Array();
         this.var_964 = new ToolbarIconBouncer(0.8,1);
         super();
         this.var_431 = param1;
         this._windowManager = param2;
         this._assetLibrary = param3;
         this.var_650 = param4;
         this._events = param5;
         this.var_263 = param6;
         this.var_1215 = new Timer(40,40);
         this.var_1215.addEventListener(TimerEvent.TIMER,this.updateBouncer);
         var _loc7_:XmlAsset = this._assetLibrary.getAssetByName("toolbar_icon_xml") as XmlAsset;
         this._region = param2.buildFromXML(_loc7_.content as XML) as IRegionWindow;
         this._region.procedure = this.onMouseEvent;
         this._region.visible = false;
         this._icon = this._region.findChildByName("icon") as IBitmapWrapperWindow;
         this._icon.addEventListener(WindowEvent.const_44,this.onWindowResized);
         this.var_299 = this._region.findChildByName("label") as ITextWindow;
      }
      
      public function dispose() : void
      {
         if(this._icon != null)
         {
            this._icon.dispose();
            this._icon = null;
         }
         if(this.var_299 != null)
         {
            this.var_299.dispose();
            this.var_299 = null;
         }
         if(this._region != null)
         {
            this._region.dispose();
            this._region = null;
         }
         this.var_651 = null;
         this.var_962 = null;
         this.exists = false;
         this._windowManager = null;
         this._events = null;
         this.var_263 = null;
         this.var_525 = null;
         this._bitmapData = null;
      }
      
      public function get iconId() : String
      {
         return this.var_650;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return this.var_431;
      }
      
      public function set exists(param1:Boolean) : void
      {
         this.var_966 = param1;
         if(this._region != null)
         {
            this._region.visible = this.var_966;
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         this.var_1509 = new Array();
         this.var_963 = new Array();
         this.var_1217 = param1.@id;
         this.var_2064 = int(param1.@window_offset_from_icon);
         this.var_2065 = int(param1.@window_margin);
         this.var_2629 = param1.@label;
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               this.var_1216 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               this.var_965 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               this.var_963.push(_loc5_.id);
               this.var_1509.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(this.var_1216 == "-1")
                  {
                     this.var_1216 = _loc5_.id;
                  }
                  if(this.var_965 == "-1")
                  {
                     this.var_965 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         this._state = this.var_965;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         this.exists = true;
         this._bitmapData = param1;
         this.setLabel();
         this.setAnimator();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         this.setLabel();
         this.exists = param1;
         this.setAnimator();
      }
      
      private function setAnimator() : void
      {
         if(this.var_798 != null)
         {
            this.var_798.stop();
            this.var_798 = null;
         }
         var _loc1_:StateItem = this.getCurrentStateObject();
         if(_loc1_ != null && this.var_966)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            this.var_525 = new ToolbarIconAnimator(_loc1_,this._assetLibrary,this._icon,this._x,this.var_154,this._bitmapData);
            if(this.var_525.frameCount > 0)
            {
               this.var_798 = new Timer(_loc1_.timer);
               this.var_798.addEventListener(TimerEvent.TIMER,this.updateAnimator);
               this.var_798.start();
            }
            if(_loc1_.bounce)
            {
               this.var_964.reset(-7);
               this.var_1215.reset();
               this.var_1215.start();
            }
         }
         else
         {
            this.var_525 = null;
            this._icon.bitmap = null;
         }
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(this.var_651.indexOf(param1) < 0)
         {
            this.var_651.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            this.var_962.push(_loc4_);
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return this.var_651.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!this.docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = this.var_962[this.var_651.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(this.var_263 != null)
         {
            this.var_263.animateWindowIn(this,param1,param2,this.var_650,param3,param4,this.getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(this.var_263 != null)
         {
            this.var_263.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(this.var_263 != null)
         {
            this.var_263.positionWindow(this,param1,param2,this.var_650,param3,this.getMenuYieldList(param1));
         }
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(this.var_263 != null)
         {
            this.var_263.hideWindow(param1,param2,this.var_650,param3);
         }
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return this.getStateObject(this._state);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return this.var_1509[this.var_963.indexOf(param1)];
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!this.docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = this.var_962[this.var_651.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function changePosition(param1:Number) : void
      {
         this.var_1127 = param1;
         this.updateRegion();
      }
      
      public function set state(param1:String) : void
      {
         this._state = param1;
         this.exists = true;
         this.setAnimator();
         this.setTooltip();
         this.setLabel();
      }
      
      private function setTooltip() : void
      {
         if(this._region == null)
         {
            return;
         }
         var _loc1_:StateItem = this.getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            this._region.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            this._region.toolTipCaption = "${toolbar.icon.tooltip." + this.var_1217.toLowerCase() + "}";
         }
         this._region.toolTipDelay = 100;
      }
      
      private function setLabel() : void
      {
         var _loc1_:StateItem = this.getCurrentStateObject();
         if(_loc1_ != null && _loc1_.label != null)
         {
            this.var_299.caption = "${toolbar.icon.label." + _loc1_.label + "}";
         }
         else
         {
            this.var_299.caption = "${toolbar.icon.label." + this.var_1217.toLowerCase() + "}";
         }
         this.updateRegion();
      }
      
      public function get window() : IWindow
      {
         return this._region;
      }
      
      public function get exists() : Boolean
      {
         return this.var_966;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_154;
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return this.var_2064;
      }
      
      public function get windowMargin() : Number
      {
         return this.var_2065 + this.var_431.windowMargin;
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(this.var_525 != null && this._icon != null)
         {
            this.var_525.update(this._icon);
            if(this.var_525.hasNextState())
            {
               this.state = this.var_525.nextState;
            }
         }
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(this.var_964 != null && this._icon != null)
         {
            this.var_964.update();
            this._icon.y = this.var_964.location;
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!this.var_966)
         {
            return;
         }
         var _loc3_:StateItem = this.getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(this.var_263)
               {
                  this.var_263.repositionWindow(this.var_650,true);
               }
               if(this._events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_39);
                  _loc4_.iconId = this.var_650;
                  _loc4_.iconName = this.var_1217;
                  this._events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(this.var_963.length > 0)
               {
                  if(_loc3_.hasStateOver)
                  {
                     this.state = _loc3_.stateOver;
                  }
                  else
                  {
                     this.state = this.var_1216;
                  }
               }
               break;
            case WindowMouseEvent.const_25:
               if(this.var_963.length > 0)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     this.state = _loc3_.defaultState;
                  }
                  else
                  {
                     this.state = this.var_965;
                  }
               }
         }
      }
      
      private function updateRegion() : void
      {
         if(this._region == null || this._icon == null)
         {
            return;
         }
         this.var_299.y = this._icon.height;
         this._region.width = Math.max(this._icon.width,this.var_299.width);
         this._region.height = this._icon.height + this.var_299.height;
         this._icon.x = (this._region.width - this._icon.width) / 2;
         this.var_299.x = (this._region.width - this.var_299.width) / 2;
         var _loc1_:Boolean = this.var_431.orientation == "LEFT" || this.var_431.orientation == "RIGHT";
         if(_loc1_)
         {
            this._x = (this.var_431.toolbarUsableWidth - this._region.width) / 2;
            this.var_154 = this.var_1127 + (this.var_431.iconSize - this._region.height) / 2;
         }
         else
         {
            this._x = this.var_1127 + (this.var_431.iconSize - this._region.width) / 2;
            this.var_154 = (this.var_431.toolbarUsableWidth - this._region.height) / 2;
         }
         this._region.x = this._x;
         this._region.y = this.var_154;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         this.updateRegion();
      }
   }
}
