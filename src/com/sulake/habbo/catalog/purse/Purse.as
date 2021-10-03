package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_398:int = 0;
       
      
      private var var_2039:int = 0;
      
      private var var_1214:Dictionary;
      
      private var var_1502:int = 0;
      
      private var var_1501:int = 0;
      
      private var var_2041:Boolean = false;
      
      private var var_2040:int = 0;
      
      private var var_2042:int = 0;
      
      public function Purse()
      {
         this.var_1214 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2039;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2039 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1502;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1502 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1501;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1501 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1502 > 0 || this.var_1501 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2041;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2041 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2040;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2040 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2042;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2042 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1214;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1214 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1214[param1];
      }
   }
}
