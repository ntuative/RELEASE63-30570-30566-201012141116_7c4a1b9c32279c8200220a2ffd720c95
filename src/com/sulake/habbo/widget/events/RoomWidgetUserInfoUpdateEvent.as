package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_217:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_229:String = "RWUIUE_PEER";
      
      public static const const_1383:int = 0;
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const const_957:int = 2;
      
      public static const const_1101:int = 3;
      
      public static const const_1458:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1608:String = "";
      
      private var var_2184:int;
      
      private var var_2186:int = 0;
      
      private var var_2183:int = 0;
      
      private var var_614:String = "";
      
      private var var_39:BitmapData = null;
      
      private var var_222:Array;
      
      private var var_1200:int = 0;
      
      private var var_2389:String = "";
      
      private var var_2390:int = 0;
      
      private var var_2391:int = 0;
      
      private var var_1661:Boolean = false;
      
      private var var_1610:String = "";
      
      private var var_2542:Boolean = false;
      
      private var var_2540:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2536:Boolean = false;
      
      private var var_2537:Boolean = false;
      
      private var var_2534:Boolean = false;
      
      private var var_2535:Boolean = false;
      
      private var var_2538:Boolean = false;
      
      private var var_2539:Boolean = false;
      
      private var var_2541:int = 0;
      
      private var var_1659:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_222 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1608 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1608;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2184 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2184;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2186 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2186;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2183 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2183;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_614 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_614;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_39 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_39;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_222 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_222;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1200 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1200;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2389 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2389;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2542 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2542;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2536 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2536;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2537 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2537;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2534 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2534;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2535 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2535;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2538 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2538;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2539 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2539;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2541 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2541;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2540 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2540;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1659 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1659;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2390 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2390;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2391 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2391;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1661 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1661;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1610 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1610;
      }
   }
}
