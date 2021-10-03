package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1415:String = "WE_CREATE";
      
      public static const const_1286:String = "WE_CREATED";
      
      public static const const_1407:String = "WE_DESTROY";
      
      public static const const_278:String = "WE_DESTROYED";
      
      public static const const_1484:String = "WE_OPEN";
      
      public static const const_1273:String = "WE_OPENED";
      
      public static const const_1517:String = "WE_CLOSE";
      
      public static const const_1435:String = "WE_CLOSED";
      
      public static const const_1340:String = "WE_FOCUS";
      
      public static const const_161:String = "WE_FOCUSED";
      
      public static const const_1393:String = "WE_UNFOCUS";
      
      public static const const_1370:String = "WE_UNFOCUSED";
      
      public static const const_1312:String = "WE_ACTIVATE";
      
      public static const const_1495:String = "WE_ACTIVATED";
      
      public static const const_1440:String = "WE_DEACTIVATE";
      
      public static const const_1098:String = "WE_DEACTIVATED";
      
      public static const const_438:String = "WE_SELECT";
      
      public static const const_58:String = "WE_SELECTED";
      
      public static const const_715:String = "WE_UNSELECT";
      
      public static const const_587:String = "WE_UNSELECTED";
      
      public static const const_1752:String = "WE_ATTACH";
      
      public static const const_1641:String = "WE_ATTACHED";
      
      public static const const_1649:String = "WE_DETACH";
      
      public static const const_1810:String = "WE_DETACHED";
      
      public static const const_1502:String = "WE_LOCK";
      
      public static const const_1374:String = "WE_LOCKED";
      
      public static const const_1279:String = "WE_UNLOCK";
      
      public static const const_1460:String = "WE_UNLOCKED";
      
      public static const const_573:String = "WE_ENABLE";
      
      public static const const_292:String = "WE_ENABLED";
      
      public static const const_785:String = "WE_DISABLE";
      
      public static const const_248:String = "WE_DISABLED";
      
      public static const const_1309:String = "WE_RELOCATE";
      
      public static const const_342:String = "WE_RELOCATED";
      
      public static const const_1369:String = "WE_RESIZE";
      
      public static const const_44:String = "WE_RESIZED";
      
      public static const const_1355:String = "WE_MINIMIZE";
      
      public static const const_1270:String = "WE_MINIMIZED";
      
      public static const const_1353:String = "WE_MAXIMIZE";
      
      public static const const_1368:String = "WE_MAXIMIZED";
      
      public static const const_1481:String = "WE_RESTORE";
      
      public static const const_1258:String = "WE_RESTORED";
      
      public static const const_1645:String = "WE_ARRANGE";
      
      public static const const_1612:String = "WE_ARRANGED";
      
      public static const const_99:String = "WE_UPDATE";
      
      public static const const_1595:String = "WE_UPDATED";
      
      public static const const_1668:String = "WE_CHILD_RELOCATE";
      
      public static const const_451:String = "WE_CHILD_RELOCATED";
      
      public static const const_1709:String = "WE_CHILD_RESIZE";
      
      public static const const_270:String = "WE_CHILD_RESIZED";
      
      public static const const_1658:String = "WE_CHILD_REMOVE";
      
      public static const const_427:String = "WE_CHILD_REMOVED";
      
      public static const const_1599:String = "WE_PARENT_RELOCATE";
      
      public static const const_1638:String = "WE_PARENT_RELOCATED";
      
      public static const const_1797:String = "WE_PARENT_RESIZE";
      
      public static const const_1449:String = "WE_PARENT_RESIZED";
      
      public static const const_172:String = "WE_OK";
      
      public static const const_610:String = "WE_CANCEL";
      
      public static const const_104:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_472:String = "WE_SCROLL";
      
      public static const const_146:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1867:IWindow;
      
      protected var var_1868:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1867 = param3;
         this.var_1868 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1867;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1868 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1868;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
