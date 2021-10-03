package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_317:int;
      
      private var var_693:Boolean;
      
      private var var_849:String;
      
      private var _ownerName:String;
      
      private var var_1933:int;
      
      private var var_1967:int;
      
      private var var_2132:int;
      
      private var var_1434:String;
      
      private var var_2133:int;
      
      private var var_2130:Boolean;
      
      private var var_681:int;
      
      private var var_1206:int;
      
      private var var_2129:String;
      
      private var var_754:Array;
      
      private var var_2131:RoomThumbnailData;
      
      private var var_1937:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_754 = new Array();
         super();
         this.var_317 = param1.readInteger();
         this.var_693 = param1.readBoolean();
         this.var_849 = param1.readString();
         this._ownerName = param1.readString();
         this.var_1933 = param1.readInteger();
         this.var_1967 = param1.readInteger();
         this.var_2132 = param1.readInteger();
         this.var_1434 = param1.readString();
         this.var_2133 = param1.readInteger();
         this.var_2130 = param1.readBoolean();
         this.var_681 = param1.readInteger();
         this.var_1206 = param1.readInteger();
         this.var_2129 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_754.push(_loc4_);
            _loc3_++;
         }
         this.var_2131 = new RoomThumbnailData(param1);
         this.var_1937 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_754 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_317;
      }
      
      public function get event() : Boolean
      {
         return this.var_693;
      }
      
      public function get roomName() : String
      {
         return this.var_849;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_1933;
      }
      
      public function get userCount() : int
      {
         return this.var_1967;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2132;
      }
      
      public function get description() : String
      {
         return this.var_1434;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2133;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2130;
      }
      
      public function get score() : int
      {
         return this.var_681;
      }
      
      public function get categoryId() : int
      {
         return this.var_1206;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2129;
      }
      
      public function get tags() : Array
      {
         return this.var_754;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2131;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_1937;
      }
   }
}
