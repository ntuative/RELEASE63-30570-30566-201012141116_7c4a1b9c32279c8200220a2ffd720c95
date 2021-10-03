package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_78:String = "i";
      
      public static const const_83:String = "s";
      
      public static const const_215:String = "e";
       
      
      private var var_1452:String;
      
      private var var_2371:int;
      
      private var var_1196:String;
      
      private var var_1195:int;
      
      private var var_1454:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1452 = param1.readString();
         this.var_2371 = param1.readInteger();
         this.var_1196 = param1.readString();
         this.var_1195 = param1.readInteger();
         this.var_1454 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1452;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2371;
      }
      
      public function get extraParam() : String
      {
         return this.var_1196;
      }
      
      public function get productCount() : int
      {
         return this.var_1195;
      }
      
      public function get expiration() : int
      {
         return this.var_1454;
      }
   }
}
