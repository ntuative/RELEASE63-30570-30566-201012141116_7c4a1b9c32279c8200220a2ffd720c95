package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_667:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         this.var_667 = new ByteArray();
         this.var_667.writeShort(param1);
         this.var_667.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         this.var_667.position = 0;
         if(this.var_667.bytesAvailable)
         {
            _loc1_ = this.var_667.readShort();
            this.var_667.position = 0;
         }
         return _loc1_;
      }
   }
}
