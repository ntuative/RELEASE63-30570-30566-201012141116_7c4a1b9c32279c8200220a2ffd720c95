package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_777:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1106:String = "inventory_effects";
      
      public static const const_911:String = "inventory_badges";
      
      public static const const_1268:String = "inventory_clothes";
      
      public static const const_1390:String = "inventory_furniture";
       
      
      private var var_2096:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_777);
         this.var_2096 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2096;
      }
   }
}
