package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1097:String = "M";
      
      public static const const_1489:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_154:Number = 0;
      
      private var var_155:Number = 0;
      
      private var var_244:int = 0;
      
      private var _name:String = "";
      
      private var var_2290:int = 0;
      
      private var var_892:String = "";
      
      private var var_614:String = "";
      
      private var var_2182:String = "";
      
      private var var_2184:int;
      
      private var var_2186:int = 0;
      
      private var var_2181:String = "";
      
      private var var_2185:int = 0;
      
      private var var_2183:int = 0;
      
      private var var_2291:String = "";
      
      private var var_158:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_158 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_158)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_154;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_158)
         {
            this.var_154 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_155;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_158)
         {
            this.var_155 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_244;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_158)
         {
            this.var_244 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_158)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_2290;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_158)
         {
            this.var_2290 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_892;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_158)
         {
            this.var_892 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_614;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_158)
         {
            this.var_614 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2182;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_158)
         {
            this.var_2182 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2184;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_158)
         {
            this.var_2184 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2186;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_158)
         {
            this.var_2186 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2181;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_158)
         {
            this.var_2181 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2185;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_158)
         {
            this.var_2185 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2183;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_158)
         {
            this.var_2183 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2291;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_158)
         {
            this.var_2291 = param1;
         }
      }
   }
}
