package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import flash.utils.Dictionary;
   
   public class FurnitureFireworksVisualization extends AnimatedFurnitureVisualization
   {
       
      
      private var var_2473:Boolean = false;
      
      private var var_2474:Dictionary;
      
      private var var_1367:int;
      
      private var var_1114:int;
      
      private var _rocketVelocity:Number;
      
      public function FurnitureFireworksVisualization()
      {
         super();
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(!this.var_2473 && spriteCount > 0)
         {
            this.var_2473 = this.readDefinition();
         }
         if(this.var_2474)
         {
            this.var_1114 += this._rocketVelocity;
            this._rocketVelocity *= 0.9;
            if(Math.abs(this._rocketVelocity) < 0.1)
            {
               this.var_1114 = 0;
               this._rocketVelocity = -9;
               Logger.log("POKS");
            }
            return super.updateAnimation(param1);
         }
         return null;
      }
      
      override protected function getSpriteYOffset(param1:int, param2:int, param3:int) : int
      {
         if(param1 == this.var_1367)
         {
            return this.var_1114;
         }
         return super.getSpriteYOffset(param1,param2,param3);
      }
      
      private function readDefinition() : Boolean
      {
         var _loc4_:* = null;
         var _loc1_:IRoomObject = object;
         if(_loc1_ == null)
         {
            return false;
         }
         var _loc2_:IRoomObjectModel = _loc1_.getModel();
         if(_loc2_ == null)
         {
            return false;
         }
         var _loc3_:String = _loc2_.getString(RoomObjectVariableEnum.const_1076);
         Logger.log("Fireworks:\n" + _loc3_);
         var _loc5_:XML = XML(_loc3_);
         var _loc6_:XML = _loc5_.rocket[0] as XML;
         if(_loc6_)
         {
            this.var_2474 = new Dictionary();
            this.var_1367 = parseInt(_loc6_.@object_id);
            this._rocketVelocity = parseInt(_loc6_.@velocity);
            Logger.log("Search for rocket: " + this.var_1367);
            _loc4_ = getSprite(this.var_1367);
            if(_loc4_ != null)
            {
               this.var_1114 = 0;
            }
         }
         return true;
      }
   }
}
