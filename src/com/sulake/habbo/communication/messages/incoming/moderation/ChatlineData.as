package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2566:int;
      
      private var var_2564:int;
      
      private var var_2563:int;
      
      private var var_2565:String;
      
      private var var_1788:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2566 = param1.readInteger();
         this.var_2564 = param1.readInteger();
         this.var_2563 = param1.readInteger();
         this.var_2565 = param1.readString();
         this.var_1788 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2566;
      }
      
      public function get minute() : int
      {
         return this.var_2564;
      }
      
      public function get chatterId() : int
      {
         return this.var_2563;
      }
      
      public function get chatterName() : String
      {
         return this.var_2565;
      }
      
      public function get msg() : String
      {
         return this.var_1788;
      }
   }
}
