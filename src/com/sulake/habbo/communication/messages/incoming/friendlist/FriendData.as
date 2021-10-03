package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_922:int;
      
      private var var_713:Boolean;
      
      private var var_1609:Boolean;
      
      private var var_614:String;
      
      private var var_1206:int;
      
      private var var_1608:String;
      
      private var var_1611:String;
      
      private var var_1610:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_922 = param1.readInteger();
         this.var_713 = param1.readBoolean();
         this.var_1609 = param1.readBoolean();
         this.var_614 = param1.readString();
         this.var_1206 = param1.readInteger();
         this.var_1608 = param1.readString();
         this.var_1611 = param1.readString();
         this.var_1610 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_922;
      }
      
      public function get online() : Boolean
      {
         return this.var_713;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1609;
      }
      
      public function get figure() : String
      {
         return this.var_614;
      }
      
      public function get categoryId() : int
      {
         return this.var_1206;
      }
      
      public function get motto() : String
      {
         return this.var_1608;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1611;
      }
      
      public function get realName() : String
      {
         return this.var_1610;
      }
   }
}
