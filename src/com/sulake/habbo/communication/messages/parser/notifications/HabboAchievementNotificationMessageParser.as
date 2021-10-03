package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1267:int;
      
      private var var_1816:int;
      
      private var var_1900:int;
      
      private var var_1604:int;
      
      private var var_1268:int;
      
      private var var_1903:String = "";
      
      private var var_1902:String = "";
      
      private var var_1901:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1267 = param1.readInteger();
         this.var_1903 = param1.readString();
         this.var_1816 = param1.readInteger();
         this.var_1900 = param1.readInteger();
         this.var_1604 = param1.readInteger();
         this.var_1268 = param1.readInteger();
         this.var_1901 = param1.readInteger();
         this.var_1902 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1267;
      }
      
      public function get points() : int
      {
         return this.var_1816;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_1900;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1604;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1268;
      }
      
      public function get badgeID() : String
      {
         return this.var_1903;
      }
      
      public function get achievementID() : int
      {
         return this.var_1901;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_1902;
      }
   }
}
