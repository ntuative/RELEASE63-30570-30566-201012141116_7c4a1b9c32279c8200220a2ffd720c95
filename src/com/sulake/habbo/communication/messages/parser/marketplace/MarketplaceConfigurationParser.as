package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1405:Boolean;
      
      private var var_2200:int;
      
      private var var_1569:int;
      
      private var var_1568:int;
      
      private var var_2202:int;
      
      private var var_2197:int;
      
      private var var_2201:int;
      
      private var var_2199:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1405;
      }
      
      public function get commission() : int
      {
         return this.var_2200;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1569;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1568;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2197;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2202;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2201;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2199;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1405 = param1.readBoolean();
         this.var_2200 = param1.readInteger();
         this.var_1569 = param1.readInteger();
         this.var_1568 = param1.readInteger();
         this.var_2197 = param1.readInteger();
         this.var_2202 = param1.readInteger();
         this.var_2201 = param1.readInteger();
         this.var_2199 = param1.readInteger();
         return true;
      }
   }
}
