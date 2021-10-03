package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var _configuration:IHabboConfigurationManager = null;
      
      private var var_511:int = 0;
      
      private var var_418:Number = 0;
      
      private var var_2624:Array;
      
      private var var_1190:String = "";
      
      private var var_1441:String = "";
      
      private var var_1956:String = "";
      
      private var var_2083:String = "";
      
      private var var_1513:Boolean = false;
      
      private var var_1444:GarbageMonitor = null;
      
      private var var_1192:int = 0;
      
      private var var_1958:Boolean;
      
      private var var_1443:int = 1000;
      
      private var var_1189:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_1442:int = 0;
      
      private var var_1440:int = 10;
      
      private var var_1191:int = 0;
      
      private var var_1954:Number = 0.15;
      
      private var var_1955:Boolean = true;
      
      private var var_1957:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2624 = [];
         super();
         this.var_1441 = Capabilities.version;
         this.var_1956 = Capabilities.os;
         this.var_1513 = Capabilities.isDebugger;
         this.var_1190 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1190 == null)
         {
            this.var_1190 = "unknown";
         }
         this.var_1444 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1442 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1441;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_418;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1443 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1440 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this._configuration = param1;
         this._reportInterval = int(this._configuration.getKey("performancetest.interval","60"));
         this.var_1443 = int(this._configuration.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1440 = int(this._configuration.getKey("performancetest.reportlimit","10"));
         this.var_1954 = Number(this._configuration.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_1955 = Boolean(int(this._configuration.getKey("performancetest.distribution.enabled","1")));
         this.var_1958 = Boolean(this._configuration.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1444.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1444.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         if(this.var_1958)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1192;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1443)
         {
            ++this.var_1189;
            _loc3_ = true;
         }
         else
         {
            ++this.var_511;
            if(this.var_511 <= 1)
            {
               this.var_418 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_511);
               this.var_418 = this.var_418 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_1442 > this._reportInterval * 1000 && this.var_1191 < this.var_1440)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_418);
            _loc6_ = true;
            if(this.var_1955 && this.var_1191 > 0)
            {
               _loc7_ = this.differenceInPercents(this.var_1957,this.var_418);
               if(_loc7_ < this.var_1954)
               {
                  _loc6_ = false;
               }
            }
            this.var_1442 = param2;
            if(_loc6_ || _loc3_)
            {
               this.var_1957 = this.var_418;
               if(this.sendReport(param2))
               {
                  ++this.var_1191;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1190,this.var_1441,this.var_1956,this.var_2083,this.var_1513,_loc5_,_loc4_,this.var_1192,this.var_418,this.var_1189);
            this._connection.send(_loc2_);
            this.var_1192 = 0;
            this.var_418 = 0;
            this.var_511 = 0;
            this.var_1189 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
