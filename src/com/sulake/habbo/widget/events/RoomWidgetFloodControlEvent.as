package com.sulake.habbo.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_713:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_1526:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_713,false,false);
         this.var_1526 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_1526;
      }
   }
}
