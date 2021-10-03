package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_614:String;
      
      private var var_892:String;
      
      private var var_2164:String;
      
      private var var_1610:String;
      
      private var var_2163:int;
      
      private var var_2160:String;
      
      private var var_2162:int;
      
      private var var_2161:int;
      
      private var var_2110:int;
      
      private var _respectLeft:int;
      
      private var var_634:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_614 = param1.readString();
         this.var_892 = param1.readString();
         this.var_2164 = param1.readString();
         this.var_1610 = param1.readString();
         this.var_2163 = param1.readInteger();
         this.var_2160 = param1.readString();
         this.var_2162 = param1.readInteger();
         this.var_2161 = param1.readInteger();
         this.var_2110 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_634 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_614;
      }
      
      public function get sex() : String
      {
         return this.var_892;
      }
      
      public function get customData() : String
      {
         return this.var_2164;
      }
      
      public function get realName() : String
      {
         return this.var_1610;
      }
      
      public function get tickets() : int
      {
         return this.var_2163;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2160;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2162;
      }
      
      public function get directMail() : int
      {
         return this.var_2161;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2110;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_634;
      }
   }
}
