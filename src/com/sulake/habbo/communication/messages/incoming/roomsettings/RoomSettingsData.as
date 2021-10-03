package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_535:int = 0;
      
      public static const const_178:int = 1;
      
      public static const const_102:int = 2;
      
      public static const const_656:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1434:String;
      
      private var var_1933:int;
      
      private var var_1206:int;
      
      private var var_1932:int;
      
      private var var_2071:int;
      
      private var var_754:Array;
      
      private var var_1936:Array;
      
      private var var_2072:int;
      
      private var var_1937:Boolean;
      
      private var var_1938:Boolean;
      
      private var var_1935:Boolean;
      
      private var var_1934:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_1937;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_1937 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_1938;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_1938 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_1935;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_1935 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_1934;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_1934 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1434;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1434 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_1933;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_1933 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1206;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1206 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_1932;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_1932 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2071;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2071 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_754;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_754 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_1936;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_1936 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2072;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2072 = param1;
      }
   }
}
