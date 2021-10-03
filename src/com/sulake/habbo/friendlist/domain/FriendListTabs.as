package com.sulake.habbo.friendlist.domain
{
   import com.sulake.habbo.friendlist.FriendRequestsView;
   import com.sulake.habbo.friendlist.FriendsView;
   import com.sulake.habbo.friendlist.SearchView;
   
   public class FriendListTabs
   {
       
      
      private var var_403:IFriendListTabsDeps;
      
      private var var_370:Array;
      
      private var var_1746:FriendListTab;
      
      private var var_1112:int = 200;
      
      private var var_2468:int = 200;
      
      private var var_1745:int = 200;
      
      public function FriendListTabs(param1:IFriendListTabsDeps)
      {
         this.var_370 = new Array();
         super();
         this.var_403 = param1;
         this.var_370.push(new FriendListTab(this.var_403.getFriendList(),FriendListTab.const_94,new FriendsView(),"${friendlist.friends}","friends_footer","hdr_friends"));
         this.var_370.push(new FriendListTab(this.var_403.getFriendList(),FriendListTab.const_93,new FriendRequestsView(),"${friendlist.tab.friendrequests}","friend_requests_footer","hdr_friend_requests"));
         this.var_370.push(new FriendListTab(this.var_403.getFriendList(),FriendListTab.const_363,new SearchView(),"${generic.search}","search_footer","hdr_search"));
         this.toggleSelected(null);
      }
      
      public function getTabs() : Array
      {
         return this.var_370;
      }
      
      public function findTab(param1:int) : FriendListTab
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
      
      public function clearSelections() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_370)
         {
            _loc1_.setSelected(false);
         }
      }
      
      public function findSelectedTab() : FriendListTab
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
      
      public function toggleSelected(param1:FriendListTab) : void
      {
         var _loc2_:FriendListTab = this.findSelectedTab();
         if(_loc2_ == null)
         {
            this.var_1112 = this.var_2468;
            this.setSelected(this.determineDisplayedTab(param1),true);
         }
         else if(_loc2_ == param1 || param1 == null)
         {
            this.var_2468 = this.var_1112;
            this.var_1112 = 0;
            this.clearSelections();
         }
         else
         {
            this.setSelected(this.determineDisplayedTab(param1),true);
         }
      }
      
      private function setSelected(param1:FriendListTab, param2:Boolean) : void
      {
         var _loc3_:FriendListTab = this.findSelectedTab();
         this.clearSelections();
         param1.setSelected(param2);
         if(param2)
         {
            this.var_1746 = param1;
         }
      }
      
      private function determineDisplayedTab(param1:FriendListTab) : FriendListTab
      {
         if(param1 != null)
         {
            return param1;
         }
         if(this.var_1746 != null)
         {
            return this.var_1746;
         }
         return this.var_370[0];
      }
      
      public function get tabContentHeight() : int
      {
         return this.var_1112;
      }
      
      public function get windowWidth() : int
      {
         return this.var_1745;
      }
      
      public function get tabContentWidth() : int
      {
         return this.var_1745 - 2;
      }
      
      public function set tabContentHeight(param1:int) : void
      {
         this.var_1112 = param1;
      }
      
      public function set windowWidth(param1:int) : void
      {
         this.var_1745 = param1;
      }
   }
}
