package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1503:int;
      
      private var var_2045:int;
      
      private var var_1335:int;
      
      private var var_1917:int;
      
      private var var_102:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1503 = param1.readInteger();
         this.var_2045 = param1.readInteger();
         this.var_1335 = param1.readInteger();
         this.var_1917 = param1.readInteger();
         this.var_102 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1503);
      }
      
      public function get callId() : int
      {
         return this.var_1503;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2045;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1335;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_1917;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_102;
      }
   }
}
