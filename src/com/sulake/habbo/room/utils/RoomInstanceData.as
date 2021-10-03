package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_640:TileHeightMap = null;
      
      private var var_947:LegacyWallGeometry = null;
      
      private var var_948:RoomCamera = null;
      
      private var var_638:SelectedRoomObjectData = null;
      
      private var var_639:SelectedRoomObjectData = null;
      
      private var var_1978:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_947 = new LegacyWallGeometry();
         this.var_948 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_640;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_640 != null)
         {
            this.var_640.dispose();
         }
         this.var_640 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_947;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_948;
      }
      
      public function get worldType() : String
      {
         return this.var_1978;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_1978 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_638;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_638 != null)
         {
            this.var_638.dispose();
         }
         this.var_638 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_639;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_639 != null)
         {
            this.var_639.dispose();
         }
         this.var_639 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_640 != null)
         {
            this.var_640.dispose();
            this.var_640 = null;
         }
         if(this.var_947 != null)
         {
            this.var_947.dispose();
            this.var_947 = null;
         }
         if(this.var_948 != null)
         {
            this.var_948.dispose();
            this.var_948 = null;
         }
         if(this.var_638 != null)
         {
            this.var_638.dispose();
            this.var_638 = null;
         }
         if(this.var_639 != null)
         {
            this.var_639.dispose();
            this.var_639 = null;
         }
      }
   }
}
