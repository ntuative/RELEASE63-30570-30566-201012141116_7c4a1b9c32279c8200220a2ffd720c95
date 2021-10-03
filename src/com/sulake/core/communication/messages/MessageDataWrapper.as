package com.sulake.core.communication.messages
{
   import com.sulake.core.communication.protocol.IProtocolDecoder;
   import com.sulake.core.communication.util.Short;
   import flash.utils.ByteArray;
   
   public class MessageDataWrapper implements IMessageDataWrapper
   {
       
      
      private var _data:ByteArray;
      
      private var var_1026:IProtocolDecoder;
      
      public function MessageDataWrapper(param1:ByteArray, param2:IProtocolDecoder)
      {
         super();
         this._data = param1;
         this.var_1026 = param2;
      }
      
      public function readString() : String
      {
         return this.var_1026.readString(this._data);
      }
      
      public function readInteger() : int
      {
         return this.var_1026.readInteger(this._data);
      }
      
      public function readBoolean() : Boolean
      {
         return this.var_1026.readBoolean(this._data);
      }
      
      public function readShort() : Short
      {
         return this.var_1026.readShort(this._data);
      }
      
      public function get bytesAvailable() : uint
      {
         return this._data.bytesAvailable;
      }
   }
}
