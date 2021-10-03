package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1405:Boolean = false;
      
      private var var_1521:int;
      
      private var var_1798:Array;
      
      private var var_740:Array;
      
      private var var_741:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1405 = _loc2_.isWrappingEnabled;
         this.var_1521 = _loc2_.wrappingPrice;
         this.var_1798 = _loc2_.stuffTypes;
         this.var_740 = _loc2_.boxTypes;
         this.var_741 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1405;
      }
      
      public function get price() : int
      {
         return this.var_1521;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1798;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_740;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_741;
      }
   }
}
