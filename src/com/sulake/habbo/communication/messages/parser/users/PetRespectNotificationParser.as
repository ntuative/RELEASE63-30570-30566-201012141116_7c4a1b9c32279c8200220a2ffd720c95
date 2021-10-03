package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_2017:int;
      
      private var var_2253:int;
      
      private var var_1323:PetData;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1323 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2017 = param1.readInteger();
         this.var_2253 = param1.readInteger();
         this.var_1323 = new PetData(param1);
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return this.var_2253;
      }
      
      public function get respect() : int
      {
         return this.var_2017;
      }
      
      public function get petData() : PetData
      {
         return this.var_1323;
      }
   }
}
