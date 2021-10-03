package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1488:int;
      
      private var var_1973:String;
      
      private var var_1267:int;
      
      private var var_614:String;
      
      private var var_1240:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1488 = param1.readInteger();
         this.var_1973 = param1.readString();
         this.var_1267 = param1.readInteger();
         this.var_614 = param1.readString();
         this.var_1240 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1488;
      }
      
      public function get petName() : String
      {
         return this.var_1973;
      }
      
      public function get level() : int
      {
         return this.var_1267;
      }
      
      public function get figure() : String
      {
         return this.var_614;
      }
      
      public function get petType() : int
      {
         return this.var_1240;
      }
   }
}
