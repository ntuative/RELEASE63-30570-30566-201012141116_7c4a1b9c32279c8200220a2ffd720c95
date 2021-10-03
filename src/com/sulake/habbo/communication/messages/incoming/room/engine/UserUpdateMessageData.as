package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_154:Number = 0;
      
      private var var_155:Number = 0;
      
      private var var_1988:Number = 0;
      
      private var var_1985:Number = 0;
      
      private var var_1987:Number = 0;
      
      private var var_1984:Number = 0;
      
      private var var_244:int = 0;
      
      private var var_1989:int = 0;
      
      private var var_287:Array;
      
      private var var_1986:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_287 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_154 = param3;
         this.var_155 = param4;
         this.var_1988 = param5;
         this.var_244 = param6;
         this.var_1989 = param7;
         this.var_1985 = param8;
         this.var_1987 = param9;
         this.var_1984 = param10;
         this.var_1986 = param11;
         this.var_287 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_154;
      }
      
      public function get z() : Number
      {
         return this.var_155;
      }
      
      public function get localZ() : Number
      {
         return this.var_1988;
      }
      
      public function get targetX() : Number
      {
         return this.var_1985;
      }
      
      public function get targetY() : Number
      {
         return this.var_1987;
      }
      
      public function get targetZ() : Number
      {
         return this.var_1984;
      }
      
      public function get dir() : int
      {
         return this.var_244;
      }
      
      public function get dirHead() : int
      {
         return this.var_1989;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_1986;
      }
      
      public function get actions() : Array
      {
         return this.var_287.slice();
      }
   }
}
