package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1837:int;
      
      private var var_2119:String;
      
      private var var_922:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1837 = param1.readInteger();
         this.var_2119 = param1.readString();
         this.var_922 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1837;
      }
      
      public function get figureString() : String
      {
         return this.var_2119;
      }
      
      public function get gender() : String
      {
         return this.var_922;
      }
   }
}
