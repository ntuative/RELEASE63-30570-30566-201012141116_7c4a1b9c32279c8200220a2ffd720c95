package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1907:int;
      
      private var var_1906:int;
      
      private var var_1908:String;
      
      private var var_1905:int;
      
      private var var_1909:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_1907 = param1;
         this.var_1906 = param2;
         this.var_1908 = param3;
         this.var_1905 = param4;
         this.var_1909 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1907,this.var_1906,this.var_1908,this.var_1905,int(this.var_1909)];
      }
      
      public function dispose() : void
      {
      }
   }
}
