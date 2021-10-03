package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2142:String;
      
      private var var_2141:Class;
      
      private var var_2140:Class;
      
      private var var_1535:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2142 = param1;
         this.var_2141 = param2;
         this.var_2140 = param3;
         if(rest == null)
         {
            this.var_1535 = new Array();
         }
         else
         {
            this.var_1535 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2142;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2141;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2140;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1535;
      }
   }
}
