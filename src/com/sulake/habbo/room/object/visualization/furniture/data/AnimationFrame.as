package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_454:int = -1;
      
      public static const const_997:int = -1;
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_154:int = 0;
      
      private var var_2063:int = 1;
      
      private var var_797:int = 1;
      
      private var var_1508:int = 1;
      
      private var var_2060:int = -1;
      
      private var var_2062:int = 0;
      
      private var var_2061:Boolean = false;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0)
      {
         super();
         this._id = param1;
         this._x = param2;
         this.var_154 = param3;
         this.var_2061 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         this.var_2063 = param4;
         if(param5 < 0)
         {
            param5 = const_454;
         }
         this.var_797 = param5;
         this.var_1508 = param5;
         if(param7 >= 0)
         {
            this.var_2060 = param7;
            this.var_2062 = param8;
         }
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_154;
      }
      
      public function get repeats() : int
      {
         return this.var_2063;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_797;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2061;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_797 < 0)
         {
            return const_454;
         }
         return this.var_1508;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_797 > 0 && param1 > this.var_797)
         {
            param1 = this.var_797;
         }
         this.var_1508 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2060;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2062;
      }
   }
}
