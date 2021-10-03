package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2034:Number = 0.0;
      
      private var var_2035:Number = 0.0;
      
      private var var_2032:Number = 0.0;
      
      private var var_2033:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2034 = param1;
         this.var_2035 = param2;
         this.var_2032 = param3;
         this.var_2033 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2034;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2035;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2032;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2033;
      }
   }
}
