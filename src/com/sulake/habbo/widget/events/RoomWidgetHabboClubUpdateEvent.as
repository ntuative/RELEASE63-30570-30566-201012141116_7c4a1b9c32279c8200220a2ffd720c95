package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_234:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1963:int = 0;
      
      private var var_1962:int = 0;
      
      private var var_1964:int = 0;
      
      private var var_1966:Boolean = false;
      
      private var var_1965:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_234,param6,param7);
         this.var_1963 = param1;
         this.var_1962 = param2;
         this.var_1964 = param3;
         this.var_1966 = param4;
         this.var_1965 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_1963;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_1962;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_1964;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_1966;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1965;
      }
   }
}
