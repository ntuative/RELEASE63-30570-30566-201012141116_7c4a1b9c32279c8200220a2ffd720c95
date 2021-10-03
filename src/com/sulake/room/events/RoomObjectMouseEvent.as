package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_220:String = "ROE_MOUSE_CLICK";
      
      public static const const_1625:String = "ROE_MOUSE_ENTER";
      
      public static const const_482:String = "ROE_MOUSE_MOVE";
      
      public static const const_1742:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1594:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_509:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1790:String = "";
      
      private var var_2444:Boolean;
      
      private var var_2443:Boolean;
      
      private var var_2446:Boolean;
      
      private var var_2445:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1790 = param2;
         this.var_2444 = param5;
         this.var_2443 = param6;
         this.var_2446 = param7;
         this.var_2445 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1790;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2444;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2443;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2446;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2445;
      }
   }
}
