package com.sulake.habbo.widget.messages
{
   import flash.display.BitmapData;
   
   public class RoomWidgetSetToolbarIconMessage extends RoomWidgetMessage
   {
      
      public static const const_986:String = "RWCM_MESSAGE_SET_TOOLBAR_ICON";
      
      public static const const_1385:String = "me_menu";
       
      
      private var var_2339:String;
      
      private var _icon:BitmapData;
      
      public function RoomWidgetSetToolbarIconMessage(param1:String, param2:BitmapData)
      {
         super(const_986);
         this.var_2339 = param1;
         this._icon = param2;
      }
      
      public function get widgetType() : String
      {
         return this.var_2339;
      }
      
      public function get icon() : BitmapData
      {
         return this._icon;
      }
   }
}
