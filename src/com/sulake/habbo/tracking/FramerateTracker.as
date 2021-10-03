package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1442:int;
      
      private var var_2388:int;
      
      private var var_1089:int;
      
      private var var_418:Number;
      
      private var var_2386:Boolean;
      
      private var var_2387:int;
      
      private var var_1700:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2388 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2387 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2386 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1089;
         if(this.var_1089 == 1)
         {
            this.var_418 = param1;
            this.var_1442 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1089);
            this.var_418 = this.var_418 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2386 && param3 - this.var_1442 >= this.var_2388 && this.var_1700 < this.var_2387)
         {
            _loc5_ = 1000 / this.var_418;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1700;
            this.var_1442 = param3;
            this.var_1089 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
