package com.sulake.core.utils.profiler
{
   import com.sulake.core.runtime.IDisposable;
   import flash.utils.getTimer;
   
   public class ProfilerAgentTask implements IDisposable
   {
       
      
      private var _name:String;
      
      private var var_1146:uint;
      
      private var var_1400:int;
      
      private var var_1828:int;
      
      private var var_1829:Number;
      
      private var var_98:String;
      
      private var var_691:Boolean;
      
      private var _disposed:Boolean = false;
      
      private var _children:Array;
      
      private var var_1888:uint;
      
      public function ProfilerAgentTask(param1:String, param2:String = "")
      {
         super();
         this._name = param1;
         this.var_1146 = 0;
         this.var_1829 = 0;
         this.var_691 = false;
         this._children = new Array();
         this.var_98 = param2;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
         }
      }
      
      public function start() : void
      {
         if(!this.var_691)
         {
            this.var_1888 = getTimer();
            this.var_691 = true;
         }
      }
      
      public function stop() : void
      {
         if(this.var_691)
         {
            this.var_1828 = getTimer() - this.var_1888;
            ++this.var_1146;
            this.var_1400 += this.var_1828;
            this.var_1829 = this.var_1400 / this.var_1146;
            this.var_691 = false;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get rounds() : uint
      {
         return this.var_1146;
      }
      
      public function get total() : int
      {
         return this.var_1400;
      }
      
      public function get latest() : int
      {
         return this.var_1828;
      }
      
      public function get average() : Number
      {
         return this.var_1829;
      }
      
      public function get caption() : String
      {
         return this.var_98;
      }
      
      public function set caption(param1:String) : void
      {
         this.var_98 = this.caption;
      }
      
      public function get running() : Boolean
      {
         return this.var_691;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get numSubTasks() : uint
      {
         return this._children.length;
      }
      
      public function addSubTask(param1:ProfilerAgentTask) : void
      {
         if(this.getSubTaskByName(param1.name) != null)
         {
            throw new Error("Component profiler task with name \"" + param1.name + "\" already exists!");
         }
         this._children.push(param1);
      }
      
      public function removeSubTask(param1:ProfilerAgentTask) : ProfilerAgentTask
      {
         var _loc2_:int = this._children.indexOf(param1);
         if(_loc2_ > -1)
         {
            this._children.splice(_loc2_,1);
         }
         return param1;
      }
      
      public function getSubTaskAt(param1:uint) : ProfilerAgentTask
      {
         return this._children[param1] as ProfilerAgentTask;
      }
      
      public function getSubTaskByName(param1:String) : ProfilerAgentTask
      {
         var _loc4_:* = null;
         var _loc2_:uint = this._children.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this._children[_loc3_++] as ProfilerAgentTask;
            if(_loc4_.name == param1)
            {
               return _loc4_;
            }
         }
         return null;
      }
   }
}
