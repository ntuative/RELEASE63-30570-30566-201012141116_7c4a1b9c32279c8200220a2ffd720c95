package com.sulake.habbo.sound.trax
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.sound.IHabboSound;
   import com.sulake.habbo.sound.events.SoundCompleteEvent;
   import flash.events.IEventDispatcher;
   import flash.events.SampleDataEvent;
   import flash.events.TimerEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.Timer;
   
   public class TraxSequencer implements IHabboSound
   {
      
      private static const const_259:uint = 8192;
      
      private static const const_1229:uint = 88200;
      
      private static const const_1230:uint = 88200;
       
      
      private var var_97:Vector.<Number> = null;
      
      private var _events:IEventDispatcher;
      
      private var var_469:Number;
      
      private var var_1347:Sound;
      
      private var _soundChannel:SoundChannel;
      
      private var var_1726:TraxData;
      
      private var var_1729:Map;
      
      private var var_932:Boolean;
      
      private var var_2019:int;
      
      private var var_205:uint;
      
      private var var_702:Array;
      
      private var var_1728:Boolean;
      
      private var var_1348:Boolean;
      
      private var _length:uint;
      
      private var var_1727:uint;
      
      public function TraxSequencer(param1:int, param2:TraxData, param3:Map, param4:IEventDispatcher)
      {
         this.var_1727 = uint(const_259 / 44.1);
         super();
         this._events = param4;
         this.var_2019 = param1;
         this.var_469 = 1;
         this.var_1347 = new Sound();
         this._soundChannel = null;
         this.var_1729 = param3;
         this.var_1726 = param2;
         this.var_1729 = param3;
         this.var_932 = true;
         this.var_205 = 0;
         this.var_702 = [];
         this.var_1728 = false;
         this._length = 0;
         this.var_1348 = false;
         this.var_97 = new Vector.<Number>(const_259,true);
      }
      
      public function set position(param1:Number) : void
      {
         this.var_205 = uint(param1 * 44100);
      }
      
      public function get volume() : Number
      {
         return this.var_469;
      }
      
      public function get position() : Number
      {
         return this.var_205;
      }
      
      public function get ready() : Boolean
      {
         return this.var_932;
      }
      
      public function set ready(param1:Boolean) : void
      {
         this.var_932 = param1;
      }
      
      public function get finished() : Boolean
      {
         return this.var_1348;
      }
      
      public function play() : Boolean
      {
         if(!this.var_932)
         {
            Logger.log("Cannot start trax playback until samples ready!");
            return false;
         }
         if(!this.var_1728)
         {
            if(!this.prepareSequence())
            {
               Logger.log("Cannot start playback, prepare sequence failed!");
               return false;
            }
         }
         if(this._soundChannel != null)
         {
            this.stop();
         }
         this.var_1348 = false;
         this.var_1347.addEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         this._soundChannel = this.var_1347.play();
         return true;
      }
      
      public function stop() : Boolean
      {
         if(this._soundChannel != null)
         {
            this._soundChannel.stop();
         }
         this.var_1347.removeEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         this._soundChannel = null;
         return true;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_469 = param1;
         if(this._soundChannel != null)
         {
            this._soundChannel.soundTransform = new SoundTransform(this.var_469);
         }
      }
      
      public function get length() : Number
      {
         return this._length;
      }
      
      private function getSampleBars(param1:uint) : int
      {
         return Math.ceil(param1 / const_1229);
      }
      
      private function prepareSequence() : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.var_1726.channels.length)
         {
            _loc2_ = new Map();
            _loc3_ = this.var_1726.channels[_loc1_] as TraxChannel;
            _loc4_ = 0;
            _loc5_ = 0;
            _loc6_ = 0;
            while(_loc6_ < _loc3_.itemCount)
            {
               _loc7_ = _loc3_.getItem(_loc6_).id;
               _loc8_ = this.var_1729.getValue(_loc7_) as TraxSample;
               if(_loc8_ == null)
               {
                  Logger.log("Error in prepareSequence(), sample was null!");
               }
               continue;
               _loc9_ = this.getSampleBars(_loc8_.length);
               _loc10_ = _loc3_.getItem(_loc6_).length / _loc9_;
               _loc11_ = 0;
               while(_loc11_ < _loc10_)
               {
                  if(_loc7_ != 0)
                  {
                     _loc2_.add(_loc4_,_loc8_);
                  }
                  _loc5_ += _loc9_;
                  _loc4_ = uint(_loc5_ * const_1230);
                  _loc11_++;
               }
               if(this._length < _loc4_)
               {
                  this._length = _loc4_;
               }
               _loc6_++;
               return false;
            }
            this.var_702.push(_loc2_);
            _loc1_++;
         }
         this.var_1728 = true;
         return true;
      }
      
      private function onSampleData(param1:SampleDataEvent) : void
      {
         var _loc12_:int = 0;
         var _loc13_:* = null;
         var _loc14_:int = 0;
         var _loc15_:* = null;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc2_:* = [];
         var _loc3_:* = [];
         var _loc4_:* = [];
         var _loc5_:* = null;
         var _loc6_:int = this.var_702.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc2_.push(this.var_702[_loc7_].getKeys());
            _loc12_ = 0;
            while(_loc12_ < _loc2_[_loc7_].length && _loc2_[_loc7_][_loc12_] < this.var_205)
            {
               _loc12_++;
            }
            if(_loc12_ > 0)
            {
               _loc12_--;
               _loc4_.push(_loc12_);
            }
            else
            {
               _loc4_.push(-1);
            }
            _loc13_ = this.var_702[_loc7_].getWithIndex(_loc12_);
            _loc14_ = this.var_205 - _loc2_[_loc7_][_loc12_];
            if(_loc13_ == null)
            {
               _loc3_.push(null);
            }
            else if(_loc13_.id == 0 || _loc14_ < 0)
            {
               _loc3_.push(null);
            }
            else
            {
               _loc5_ = new TraxChannelSample(_loc13_,_loc14_);
               _loc3_.push(_loc5_);
            }
            _loc7_++;
         }
         _loc7_ = _loc6_ - 1;
         while(_loc7_ >= 0)
         {
            _loc5_ = _loc3_[_loc7_] as TraxChannelSample;
            _loc15_ = _loc2_[_loc7_] as Array;
            _loc16_ = _loc4_[_loc7_];
            _loc17_ = const_259;
            if(this._length - this.var_205 < _loc17_)
            {
               _loc17_ = this._length - this.var_205;
            }
            _loc18_ = 0;
            while(_loc18_ < _loc17_)
            {
               _loc19_ = _loc17_;
               if(_loc16_ < _loc15_.length - 1)
               {
                  if(_loc17_ + this.var_205 >= _loc15_[_loc16_ + 1])
                  {
                     _loc19_ = _loc15_[_loc16_ + 1] - this.var_205;
                  }
               }
               if(_loc17_ - _loc18_ < _loc19_)
               {
                  _loc19_ = _loc17_ - _loc18_;
               }
               _loc20_ = 0;
               if(_loc7_ == _loc6_ - 1)
               {
                  if(_loc5_ != null)
                  {
                     _loc5_.setSample(this.var_97,_loc18_,_loc19_);
                     _loc18_ += _loc19_;
                  }
                  else
                  {
                     _loc20_ = 0;
                     while(_loc20_ < _loc19_)
                     {
                        var _loc23_:*;
                        this.var_97[_loc23_ = _loc18_++] = 0;
                        _loc20_++;
                     }
                  }
               }
               else
               {
                  if(_loc5_ != null)
                  {
                     _loc5_.addSample(this.var_97,_loc18_,_loc19_);
                  }
                  _loc18_ += _loc19_;
               }
               if(_loc18_ < _loc17_)
               {
                  if(_loc16_ < this.var_702[_loc7_].length - 1)
                  {
                     _loc21_ = this.var_702[_loc7_].getWithIndex(++_loc16_);
                     if(_loc21_.id == 0)
                     {
                        _loc5_ = null;
                     }
                     else
                     {
                        _loc5_ = new TraxChannelSample(_loc21_,0);
                     }
                  }
                  else
                  {
                     _loc5_ = null;
                  }
               }
            }
            _loc7_--;
         }
         var _loc8_:* = 0;
         var _loc9_:int = const_259;
         if(this._length - this.var_205 < _loc9_)
         {
            _loc9_ = this._length - this.var_205;
            if(_loc9_ < 0)
            {
               _loc9_ = 0;
            }
         }
         var _loc10_:int = 0;
         while(_loc10_ < _loc9_)
         {
            _loc8_ = Number(this.var_97[_loc10_] * this.volume);
            param1.data.writeFloat(_loc8_);
            param1.data.writeFloat(_loc8_);
            _loc10_++;
         }
         var _loc11_:int = _loc9_;
         while(_loc11_ < const_259)
         {
            _loc8_ = 0;
            param1.data.writeFloat(_loc8_);
            param1.data.writeFloat(_loc8_);
            _loc11_++;
         }
         this.var_205 += const_259;
         if(this._soundChannel != null)
         {
            this.var_1727 = param1.position / 44.1 - this._soundChannel.position;
         }
         if(this.var_205 > this._length + this.var_1727 * 44.1)
         {
            this.var_1348 = true;
            _loc22_ = new Timer(2,1);
            _loc22_.start();
            _loc22_.addEventListener(TimerEvent.TIMER_COMPLETE,this.onComplete);
         }
      }
      
      private function onComplete(param1:TimerEvent) : void
      {
         this.stop();
         this._events.dispatchEvent(new SoundCompleteEvent(SoundCompleteEvent.const_724,this.var_2019));
      }
   }
}
