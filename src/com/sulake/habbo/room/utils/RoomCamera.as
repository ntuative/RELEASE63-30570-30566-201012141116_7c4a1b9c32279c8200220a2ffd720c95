package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_889:int = 3;
       
      
      private var var_2586:int = -1;
      
      private var var_2590:int = -2;
      
      private var var_342:Vector3d = null;
      
      private var var_404:Vector3d = null;
      
      private var var_2588:Boolean = false;
      
      private var var_2593:Boolean = false;
      
      private var var_2589:Boolean = false;
      
      private var var_2595:Boolean = false;
      
      private var var_2594:int = 0;
      
      private var var_2587:int = 0;
      
      private var var_2592:int = 0;
      
      private var var_2591:int = 0;
      
      private var var_1401:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_404;
      }
      
      public function get targetId() : int
      {
         return this.var_2586;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2590;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2588;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2593;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2589;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2595;
      }
      
      public function get screenWd() : int
      {
         return this.var_2594;
      }
      
      public function get screenHt() : int
      {
         return this.var_2587;
      }
      
      public function get roomWd() : int
      {
         return this.var_2592;
      }
      
      public function get roomHt() : int
      {
         return this.var_2591;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2586 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2590 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2588 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2593 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2589 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2595 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2594 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2587 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2592 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2591 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_342 == null)
         {
            this.var_342 = new Vector3d();
         }
         if(this.var_342.x != param1.x || this.var_342.y != param1.y || this.var_342.z != param1.z)
         {
            this.var_342.assign(param1);
            this.var_1401 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_342 = null;
         this.var_404 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_404 != null)
         {
            return;
         }
         this.var_404 = new Vector3d();
         this.var_404.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_342 != null && this.var_404 != null)
         {
            ++this.var_1401;
            _loc4_ = Vector3d.dif(this.var_342,this.var_404);
            if(_loc4_.length <= param2)
            {
               this.var_404 = this.var_342;
               this.var_342 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_889 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1401 <= const_889)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_404 = Vector3d.sum(this.var_404,_loc4_);
            }
         }
      }
   }
}
