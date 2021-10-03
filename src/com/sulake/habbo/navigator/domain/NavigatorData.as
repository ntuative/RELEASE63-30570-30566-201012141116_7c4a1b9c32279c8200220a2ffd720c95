package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1559:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_175:MsgWithRequestId;
      
      private var var_543:RoomEventData;
      
      private var var_2225:Boolean;
      
      private var var_2231:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_1948:int;
      
      private var var_226:GuestRoomData;
      
      private var var_820:PublicRoomShortData;
      
      private var var_2223:int;
      
      private var var_2228:Boolean;
      
      private var var_2222:int;
      
      private var var_2230:Boolean;
      
      private var var_1584:int;
      
      private var var_2221:Boolean;
      
      private var var_1249:Array;
      
      private var var_1251:Array;
      
      private var var_2229:int;
      
      private var var_1250:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1008:Boolean;
      
      private var var_2224:int;
      
      private var var_2227:Boolean;
      
      private var var_2226:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1249 = new Array();
         this.var_1251 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_226 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_226 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_820 = null;
         this.var_226 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_820 = param1.publicSpace;
            this.var_543 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_543 != null)
         {
            this.var_543.dispose();
            this.var_543 = null;
         }
         if(this.var_820 != null)
         {
            this.var_820.dispose();
            this.var_820 = null;
         }
         if(this.var_226 != null)
         {
            this.var_226.dispose();
            this.var_226 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_226 != null)
         {
            this.var_226.dispose();
         }
         this.var_226 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_543 != null)
         {
            this.var_543.dispose();
         }
         this.var_543 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_175 != null && this.var_175 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_175 != null && this.var_175 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_175 != null && this.var_175 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_175 = param1;
         this.var_1008 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_175 = param1;
         this.var_1008 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_175 = param1;
         this.var_1008 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_175 == null)
         {
            return;
         }
         this.var_175.dispose();
         this.var_175 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_175 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_175 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_175 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_543;
      }
      
      public function get avatarId() : int
      {
         return this.var_1948;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2225;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2231;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_226;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_820;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2228;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2222;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1584;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2230;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2224;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2223;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2221;
      }
      
      public function get adIndex() : int
      {
         return this.var_2226;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2227;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_1948 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2222 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2228 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2225 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2231 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2230 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1584 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2224 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2223 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2221 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2226 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2227 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1249 = param1;
         this.var_1251 = new Array();
         for each(_loc2_ in this.var_1249)
         {
            if(_loc2_.visible)
            {
               this.var_1251.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1249;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1251;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2229 = param1.limit;
         this.var_1250 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1250 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_226.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_226 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_226.flatId;
         return this.var_1584 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1250 >= this.var_2229;
      }
      
      public function startLoading() : void
      {
         this.var_1008 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1008;
      }
   }
}
