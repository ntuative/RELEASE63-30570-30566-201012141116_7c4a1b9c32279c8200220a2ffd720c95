package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2510:int;
      
      private var var_2512:int;
      
      private var var_2508:int;
      
      private var var_2509:int;
      
      private var var_2513:int;
      
      private var var_2511:int;
      
      private var var_91:Array;
      
      private var var_189:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_91 = new Array();
         this.var_189 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2510 = param1.readInteger();
         this.var_2512 = param1.readInteger();
         this.var_2508 = param1.readInteger();
         this.var_2509 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_91.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_189.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2513 = param1.readInteger();
         this.var_2511 = param1.readInteger();
         return true;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2510;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2512;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2508;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2513;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2511;
      }
      
      public function get categories() : Array
      {
         return this.var_91;
      }
      
      public function get friends() : Array
      {
         return this.var_189;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2509;
      }
   }
}
