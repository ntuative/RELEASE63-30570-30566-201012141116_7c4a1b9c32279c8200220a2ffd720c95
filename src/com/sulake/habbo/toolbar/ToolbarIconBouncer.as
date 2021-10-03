package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2407:Number;
      
      private var var_2406:Number;
      
      private var var_881:Number;
      
      private var var_882:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2407 = param1;
         this.var_2406 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_881 = param1;
         this.var_882 = 0;
      }
      
      public function update() : void
      {
         this.var_881 += this.var_2406;
         this.var_882 += this.var_881;
         if(this.var_882 > 0)
         {
            this.var_882 = 0;
            this.var_881 = this.var_2407 * -1 * this.var_881;
         }
      }
      
      public function get location() : Number
      {
         return this.var_882;
      }
   }
}
