package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_915:String = "select_outfit";
       
      
      private var var_2116:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_915);
         this.var_2116 = param1;
      }
      
      public function get method_10() : int
      {
         return this.var_2116;
      }
   }
}
