package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1229:Array;
      
      private var var_2327:String;
      
      private var var_2326:String;
      
      private var var_2325:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         this.var_1229 = param1;
         this.var_2327 = param2;
         this.var_2326 = param3;
         this.var_2325 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_1229;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2327;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2326;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2325;
      }
   }
}
