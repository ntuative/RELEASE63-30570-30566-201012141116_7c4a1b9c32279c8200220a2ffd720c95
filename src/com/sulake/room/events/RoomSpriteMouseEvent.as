package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1790:String = "";
      
      private var var_2449:String = "";
      
      private var var_2095:String = "";
      
      private var var_2447:Number = 0;
      
      private var var_2448:Number = 0;
      
      private var var_2052:Number = 0;
      
      private var var_2050:Number = 0;
      
      private var var_2443:Boolean = false;
      
      private var var_2444:Boolean = false;
      
      private var var_2446:Boolean = false;
      
      private var var_2445:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1790 = param2;
         this.var_2449 = param3;
         this.var_2095 = param4;
         this.var_2447 = param5;
         this.var_2448 = param6;
         this.var_2052 = param7;
         this.var_2050 = param8;
         this.var_2443 = param9;
         this.var_2444 = param10;
         this.var_2446 = param11;
         this.var_2445 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1790;
      }
      
      public function get canvasId() : String
      {
         return this.var_2449;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2095;
      }
      
      public function get screenX() : Number
      {
         return this.var_2447;
      }
      
      public function get screenY() : Number
      {
         return this.var_2448;
      }
      
      public function get localX() : Number
      {
         return this.var_2052;
      }
      
      public function get localY() : Number
      {
         return this.var_2050;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2443;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2444;
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
