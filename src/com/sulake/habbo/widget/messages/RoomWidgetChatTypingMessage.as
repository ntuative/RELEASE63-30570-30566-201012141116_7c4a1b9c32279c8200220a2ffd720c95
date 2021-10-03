package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_616:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_811:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_616);
         this.var_811 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_811;
      }
   }
}
