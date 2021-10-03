package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1316:String = "WN_CRETAE";
      
      public static const const_1384:String = "WN_CREATED";
      
      public static const const_1046:String = "WN_DESTROY";
      
      public static const const_953:String = "WN_DESTROYED";
      
      public static const const_1038:String = "WN_OPEN";
      
      public static const const_951:String = "WN_OPENED";
      
      public static const const_1028:String = "WN_CLOSE";
      
      public static const const_1015:String = "WN_CLOSED";
      
      public static const const_952:String = "WN_FOCUS";
      
      public static const const_1104:String = "WN_FOCUSED";
      
      public static const const_1077:String = "WN_UNFOCUS";
      
      public static const const_1049:String = "WN_UNFOCUSED";
      
      public static const const_921:String = "WN_ACTIVATE";
      
      public static const const_335:String = "WN_ACTVATED";
      
      public static const const_988:String = "WN_DEACTIVATE";
      
      public static const const_1081:String = "WN_DEACTIVATED";
      
      public static const const_534:String = "WN_SELECT";
      
      public static const const_347:String = "WN_SELECTED";
      
      public static const const_806:String = "WN_UNSELECT";
      
      public static const const_789:String = "WN_UNSELECTED";
      
      public static const const_1067:String = "WN_LOCK";
      
      public static const const_1012:String = "WN_LOCKED";
      
      public static const const_1068:String = "WN_UNLOCK";
      
      public static const const_1021:String = "WN_UNLOCKED";
      
      public static const const_996:String = "WN_ENABLE";
      
      public static const const_570:String = "WN_ENABLED";
      
      public static const const_934:String = "WN_DISABLE";
      
      public static const const_756:String = "WN_DISABLED";
      
      public static const const_753:String = "WN_RESIZE";
      
      public static const const_181:String = "WN_RESIZED";
      
      public static const const_1096:String = "WN_RELOCATE";
      
      public static const const_511:String = "WN_RELOCATED";
      
      public static const const_1030:String = "WN_MINIMIZE";
      
      public static const const_1095:String = "WN_MINIMIZED";
      
      public static const const_1056:String = "WN_MAXIMIZE";
      
      public static const const_933:String = "WN_MAXIMIZED";
      
      public static const const_923:String = "WN_RESTORE";
      
      public static const const_936:String = "WN_RESTORED";
      
      public static const const_1659:String = "WN_ARRANGE";
      
      public static const const_1736:String = "WN_ARRANGED";
      
      public static const const_1651:String = "WN_UPDATE";
      
      public static const const_1646:String = "WN_UPDATED";
      
      public static const const_346:String = "WN_CHILD_ADDED";
      
      public static const const_600:String = "WN_CHILD_REMOVED";
      
      public static const WINDOW_NOTIFY_CHILD_RESIZED:String = "WN_CHILD_RESIZED";
      
      public static const const_302:String = "WN_CHILD_RELOCATED";
      
      public static const const_245:String = "WN_CHILD_ACTIVATED";
      
      public static const const_489:String = "WN_PARENT_ADDED";
      
      public static const const_1011:String = "WN_PARENT_REMOVED";
      
      public static const const_395:String = "WN_PARENT_RESIZED";
      
      public static const const_894:String = "WN_PARENT_RELOCATED";
      
      public static const const_608:String = "WN_PARENT_ACTIVATED";
      
      public static const const_477:String = "WN_STATE_UPDATED";
      
      public static const const_480:String = "WN_STYLE_UPDATED";
      
      public static const const_503:String = "WN_PARAM_UPDATED";
      
      public static const const_1619:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1867,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
