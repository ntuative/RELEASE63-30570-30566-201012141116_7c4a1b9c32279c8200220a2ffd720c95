package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ToolbarView
   {
       
      
      private var _window:IWindowContainer;
      
      private var _events:IEventDispatcher;
      
      private var var_263:ToolbarBarMenuAnimator;
      
      private var var_2631:Array;
      
      private var var_224:Array;
      
      private var var_528:Array;
      
      private var var_194:IWindowContainer;
      
      private var var_1225:Boolean = false;
      
      private var var_437:String = "LEFT";
      
      private var var_138:Number = 50;
      
      private var var_971:Boolean = true;
      
      private var var_972:Number = 1;
      
      private var var_1224:Number = 0;
      
      private var var_1519:Number = 15;
      
      private var var_1520:Number = 5;
      
      public function ToolbarView(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IEventDispatcher)
      {
         this.var_2631 = new Array();
         this.var_224 = new Array();
         this.var_528 = new Array();
         super();
         this._events = param3;
         var _loc4_:XmlAsset = param2.getAssetByName("toolbar_window_xml") as XmlAsset;
         this._window = param1.buildFromXML(_loc4_.content as XML,2) as IWindowContainer;
         if(this._window == null)
         {
            throw new Error("Failed to construct window from XML!");
         }
         this._window.tags.push("habbo_toolbar");
         this.var_138 = this._window.width;
         this.var_194 = param1.createWindow("extrabar_container_window","",HabboWindowType.const_54,HabboWindowStyle.const_928,0 | 0,new Rectangle(0,0,1,1),null,0,0) as IWindowContainer;
         this._window.tags.push("habbo_extrabar");
         var _loc5_:XmlAsset = param2.getAssetByName("toolbar_xml") as XmlAsset;
         if(_loc5_ == null)
         {
            return;
         }
         var _loc6_:XML = _loc5_.content as XML;
         this.var_971 = String(_loc6_.relocate_by_drag.@state) == "true";
         if(this.var_971)
         {
            this._window.addEventListener(WindowMouseEvent.const_38,this.onToolbarMouseDown);
            this._window.context.getDesktopWindow().getDisplayObject().stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onStageMouseMove);
            this._window.context.getDesktopWindow().getDisplayObject().stage.addEventListener(MouseEvent.MOUSE_UP,this.onStageMouseUp);
         }
         this._window.context.getDesktopWindow().addEventListener(WindowEvent.const_44,this.onRoomViewResized);
         this.var_972 = _loc6_.toolbar.@margin_top;
         this.var_1224 = _loc6_.toolbar.@margin_bottom;
         this.var_1519 = _loc6_.toolbar.@min_group_margin;
         this.var_1520 = _loc6_.toolbar.@margin_to_extrabar;
         this.var_263 = new ToolbarBarMenuAnimator(param1,this);
         var _loc7_:XMLList = XMLList(_loc6_.toolbar).children();
         var _loc8_:XMLList = XMLList(_loc6_.extras).children();
         this.createGroupsFromXmlList(_loc7_,this.var_224,param1,param2,this._window,this.var_263);
         this.createGroupsFromXmlList(_loc8_,this.var_528,param1,param2,this.var_194,this.var_263);
         this.alignWindows();
      }
      
      private function createGroupsFromXmlList(param1:XMLList, param2:Array, param3:IHabboWindowManager, param4:IAssetLibrary, param5:IWindowContainer, param6:ToolbarBarMenuAnimator) : void
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:int = 0;
         while(_loc10_ < param1.length())
         {
            _loc7_ = param1[_loc10_];
            _loc8_ = _loc7_.children();
            _loc9_ = new ToolbarIconGroup(param3,param4,_loc10_,this._events,param5,param6,this.var_138);
            _loc9_.defaultIconSize = _loc7_.@icon_size;
            _loc9_.iconSize = _loc9_.defaultIconSize;
            _loc9_.orientation = _loc7_.@default_orientation;
            _loc9_.windowMargin = _loc7_.@window_margin;
            _loc9_.windowBottomMargin = _loc7_.@window_bottom_margin;
            if(_loc9_.addContentIndexFromXmlList(_loc7_))
            {
               param2.push(_loc9_);
            }
            _loc10_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         while(this.var_224.length > 0)
         {
            _loc1_ = this.var_224.shift();
            _loc1_.dispose();
            _loc1_ = null;
         }
         while(this.var_528.length > 0)
         {
            _loc1_ = this.var_528.shift();
            _loc1_.dispose();
            _loc1_ = null;
         }
         if(this._window != null)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_194 != null)
         {
            this.var_194.dispose();
            this.var_194 = null;
         }
      }
      
      public function get barSize() : Number
      {
         return this.var_138;
      }
      
      public function get orientation() : String
      {
         return this.var_437;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Point = null) : void
      {
         var _loc4_:ToolbarIcon = this.getIconByMenuId(param1);
         if(_loc4_ != null)
         {
            _loc4_.animateWindowIn(param1,param2,this.var_138,this.var_437,param3);
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer) : void
      {
         var _loc3_:ToolbarIcon = this.getIconByMenuId(param1);
         if(_loc3_ != null)
         {
            _loc3_.animateWindowOut(param1,param2,this.var_437);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer) : void
      {
         this.alignWindows();
         var _loc3_:ToolbarIcon = this.getIconByMenuId(param1);
         if(_loc3_ != null)
         {
            _loc3_.positionWindow(param1,param2,this.var_138,this.var_437);
         }
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer) : void
      {
         this.alignWindows();
         var _loc3_:ToolbarIcon = this.getIconByMenuId(param1);
         if(_loc3_ != null)
         {
            _loc3_.hideWindow(param1,param2,this.var_138,this.var_437);
         }
      }
      
      public function setIcon(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:ToolbarIconGroup = this.getGroupForIcon(param1);
         if(_loc3_ != null)
         {
            _loc3_.setIcon(param1,param2);
            this.alignWindows();
         }
      }
      
      public function setIconBitmap(param1:String, param2:BitmapData) : void
      {
         var _loc3_:ToolbarIconGroup = this.getGroupForIcon(param1);
         if(_loc3_ != null)
         {
            _loc3_.setContent(param1,param2);
            this.alignWindows();
         }
      }
      
      public function setIconState(param1:String, param2:String) : void
      {
         var _loc3_:ToolbarIcon = this.getIconById(param1);
         if(_loc3_ != null)
         {
            _loc3_.state = param2;
            this.alignWindows();
         }
      }
      
      public function removeIcon(param1:String) : void
      {
         var _loc2_:ToolbarIconGroup = this.getGroupForIcon(param1);
         if(_loc2_ != null)
         {
            _loc2_.removeContent(param1);
            this.alignWindows();
         }
      }
      
      public function getIconLoc(param1:String) : Point
      {
         var _loc2_:ToolbarIcon = this.getIconById(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new Point(_loc2_.x,_loc2_.y);
      }
      
      private function onRoomViewResized(param1:WindowEvent) : void
      {
         this.alignWindows();
      }
      
      private function getGroupForIcon(param1:String) : ToolbarIconGroup
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < this.var_224.length)
         {
            _loc2_ = this.var_224[_loc3_];
            if(_loc2_.acceptsIcon(param1))
            {
               return _loc2_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this.var_528.length)
         {
            _loc2_ = this.var_528[_loc3_];
            if(_loc2_.acceptsIcon(param1))
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      private function getIconById(param1:String) : ToolbarIcon
      {
         var _loc2_:ToolbarIconGroup = this.getGroupForIcon(param1);
         if(_loc2_ != null)
         {
            return _loc2_.getIconById(param1);
         }
         return null;
      }
      
      public function getIconByMenuId(param1:String) : ToolbarIcon
      {
         var _loc2_:ToolbarIconGroup = this.getGroupForIcon(param1);
         if(_loc2_ != null)
         {
            return _loc2_.getIconByMenuId(param1);
         }
         return null;
      }
      
      private function alignWindows() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         if(this._window == null || this.var_194 == null)
         {
            return;
         }
         var _loc1_:IDesktopWindow = this._window.context.getDesktopWindow();
         if(_loc1_ == null)
         {
            return;
         }
         this._window.visible = true;
         switch(this.orientation)
         {
            case "LEFT":
               this._window.height = _loc1_.height;
               this._window.x = 0;
               this._window.y = 0;
               this.var_194.x = this.var_138 + this.var_1520;
               this.var_194.y = 0;
               _loc4_ = this._window.height;
               break;
            case "RIGHT":
               this._window.width = this.var_138;
               this._window.height = _loc1_.height;
               this._window.x = _loc1_.width - this.var_138;
               this._window.y = 0;
               this.var_194.x = 0;
               this.var_194.y = 0;
               _loc4_ = this._window.height;
               break;
            case "TOP":
               this._window.width = _loc1_.width;
               this._window.height = this.var_138;
               this._window.x = 0;
               this._window.y = 0;
               this.var_194.x = 0;
               this.var_194.y = this.var_138 + this.var_1520;
               _loc4_ = this._window.width;
               break;
            case "BOTTOM":
               this._window.width = _loc1_.width;
               this._window.height = this.var_138;
               this._window.x = 0;
               this._window.y = _loc1_.height - this.var_138;
               this.var_194.x = 0;
               this.var_194.y = 0;
               _loc4_ = this._window.width;
         }
         _loc4_ -= this.var_1224;
         _loc4_ -= this.var_972;
         var _loc5_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < this.var_224.length)
         {
            _loc3_ = this.var_224[_loc2_];
            _loc5_ += _loc3_.iconCount * _loc3_.defaultIconSize;
            _loc2_++;
         }
         var _loc6_:* = 0;
         var _loc7_:Number = this.var_972;
         var _loc8_:* = 1;
         if(_loc5_ > _loc4_)
         {
            _loc8_ = Number(_loc4_ / _loc5_);
         }
         else
         {
            _loc8_ = Number(Math.max(1,_loc4_ / (_loc5_ / 0.7)));
            if(this.var_224.length > 1)
            {
               if(this.orientation == "LEFT" || this.orientation == "RIGHT")
               {
                  _loc6_ = Number(Math.max(this.var_1519,(this._window.height - _loc5_ * _loc8_ - this.var_972 - this.var_1224) / (this.var_224.length - 1)));
               }
               else
               {
                  _loc6_ = Number(Math.max(this.var_1519,(this._window.width - _loc5_ * _loc8_ - this.var_972 - this.var_1224) / (this.var_224.length - 1)));
               }
            }
         }
         _loc2_ = 0;
         while(_loc2_ < this.var_224.length)
         {
            _loc3_ = this.var_224[_loc2_];
            if(_loc3_ != null)
            {
               _loc3_.orientation = this.var_437;
               _loc3_.iconSize = _loc3_.defaultIconSize * _loc8_;
               _loc3_.position = _loc7_;
               _loc7_ += _loc3_.size + _loc6_;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.var_528.length)
         {
            _loc3_ = this.var_528[_loc2_];
            if(_loc3_ != null)
            {
               _loc3_.position = _loc2_;
            }
            _loc2_++;
         }
         if(this.var_263 != null)
         {
            this.var_263.refresh();
         }
      }
      
      private function onToolbarMouseDown(param1:WindowEvent) : void
      {
         if(this.var_971)
         {
            this.var_1225 = true;
         }
      }
      
      private function onStageMouseMove(param1:MouseEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this.var_971 && this.var_1225)
         {
            _loc2_ = this.getTargetOrientationFromXY(param1.stageX,param1.stageY);
            if(_loc2_ != null && _loc2_ != this.var_437)
            {
               this.var_437 = _loc2_;
               this.alignWindows();
               if(this._events != null)
               {
                  _loc3_ = new HabboToolbarEvent(HabboToolbarEvent.TOOLBAR_ORIENTATION);
                  _loc3_.orientation = this.var_437;
                  this._events.dispatchEvent(_loc3_);
               }
            }
         }
      }
      
      private function onStageMouseUp(param1:MouseEvent) : void
      {
         if(this.var_971 && this.var_1225)
         {
            this.var_1225 = false;
         }
      }
      
      private function getTargetOrientationFromXY(param1:Number, param2:Number) : String
      {
         var _loc3_:IDesktopWindow = this._window.context.getDesktopWindow();
         if(_loc3_ == null)
         {
            return null;
         }
         if(param1 <= this.var_138)
         {
            return "LEFT";
         }
         if(param1 >= _loc3_.width - this.var_138)
         {
            return "RIGHT";
         }
         if(param2 <= this.var_138)
         {
            return "TOP";
         }
         if(param2 >= _loc3_.height - this.var_138)
         {
            return "BOTTOM";
         }
         return null;
      }
   }
}
