package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1317:Boolean;
      
      private var var_1081:Boolean;
      
      private var var_1318:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1317;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1081;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1318;
      }
      
      public function flush() : Boolean
      {
         this.var_1317 = false;
         this.var_1081 = false;
         this.var_1318 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1317 = param1.readBoolean();
         this.var_1081 = param1.readBoolean();
         this.var_1318 = param1.readBoolean();
         return true;
      }
   }
}
