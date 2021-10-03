package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStoreSettingsMessage extends RoomWidgetMessage
   {
      
      public static const const_1511:String = "RWSSM_STORE_SETTINGS";
      
      public static const const_593:String = "RWSSM_STORE_SOUND";
      
      public static const const_574:String = "RWSSM_PREVIEW_SOUND";
       
      
      private var var_469:Number;
      
      public function RoomWidgetStoreSettingsMessage(param1:String)
      {
         super(param1);
      }
      
      public function get volume() : Number
      {
         return this.var_469;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_469 = param1;
      }
   }
}
