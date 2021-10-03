package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_143:int = 1;
      
      public static const const_356:int = 2;
      
      public static const const_1260:int = 3;
       
      
      private var var_1920:int;
      
      private var _state:int;
      
      private var var_1206:int;
      
      private var var_1911:int;
      
      private var var_1423:int;
      
      private var var_1921:int;
      
      private var var_1918:int = 0;
      
      private var var_1922:int;
      
      private var var_1923:String;
      
      private var var_1335:int;
      
      private var var_1715:String;
      
      private var var_1915:int;
      
      private var var_1910:String;
      
      private var _message:String;
      
      private var var_1917:int;
      
      private var var_849:String;
      
      private var var_1527:int;
      
      private var var_1916:String;
      
      private var var_317:int;
      
      private var var_1913:String;
      
      private var var_1912:String;
      
      private var var_1914:int;
      
      private var var_1919:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function get issueId() : int
      {
         return this.var_1920;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1206;
      }
      
      public function get reportedCategoryId() : int
      {
         return this.var_1911;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1423;
      }
      
      public function get priority() : int
      {
         return this.var_1921 + this.var_1918;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_1922;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_1923;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1335;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1715;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_1915;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_1910;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_1917;
      }
      
      public function get roomName() : String
      {
         return this.var_849;
      }
      
      public function get roomType() : int
      {
         return this.var_1527;
      }
      
      public function get flatType() : String
      {
         return this.var_1916;
      }
      
      public function get flatId() : int
      {
         return this.var_317;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_1913;
      }
      
      public function get roomResources() : String
      {
         return this.var_1912;
      }
      
      public function get unitPort() : int
      {
         return this.var_1914;
      }
      
      public function get worldId() : int
      {
         return this.var_1919;
      }
      
      public function set issueId(param1:int) : void
      {
         this.var_1920 = param1;
      }
      
      public function set state(param1:int) : void
      {
         this._state = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1206 = param1;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         this.var_1911 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         this.var_1423 = param1;
      }
      
      public function set priority(param1:int) : void
      {
         this.var_1921 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_1918 = param1;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         this.var_1922 = param1;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         this.var_1923 = param1;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         this.var_1335 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         this.var_1715 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         this.var_1915 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         this.var_1910 = param1;
      }
      
      public function set message(param1:String) : void
      {
         this._message = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         this.var_1917 = param1;
      }
      
      public function set roomName(param1:String) : void
      {
         this.var_849 = param1;
      }
      
      public function set roomType(param1:int) : void
      {
         this.var_1527 = param1;
      }
      
      public function set flatType(param1:String) : void
      {
         this.var_1916 = param1;
      }
      
      public function set flatId(param1:int) : void
      {
         this.var_317 = param1;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         this.var_1913 = param1;
      }
      
      public function set roomResources(param1:String) : void
      {
         this.var_1912 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         this.var_1914 = param1;
      }
      
      public function set worldId(param1:int) : void
      {
         this.var_1919 = param1;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - this.var_1423) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
   }
}
