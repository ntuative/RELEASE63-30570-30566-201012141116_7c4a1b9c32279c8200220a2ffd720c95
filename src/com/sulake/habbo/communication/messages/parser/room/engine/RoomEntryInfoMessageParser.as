package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1670:Boolean;
      
      private var var_2365:int;
      
      private var var_379:Boolean;
      
      private var var_1069:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1670;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2365;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1069;
      }
      
      public function get owner() : Boolean
      {
         return this.var_379;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1069 != null)
         {
            this.var_1069.dispose();
            this.var_1069 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1670 = param1.readBoolean();
         if(this.var_1670)
         {
            this.var_2365 = param1.readInteger();
            this.var_379 = param1.readBoolean();
         }
         else
         {
            this.var_1069 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
