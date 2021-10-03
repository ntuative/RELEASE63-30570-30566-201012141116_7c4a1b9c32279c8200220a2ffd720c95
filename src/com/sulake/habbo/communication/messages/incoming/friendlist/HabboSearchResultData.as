package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_1948:int;
      
      private var var_1749:String;
      
      private var var_1950:String;
      
      private var var_1949:Boolean;
      
      private var var_1951:Boolean;
      
      private var var_1947:int;
      
      private var var_1953:String;
      
      private var var_1952:String;
      
      private var var_1610:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1948 = param1.readInteger();
         this.var_1749 = param1.readString();
         this.var_1950 = param1.readString();
         this.var_1949 = param1.readBoolean();
         this.var_1951 = param1.readBoolean();
         param1.readString();
         this.var_1947 = param1.readInteger();
         this.var_1953 = param1.readString();
         this.var_1952 = param1.readString();
         this.var_1610 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_1948;
      }
      
      public function get avatarName() : String
      {
         return this.var_1749;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1950;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_1949;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_1951;
      }
      
      public function get avatarGender() : int
      {
         return this.var_1947;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1953;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_1952;
      }
      
      public function get realName() : String
      {
         return this.var_1610;
      }
   }
}
