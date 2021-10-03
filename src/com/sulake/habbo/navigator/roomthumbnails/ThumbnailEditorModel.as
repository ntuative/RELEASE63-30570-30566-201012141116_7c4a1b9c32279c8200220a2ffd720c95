package com.sulake.habbo.navigator.roomthumbnails
{
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomThumbnailData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomThumbnailObjectData;
   import com.sulake.habbo.navigator.Util;
   import flash.utils.Dictionary;
   
   public class ThumbnailEditorModel
   {
      
      public static const const_35:int = 1;
      
      public static const const_55:int = 2;
      
      public static const const_33:int = 3;
       
      
      private var var_613:int = 1;
      
      private var var_185:RoomThumbnailObjectData;
      
      private var _data:RoomThumbnailData;
      
      public function ThumbnailEditorModel()
      {
         super();
      }
      
      private function removeSelected() : void
      {
         var _loc1_:Array = this._data.objects;
         if(this.var_185 == null)
         {
            return;
         }
         var _loc2_:int = Util.remove(_loc1_,this.var_185);
         this.var_185 = null;
         if(_loc1_.length > 0)
         {
            this.var_185 = _loc1_[Math.min(_loc2_,_loc1_.length - 1)];
         }
      }
      
      private function addObject(param1:int) : void
      {
         Logger.log("New object pos: " + param1);
         var _loc2_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc2_.pos = param1;
         _loc2_.imgId = 0;
         this._data.objects.push(_loc2_);
         this.var_185 = _loc2_;
         Logger.log("Object count after insert: " + this._data.objects.length);
      }
      
      public function setPos(param1:int) : void
      {
         this.var_185 = this.findByPos(param1);
         if(this.var_185 == null)
         {
            this.addObject(param1);
         }
      }
      
      public function setImg(param1:int) : void
      {
         if(this.var_613 == const_35)
         {
            this._data.bgImgId = param1;
         }
         else if(this.var_613 == const_55)
         {
            this._data.frontImgId = param1;
         }
         if(this.var_613 == const_33)
         {
            if(this.var_185 == null)
            {
               return;
            }
            this.var_185.imgId = param1;
         }
      }
      
      public function getImgId() : int
      {
         if(this.var_613 == const_35)
         {
            return this._data.bgImgId;
         }
         if(this.var_613 == const_55)
         {
            return this._data.frontImgId;
         }
         return this.var_185 == null ? -1 : int(this.var_185.imgId);
      }
      
      public function findByPos(param1:int) : RoomThumbnailObjectData
      {
         var _loc2_:* = null;
         for each(_loc2_ in this._data.objects)
         {
            if(_loc2_.pos == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getBlockedPositions() : Dictionary
      {
         var _loc2_:* = null;
         var _loc1_:Dictionary = new Dictionary();
         for each(_loc2_ in this._data.objects)
         {
            if(_loc2_.imgId > 0)
            {
               _loc1_[_loc2_.pos] = "taken";
            }
         }
         return _loc1_;
      }
      
      public function set data(param1:RoomThumbnailData) : void
      {
         this._data = param1;
         this.var_613 = const_35;
         if(this._data.objects.length > 0)
         {
            this.var_185 = this._data.objects[0];
         }
         else
         {
            this.var_185 = null;
         }
      }
      
      public function set mode(param1:int) : void
      {
         this.var_613 = param1;
      }
      
      public function set selected(param1:RoomThumbnailObjectData) : void
      {
         this.var_185 = param1;
      }
      
      public function get mode() : int
      {
         return this.var_613;
      }
      
      public function get selected() : RoomThumbnailObjectData
      {
         return this.var_185;
      }
      
      public function get data() : RoomThumbnailData
      {
         return this._data;
      }
   }
}
