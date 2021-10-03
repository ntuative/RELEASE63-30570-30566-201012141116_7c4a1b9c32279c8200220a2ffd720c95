package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2191:int;
      
      private var var_2192:int;
      
      private var var_713:Boolean;
      
      private var var_2189:int;
      
      private var var_2190:int;
      
      private var var_2188:int;
      
      private var var_2187:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2191 = param1.readInteger();
         this.var_2192 = param1.readInteger();
         this.var_713 = param1.readBoolean();
         this.var_2189 = param1.readInteger();
         this.var_2190 = param1.readInteger();
         this.var_2188 = param1.readInteger();
         this.var_2187 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2191;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2192;
      }
      
      public function get online() : Boolean
      {
         return this.var_713;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2189;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2190;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2188;
      }
      
      public function get banCount() : int
      {
         return this.var_2187;
      }
   }
}
