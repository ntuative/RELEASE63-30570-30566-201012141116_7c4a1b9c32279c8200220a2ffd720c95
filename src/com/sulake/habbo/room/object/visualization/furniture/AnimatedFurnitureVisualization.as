package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.room.object.visualization.furniture.data.AnimationData;
   import com.sulake.habbo.room.object.visualization.furniture.data.AnimationFrame;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   
   public class AnimatedFurnitureVisualization extends FurnitureVisualization
   {
       
      
      private var var_481:AnimatedFurnitureVisualizationData = null;
      
      private var _state:int = -1;
      
      private var var_1115:int = 0;
      
      private var var_586:int = 0;
      
      private var var_1116:Boolean = false;
      
      private var var_1751:int = 0;
      
      private var var_480:Array;
      
      private var var_590:Array;
      
      private var _animationPlayed:Array;
      
      private var var_1750:Number = 0;
      
      private var var_1752:int = 0;
      
      public function AnimatedFurnitureVisualization()
      {
         this.var_480 = [];
         this.var_590 = [];
         this._animationPlayed = [];
         super();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_481 = null;
         this.var_480 = null;
         this.var_590 = null;
         this._animationPlayed = null;
      }
      
      public function get animationId() : int
      {
         return this.var_1115;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         if(!(param1 is AnimatedFurnitureVisualizationData))
         {
            return false;
         }
         this.var_481 = param1 as AnimatedFurnitureVisualizationData;
         return super.initialize(param1);
      }
      
      override protected function updateObject(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         if(super.updateObject(param1,param2))
         {
            _loc3_ = object;
            if(_loc3_ == null)
            {
               return false;
            }
            _loc4_ = _loc3_.getState(0);
            if(_loc4_ != this._state)
            {
               this.setAnimation(_loc4_);
               this._state = _loc4_;
               _loc5_ = _loc3_.getModel();
               if(_loc5_ != null)
               {
                  _loc6_ = _loc5_.getNumber(RoomObjectVariableEnum.const_801);
                  this.var_1751 = _loc6_;
               }
            }
            return true;
         }
         return false;
      }
      
      override protected function updateModel(param1:Number) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         if(super.updateModel(param1))
         {
            _loc2_ = object;
            if(_loc2_ != null)
            {
               _loc3_ = _loc2_.getModel();
               if(_loc3_ != null)
               {
                  if(this.usesAnimationResetting())
                  {
                     _loc4_ = _loc3_.getNumber(RoomObjectVariableEnum.const_801);
                     if(_loc4_ > this.var_1751)
                     {
                        this.var_1751 = _loc4_;
                        this.setAnimation(this._state);
                     }
                  }
               }
            }
            return true;
         }
         return false;
      }
      
      private function resetAnimationFrames() : void
      {
         this.var_480 = [];
         this.var_590 = [];
         this._animationPlayed = [];
         this.var_1116 = false;
         var _loc1_:int = 0;
         while(_loc1_ < this.var_1752)
         {
            this.var_480[_loc1_] = null;
            this.var_590[_loc1_] = false;
            this._animationPlayed[_loc1_] = false;
            _loc1_++;
         }
      }
      
      protected function setAnimation(param1:int) : void
      {
         if(this.var_481 != null && this._state >= 0)
         {
            if(this.var_481.hasAnimation(AnimationData.getTransitionAnimationId(param1),this.var_1750))
            {
               if(this.var_1115 != AnimationData.getTransitionAnimationId(param1))
               {
                  param1 = AnimationData.getTransitionAnimationId(param1);
               }
            }
         }
         this.var_1115 = param1;
         this.var_586 = 0;
         this.resetAnimationFrames();
      }
      
      protected function getLastFramePlayed(param1:int) : Boolean
      {
         if(param1 < 0 || param1 >= this.var_590.length)
         {
            return false;
         }
         return this.var_590[param1];
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_481 == null)
         {
            return null;
         }
         if(param1 != this.var_1750)
         {
            this.var_1752 = this.var_481.getLayerCount(param1);
            this.resetAnimationFrames();
         }
         var _loc2_:Array = this.updateAnimationFrames(param1);
         if(this.var_1116 && _loc2_ != null && AnimationData.isTransitionAnimation(this.var_1115))
         {
            this.setAnimation(AnimationData.getAnimationId(this.var_1115));
            _loc2_ = this.updateAnimationFrames(param1);
         }
         this.var_1750 = param1;
         return _loc2_;
      }
      
      private function updateAnimationFrames(param1:Number) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         if(this.var_1116)
         {
            return null;
         }
         if(this.var_586 == 0)
         {
            this.var_586 = this.var_481.getStartFrame(this.animationId,param1);
         }
         this.var_586 += 1;
         var _loc3_:* = null;
         this.var_1116 = true;
         var _loc4_:int = this.var_1752 - 1;
         while(_loc4_ >= 0)
         {
            _loc5_ = this._animationPlayed[_loc4_];
            if(!_loc5_)
            {
               _loc6_ = this.var_590[_loc4_];
               _loc7_ = this.var_480[_loc4_] as AnimationFrame;
               if(_loc7_ != null)
               {
                  if(_loc7_.isLastFrame && _loc7_.remainingFrameRepeats <= 1)
                  {
                     _loc6_ = true;
                  }
               }
               if(_loc7_ == null || _loc7_.remainingFrameRepeats >= 0 && _loc9_ <= 0)
               {
                  _loc8_ = 0;
                  if(_loc7_ != null)
                  {
                     _loc8_ = _loc7_.activeSequence;
                  }
                  if(_loc8_ == AnimationFrame.const_997)
                  {
                     _loc7_ = this.var_481.getFrame(_loc4_,this.animationId,this.var_586,param1);
                  }
                  else
                  {
                     _loc7_ = this.var_481.getFrameFromSequence(_loc4_,this.animationId,_loc8_,_loc7_.activeSequenceOffset + _loc7_.repeats,this.var_586,param1);
                  }
                  this.var_480[_loc4_] = _loc7_;
                  if(_loc3_ != null)
                  {
                     _loc3_.push(_loc4_);
                  }
                  else
                  {
                     _loc3_ = [_loc4_];
                  }
               }
               if(_loc7_ == null || _loc7_.remainingFrameRepeats == AnimationFrame.const_454)
               {
                  _loc6_ = true;
                  _loc5_ = true;
               }
               else
               {
                  this.var_1116 = false;
               }
               this.var_590[_loc4_] = _loc6_;
               this._animationPlayed[_loc4_] = _loc5_;
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      override protected function getFrameNumber(param1:int, param2:int) : int
      {
         var _loc3_:AnimationFrame = this.var_480[param1] as AnimationFrame;
         if(_loc3_ != null)
         {
            return _loc3_.id;
         }
         return super.getFrameNumber(param1,param2);
      }
      
      override protected function getSpriteXOffset(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:int = super.getSpriteXOffset(param1,param2,param3);
         var _loc5_:AnimationFrame = this.var_480[param1] as AnimationFrame;
         if(_loc5_ != null)
         {
            _loc4_ += _loc5_.x;
         }
         return _loc4_;
      }
      
      override protected function getSpriteYOffset(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:int = super.getSpriteYOffset(param1,param2,param3);
         var _loc5_:AnimationFrame = this.var_480[param1] as AnimationFrame;
         if(_loc5_ != null)
         {
            _loc4_ += _loc5_.y;
         }
         return _loc4_;
      }
      
      protected function usesAnimationResetting() : Boolean
      {
         return false;
      }
   }
}
