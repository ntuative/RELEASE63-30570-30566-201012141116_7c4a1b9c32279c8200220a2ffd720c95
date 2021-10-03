package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1035:int = 1;
      
      public static const const_601:int = 2;
      
      public static const const_683:int = 3;
      
      public static const const_1315:int = 4;
       
      
      private var _index:int;
      
      private var var_2314:String;
      
      private var var_2317:String;
      
      private var var_2318:Boolean;
      
      private var var_2316:String;
      
      private var var_774:String;
      
      private var var_2315:int;
      
      private var var_1967:int;
      
      private var _type:int;
      
      private var var_2000:String;
      
      private var var_844:GuestRoomData;
      
      private var var_843:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2314 = param1.readString();
         this.var_2317 = param1.readString();
         this.var_2318 = param1.readInteger() == 1;
         this.var_2316 = param1.readString();
         this.var_774 = param1.readString();
         this.var_2315 = param1.readInteger();
         this.var_1967 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1035)
         {
            this.var_2000 = param1.readString();
         }
         else if(this._type == const_683)
         {
            this.var_843 = new PublicRoomData(param1);
         }
         else if(this._type == const_601)
         {
            this.var_844 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_844 != null)
         {
            this.var_844.dispose();
            this.var_844 = null;
         }
         if(this.var_843 != null)
         {
            this.var_843.dispose();
            this.var_843 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2314;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2317;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2318;
      }
      
      public function get picText() : String
      {
         return this.var_2316;
      }
      
      public function get picRef() : String
      {
         return this.var_774;
      }
      
      public function get folderId() : int
      {
         return this.var_2315;
      }
      
      public function get tag() : String
      {
         return this.var_2000;
      }
      
      public function get userCount() : int
      {
         return this.var_1967;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_844;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_843;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1035)
         {
            return 0;
         }
         if(this.type == const_601)
         {
            return this.var_844.maxUserCount;
         }
         if(this.type == const_683)
         {
            return this.var_843.maxUsers;
         }
         return 0;
      }
   }
}
