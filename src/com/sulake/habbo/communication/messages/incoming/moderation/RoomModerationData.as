package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_317:int;
      
      private var var_1967:int;
      
      private var var_2427:Boolean;
      
      private var var_2012:int;
      
      private var _ownerName:String;
      
      private var var_102:RoomData;
      
      private var var_693:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_317 = param1.readInteger();
         this.var_1967 = param1.readInteger();
         this.var_2427 = param1.readBoolean();
         this.var_2012 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_102 = new RoomData(param1);
         this.var_693 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_102 != null)
         {
            this.var_102.dispose();
            this.var_102 = null;
         }
         if(this.var_693 != null)
         {
            this.var_693.dispose();
            this.var_693 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_317;
      }
      
      public function get userCount() : int
      {
         return this.var_1967;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2427;
      }
      
      public function get ownerId() : int
      {
         return this.var_2012;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_102;
      }
      
      public function get event() : RoomData
      {
         return this.var_693;
      }
   }
}
