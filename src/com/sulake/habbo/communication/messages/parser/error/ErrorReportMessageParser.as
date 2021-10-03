package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1458:int;
      
      private var var_1793:int;
      
      private var var_1794:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1793 = param1.readInteger();
         this.var_1458 = param1.readInteger();
         this.var_1794 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1458 = 0;
         this.var_1793 = 0;
         this.var_1794 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1458;
      }
      
      public function get messageId() : int
      {
         return this.var_1793;
      }
      
      public function get timestamp() : String
      {
         return this.var_1794;
      }
   }
}
