package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_760:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_1903:String;
      
      private var var_2328:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_760,param3,param4);
         this.var_1903 = param1;
         this.var_2328 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_1903;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2328;
      }
   }
}
