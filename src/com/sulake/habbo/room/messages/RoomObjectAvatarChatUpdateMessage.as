package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarChatUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2092:int;
      
      public function RoomObjectAvatarChatUpdateMessage(param1:int)
      {
         super();
         this.var_2092 = param1;
      }
      
      public function get numberOfWords() : int
      {
         return this.var_2092;
      }
   }
}
