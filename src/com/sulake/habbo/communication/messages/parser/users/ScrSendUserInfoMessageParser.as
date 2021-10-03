package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1806:int = 1;
      
      public static const const_1288:int = 2;
       
      
      private var var_833:String;
      
      private var var_2206:int;
      
      private var var_2208:int;
      
      private var var_2207:int;
      
      private var var_2209:int;
      
      private var var_2210:Boolean;
      
      private var var_2041:Boolean;
      
      private var var_2040:int;
      
      private var var_2042:int;
      
      private var var_2212:Boolean;
      
      private var var_2211:int;
      
      private var var_2205:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_833 = param1.readString();
         this.var_2206 = param1.readInteger();
         this.var_2208 = param1.readInteger();
         this.var_2207 = param1.readInteger();
         this.var_2209 = param1.readInteger();
         this.var_2210 = param1.readBoolean();
         this.var_2041 = param1.readBoolean();
         this.var_2040 = param1.readInteger();
         this.var_2042 = param1.readInteger();
         this.var_2212 = param1.readBoolean();
         this.var_2211 = param1.readInteger();
         this.var_2205 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_833;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2206;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2208;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2207;
      }
      
      public function get responseType() : int
      {
         return this.var_2209;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2210;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2041;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2040;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2042;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2212;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2211;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2205;
      }
   }
}
