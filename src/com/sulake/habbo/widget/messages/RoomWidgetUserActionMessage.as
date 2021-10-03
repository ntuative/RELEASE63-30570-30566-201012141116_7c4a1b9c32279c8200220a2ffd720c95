package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_676:String = "RWUAM_WHISPER_USER";
      
      public static const const_651:String = "RWUAM_IGNORE_USER";
      
      public static const const_602:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_447:String = "RWUAM_KICK_USER";
      
      public static const const_762:String = "RWUAM_BAN_USER";
      
      public static const const_809:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_712:String = "RWUAM_RESPECT_USER";
      
      public static const const_727:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_628:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_662:String = "RWUAM_START_TRADING";
      
      public static const const_632:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_397:String = "RWUAM_KICK_BOT";
      
      public static const const_710:String = "RWUAM_REPORT";
      
      public static const const_458:String = "RWUAM_PICKUP_PET";
      
      public static const const_1285:String = "RWUAM_TRAIN_PET";
      
      public static const const_536:String = " RWUAM_RESPECT_PET";
      
      public static const const_320:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
