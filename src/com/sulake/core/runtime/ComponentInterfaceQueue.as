package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1432:IID;
      
      private var var_700:Boolean;
      
      private var var_942:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1432 = param1;
         this.var_942 = new Array();
         this.var_700 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1432;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_700;
      }
      
      public function get receivers() : Array
      {
         return this.var_942;
      }
      
      public function dispose() : void
      {
         if(!this.var_700)
         {
            this.var_700 = true;
            this.var_1432 = null;
            while(this.var_942.length > 0)
            {
               this.var_942.pop();
            }
            this.var_942 = null;
         }
      }
   }
}
