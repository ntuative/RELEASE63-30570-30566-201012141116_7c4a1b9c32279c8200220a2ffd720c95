package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarTypingUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_811:Boolean;
      
      public function RoomObjectAvatarTypingUpdateMessage(param1:Boolean = false)
      {
         super();
         this.var_811 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_811;
      }
   }
}
