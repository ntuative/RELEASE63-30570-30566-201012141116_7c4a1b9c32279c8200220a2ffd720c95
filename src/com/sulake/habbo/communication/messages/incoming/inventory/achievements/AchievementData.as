package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1267:int;
      
      private var var_269:String;
      
      private var var_1976:int;
      
      private var var_1900:int;
      
      private var var_1604:int;
      
      private var var_1975:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1267 = param1.readInteger();
         this.var_269 = param1.readString();
         this.var_1976 = param1.readInteger();
         this.var_1900 = param1.readInteger();
         this.var_1604 = param1.readInteger();
         this.var_1975 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_269;
      }
      
      public function get level() : int
      {
         return this.var_1267;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1976;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_1900;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1604;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1975;
      }
   }
}
