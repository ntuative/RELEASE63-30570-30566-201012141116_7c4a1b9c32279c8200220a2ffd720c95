package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1502:int = 0;
      
      private var var_1501:int = 0;
      
      private var var_2518:int = 0;
      
      private var var_2517:Boolean = false;
      
      private var var_2041:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1502 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1501 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2518 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2517 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2041 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1502;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1501;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2518;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2517;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2041;
      }
   }
}
