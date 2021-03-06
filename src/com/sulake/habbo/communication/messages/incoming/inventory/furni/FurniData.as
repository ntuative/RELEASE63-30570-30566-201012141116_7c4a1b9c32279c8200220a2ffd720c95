package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2070:int;
      
      private var var_1201:String;
      
      private var _objId:int;
      
      private var var_1709:int;
      
      private var _category:int;
      
      private var var_1866:String;
      
      private var var_2431:Boolean;
      
      private var var_2432:Boolean;
      
      private var var_2433:Boolean;
      
      private var var_2281:Boolean;
      
      private var var_2087:int;
      
      private var var_1354:int;
      
      private var var_1837:String = "";
      
      private var var_2019:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2070 = param1;
         this.var_1201 = param2;
         this._objId = param3;
         this.var_1709 = param4;
         this._category = param5;
         this.var_1866 = param6;
         this.var_2431 = param7;
         this.var_2432 = param8;
         this.var_2433 = param9;
         this.var_2281 = param10;
         this.var_2087 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1837 = param1;
         this.var_1354 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2070;
      }
      
      public function get itemType() : String
      {
         return this.var_1201;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1709;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1866;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2431;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2432;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2433;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2281;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2087;
      }
      
      public function get slotId() : String
      {
         return this.var_1837;
      }
      
      public function get songId() : int
      {
         return this.var_2019;
      }
      
      public function get extra() : int
      {
         return this.var_1354;
      }
   }
}
