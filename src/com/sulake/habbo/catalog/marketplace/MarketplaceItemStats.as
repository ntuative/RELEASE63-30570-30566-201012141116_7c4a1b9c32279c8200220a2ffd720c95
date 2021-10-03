package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2059:int;
      
      private var var_2055:int;
      
      private var var_2058:int;
      
      private var _dayOffsets:Array;
      
      private var var_1505:Array;
      
      private var var_1506:Array;
      
      private var var_2057:int;
      
      private var var_2056:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2059;
      }
      
      public function get offerCount() : int
      {
         return this.var_2055;
      }
      
      public function get historyLength() : int
      {
         return this.var_2058;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1505;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1506;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2057;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2056;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2059 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2055 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2058 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1505 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1506 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2057 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2056 = param1;
      }
   }
}
