package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2059:int;
      
      private var var_2055:int;
      
      private var var_2058:int;
      
      private var _dayOffsets:Array;
      
      private var var_1505:Array;
      
      private var var_1506:Array;
      
      private var var_2057:int;
      
      private var var_2056:int;
      
      public function MarketplaceItemStatsParser()
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2059 = param1.readInteger();
         this.var_2055 = param1.readInteger();
         this.var_2058 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1505 = [];
         this.var_1506 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1505.push(param1.readInteger());
            this.var_1506.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2056 = param1.readInteger();
         this.var_2057 = param1.readInteger();
         return true;
      }
   }
}
