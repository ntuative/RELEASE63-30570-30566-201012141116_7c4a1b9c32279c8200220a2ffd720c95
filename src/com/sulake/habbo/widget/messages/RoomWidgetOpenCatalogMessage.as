package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_781:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_895:String = "RWOCM_CLUB_MAIN";
       
      
      private var var_2282:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_781);
         this.var_2282 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2282;
      }
   }
}
