package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_892:String = "";
      
      private var var_614:String = "";
      
      private var var_2182:String = "";
      
      private var var_2184:int;
      
      private var var_2186:int = 0;
      
      private var var_2181:String = "";
      
      private var var_2185:int = 0;
      
      private var var_2183:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2184;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2184 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_892;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_892 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_614;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_614 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2182;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2182 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2186;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2186 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2181;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2181 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2185;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2185 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2183;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2183 = param1;
      }
   }
}
