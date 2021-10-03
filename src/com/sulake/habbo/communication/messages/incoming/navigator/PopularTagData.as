package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_1968:String;
      
      private var var_1967:int;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1968 = param1.readString();
         this.var_1967 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return this.var_1968;
      }
      
      public function get userCount() : int
      {
         return this.var_1967;
      }
   }
}
