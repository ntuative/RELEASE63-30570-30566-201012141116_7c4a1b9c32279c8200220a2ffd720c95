package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_30:String = "AssetLoaderEventComplete";
      
      public static const const_950:String = "AssetLoaderEventProgress";
      
      public static const const_966:String = "AssetLoaderEventUnload";
      
      public static const const_955:String = "AssetLoaderEventStatus";
      
      public static const const_42:String = "AssetLoaderEventError";
      
      public static const const_1112:String = "AssetLoaderEventOpen";
       
      
      private var _status:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this._status = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this._status;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this._status);
      }
   }
}
