package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1656:int = 1;
      
      public static const const_1780:int = 2;
      
      public static const const_1632:int = 3;
      
      public static const const_1726:int = 4;
      
      public static const const_1497:int = 5;
      
      public static const const_1682:int = 6;
      
      public static const const_1320:int = 7;
      
      public static const const_1482:int = 8;
      
      public static const const_1621:int = 9;
      
      public static const const_1418:int = 10;
      
      public static const const_1308:int = 11;
      
      public static const const_1478:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1458:int;
      
      private var var_1939:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1458 = param1.readInteger();
         this.var_1939 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1458;
      }
      
      public function get info() : String
      {
         return this.var_1939;
      }
   }
}
