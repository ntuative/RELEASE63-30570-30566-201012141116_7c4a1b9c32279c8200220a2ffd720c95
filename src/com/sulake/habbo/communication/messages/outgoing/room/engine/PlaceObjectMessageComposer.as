package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_304:int;
      
      private var var_1974:int;
      
      private var var_2571:String;
      
      private var _x:int = 0;
      
      private var var_154:int = 0;
      
      private var var_244:int = 0;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         this.var_304 = param1;
         this.var_1974 = param2;
         this.var_2571 = param3;
         this._x = param4;
         this.var_154 = param5;
         this.var_244 = param6;
         this._roomId = param7;
         this._roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(this.var_1974)
         {
            case RoomObjectCategoryEnum.OBJECT_CATEGORY_FURNITURE:
               return [this.var_304 + " " + this._x + " " + this.var_154 + " " + this.var_244];
            case RoomObjectCategoryEnum.const_27:
               return [this.var_304 + " " + this.var_2571];
            default:
               return [];
         }
      }
   }
}
