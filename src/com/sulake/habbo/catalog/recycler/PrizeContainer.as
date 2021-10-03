package com.sulake.habbo.catalog.recycler
{
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   
   public class PrizeContainer extends PrizeGridItem
   {
       
      
      private var var_1887:String;
      
      private var var_1417:int;
      
      private var var_1886:int;
      
      private var _furnitureData:IFurnitureData;
      
      private var var_2621:PrizeGridItem;
      
      public function PrizeContainer(param1:String, param2:int, param3:IFurnitureData, param4:int)
      {
         super();
         this.var_1887 = param1;
         this.var_1417 = param2;
         this._furnitureData = param3;
         this.var_1886 = param4;
      }
      
      public function setIcon(param1:IRoomEngine) : void
      {
         initProductIcon(param1,this._furnitureData.type,this.var_1417);
      }
      
      public function get productItemType() : String
      {
         return this.var_1887;
      }
      
      public function get productItemTypeId() : int
      {
         return this.var_1417;
      }
      
      public function get gridItem() : PrizeGridItem
      {
         return this.var_2621;
      }
      
      public function get oddsLevelId() : int
      {
         return this.var_1886;
      }
      
      public function get title() : String
      {
         if(this._furnitureData == null)
         {
            return "";
         }
         return this._furnitureData.title;
      }
   }
}
