package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2091:int;
      
      private var var_1201:String;
      
      private var var_2459:int;
      
      private var var_2457:int;
      
      private var _category:int;
      
      private var var_1866:String;
      
      private var var_1354:int;
      
      private var var_2453:int;
      
      private var var_2455:int;
      
      private var var_2456:int;
      
      private var var_2458:int;
      
      private var var_2454:Boolean;
      
      private var var_2686:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2091 = param1;
         this.var_1201 = param2;
         this.var_2459 = param3;
         this.var_2457 = param4;
         this._category = param5;
         this.var_1866 = param6;
         this.var_1354 = param7;
         this.var_2453 = param8;
         this.var_2455 = param9;
         this.var_2456 = param10;
         this.var_2458 = param11;
         this.var_2454 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2091;
      }
      
      public function get itemType() : String
      {
         return this.var_1201;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2459;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2457;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1866;
      }
      
      public function get extra() : int
      {
         return this.var_1354;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2453;
      }
      
      public function get creationDay() : int
      {
         return this.var_2455;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2456;
      }
      
      public function get creationYear() : int
      {
         return this.var_2458;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2454;
      }
      
      public function get songID() : int
      {
         return this.var_1354;
      }
   }
}
