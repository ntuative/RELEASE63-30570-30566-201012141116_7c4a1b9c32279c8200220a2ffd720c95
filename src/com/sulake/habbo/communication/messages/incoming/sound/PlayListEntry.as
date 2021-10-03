package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2019:int;
      
      private var var_2023:int;
      
      private var var_2021:String;
      
      private var var_2020:String;
      
      private var var_2022:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2019 = param1;
         this.var_2023 = param2;
         this.var_2021 = param3;
         this.var_2020 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2019;
      }
      
      public function get length() : int
      {
         return this.var_2023;
      }
      
      public function get name() : String
      {
         return this.var_2021;
      }
      
      public function get creator() : String
      {
         return this.var_2020;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2022;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2022 = param1;
      }
   }
}
