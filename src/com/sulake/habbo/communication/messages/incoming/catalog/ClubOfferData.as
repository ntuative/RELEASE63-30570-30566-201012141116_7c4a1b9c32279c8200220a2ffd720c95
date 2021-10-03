package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1522:String;
      
      private var var_1521:int;
      
      private var var_2103:Boolean;
      
      private var var_2105:Boolean;
      
      private var var_2106:int;
      
      private var var_2101:int;
      
      private var var_2102:int;
      
      private var var_2107:int;
      
      private var var_2104:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1522 = param1.readString();
         this.var_1521 = param1.readInteger();
         this.var_2103 = param1.readBoolean();
         this.var_2105 = param1.readBoolean();
         this.var_2106 = param1.readInteger();
         this.var_2101 = param1.readInteger();
         this.var_2102 = param1.readInteger();
         this.var_2107 = param1.readInteger();
         this.var_2104 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1522;
      }
      
      public function get price() : int
      {
         return this.var_1521;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2103;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2105;
      }
      
      public function get periods() : int
      {
         return this.var_2106;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2101;
      }
      
      public function get year() : int
      {
         return this.var_2102;
      }
      
      public function get month() : int
      {
         return this.var_2107;
      }
      
      public function get day() : int
      {
         return this.var_2104;
      }
   }
}
