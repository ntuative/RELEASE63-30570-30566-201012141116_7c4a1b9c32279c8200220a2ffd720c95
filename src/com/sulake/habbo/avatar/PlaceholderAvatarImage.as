package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_711:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_700)
         {
            _structure = null;
            _assets = null;
            var_232 = null;
            var_254 = null;
            var_614 = null;
            var_509 = null;
            var_287 = null;
            if(!var_1169 && var_39)
            {
               var_39.dispose();
            }
            var_39 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_678 = null;
            var_700 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_711[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_711[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_337:
               switch(_loc3_)
               {
                  case AvatarAction.const_643:
                  case AvatarAction.const_431:
                  case AvatarAction.const_339:
                  case AvatarAction.const_704:
                  case AvatarAction.const_336:
                  case AvatarAction.const_565:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_284:
            case AvatarAction.const_793:
            case AvatarAction.const_251:
            case AvatarAction.const_657:
            case AvatarAction.const_663:
            case AvatarAction.const_595:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
