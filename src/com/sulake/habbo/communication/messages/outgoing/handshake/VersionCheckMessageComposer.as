package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2351:int;
      
      private var var_1277:String;
      
      private var var_2352:String;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         this.var_2351 = param1;
         this.var_1277 = param2;
         this.var_2352 = param3;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2351,this.var_1277,this.var_2352];
      }
   }
}
