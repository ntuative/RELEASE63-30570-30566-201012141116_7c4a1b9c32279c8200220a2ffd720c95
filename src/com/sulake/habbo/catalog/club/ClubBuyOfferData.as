package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1522:String;
      
      private var var_1521:int;
      
      private var var_2103:Boolean;
      
      private var var_2105:Boolean;
      
      private var var_2106:int;
      
      private var var_2101:int;
      
      private var var_353:ICatalogPage;
      
      private var var_2102:int;
      
      private var var_2107:int;
      
      private var var_2104:int;
      
      private var var_2108:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1522 = param2;
         this.var_1521 = param3;
         this.var_2103 = param4;
         this.var_2105 = param5;
         this.var_2106 = param6;
         this.var_2101 = param7;
         this.var_2102 = param8;
         this.var_2107 = param9;
         this.var_2104 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1522;
      }
      
      public function get price() : int
      {
         return this.var_1521;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2103;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2105;
      }
      
      public function get periods() : int
      {
         return this.var_2106;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2101;
      }
      
      public function get year() : int
      {
         return this.var_2102;
      }
      
      public function get month() : int
      {
         return this.var_2107;
      }
      
      public function get day() : int
      {
         return this.var_2104;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_398;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1521;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_353;
      }
      
      public function get priceType() : String
      {
         return Offer.const_537;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1522;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_353 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2108;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2108 = param1;
      }
   }
}
