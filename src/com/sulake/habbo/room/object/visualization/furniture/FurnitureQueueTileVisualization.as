package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1227:int = 2;
      
      private static const const_1228:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_260:Array;
      
      private var var_1097:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_260 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1227)
         {
            this.var_260 = new Array();
            this.var_260.push(const_1228);
            this.var_1097 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1097 > 0)
         {
            --this.var_1097;
         }
         if(this.var_1097 == 0)
         {
            if(this.var_260.length > 0)
            {
               super.setAnimation(this.var_260.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
