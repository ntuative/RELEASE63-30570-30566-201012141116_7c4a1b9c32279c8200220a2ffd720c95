package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_326:int = 1;
      
      public static const const_246:int = 2;
      
      public static const const_261:int = 3;
      
      public static const const_329:int = 4;
      
      public static const const_208:int = 5;
      
      public static const const_321:int = 1;
      
      public static const const_609:int = 2;
      
      public static const const_717:int = 3;
      
      public static const const_764:int = 4;
      
      public static const const_216:int = 5;
      
      public static const const_767:int = 6;
      
      public static const const_779:int = 7;
      
      public static const const_231:int = 8;
      
      public static const const_354:int = 9;
      
      public static const const_1617:int = 10;
      
      public static const const_675:int = 11;
      
      public static const const_529:int = 12;
       
      
      private var var_370:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_370 = new Array();
         this.var_370.push(new Tab(this._navigator,const_326,const_529,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_512));
         this.var_370.push(new Tab(this._navigator,const_246,const_321,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_512));
         this.var_370.push(new Tab(this._navigator,const_329,const_675,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1036));
         this.var_370.push(new Tab(this._navigator,const_261,const_216,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_512));
         this.var_370.push(new Tab(this._navigator,const_208,const_231,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_659));
         this.setSelectedTab(const_326);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_329;
      }
      
      public function get tabs() : Array
      {
         return this.var_370;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_370)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_370)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_370)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
