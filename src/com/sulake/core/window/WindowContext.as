package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_455:uint = 0;
      
      public static const const_1505:uint = 1;
      
      public static const const_1725:int = 0;
      
      public static const const_1663:int = 1;
      
      public static const const_1613:int = 2;
      
      public static const const_1787:int = 3;
      
      public static const const_1461:int = 4;
      
      public static const const_364:int = 5;
      
      public static var var_1406:IMouseCursor;
      
      public static var var_344:IEventQueue;
      
      private static var var_555:IEventProcessor;
      
      private static var var_1641:uint = const_455;
      
      private static var stage:Stage;
      
      private static var var_134:IWindowRenderer;
       
      
      private var _eventProcessorState:EventProcessorState;
      
      private var var_2311:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_171:DisplayObjectContainer;
      
      protected var var_2662:Boolean = true;
      
      protected var var_1160:Error;
      
      protected var var_1874:int = -1;
      
      protected var var_1161:IInternalWindowServices;
      
      protected var var_1410:IWindowParser;
      
      protected var var_2611:IWindowFactory;
      
      protected var var_130:IDesktopWindow;
      
      protected var var_1411:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_503:Boolean = false;
      
      private var var_2310:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_134 = param2;
         this._localization = param4;
         this.var_171 = param5;
         this.var_1161 = new ServiceManager(this,param5);
         this.var_2611 = param3;
         this.var_1410 = new WindowParser(this);
         this.var_2311 = param7;
         if(!stage)
         {
            if(this.var_171 is Stage)
            {
               stage = this.var_171 as Stage;
            }
            else if(this.var_171.stage)
            {
               stage = this.var_171.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_130 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_171.addChild(this.var_130.getDisplayObject());
         this.var_171.doubleClickEnabled = true;
         this.var_171.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this._eventProcessorState = new EventProcessorState(var_134,this.var_130,this.var_130,null,this.var_2311);
         inputMode = const_455;
         this.var_1411 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1641;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_344)
         {
            if(var_344 is IDisposable)
            {
               IDisposable(var_344).dispose();
            }
         }
         if(var_555)
         {
            if(var_555 is IDisposable)
            {
               IDisposable(var_555).dispose();
            }
         }
         switch(value)
         {
            case const_455:
               var_344 = new MouseEventQueue(stage);
               var_555 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1505:
               var_344 = new TabletEventQueue(stage);
               var_555 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_455;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_171.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_171.removeChild(IGraphicContextHost(this.var_130).getGraphicContext(true) as DisplayObject);
            this.var_130.destroy();
            this.var_130 = null;
            this.var_1411.destroy();
            this.var_1411 = null;
            if(this.var_1161 is IDisposable)
            {
               IDisposable(this.var_1161).dispose();
            }
            this.var_1161 = null;
            this.var_1410.dispose();
            this.var_1410 = null;
            var_134 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1160;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_1874;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1160 = param2;
         this.var_1874 = param1;
         if(this.var_2662)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1160 = null;
         this.var_1874 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1161;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1410;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2611;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_130;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1406 == null)
         {
            var_1406 = new MouseCursorControl(this.var_171);
         }
         return var_1406;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_130.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:Class = Classes.getWindowClassByType(param3);
         if(_loc12_ == null)
         {
            this.handleError(WindowContext.const_1461,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1411;
            }
         }
         var _loc13_:IWindow = new _loc12_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_130,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc13_.caption = param2;
         }
         return _loc13_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_130)
         {
            this.var_130 = null;
         }
         if(param1.state != WindowState.const_538)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_134.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_503 = true;
         if(this.var_1160)
         {
            throw this.var_1160;
         }
         var_555.process(this._eventProcessorState,var_344);
         this.var_503 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2310 = true;
         var_134.update(param1);
         this.var_2310 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_130 != null && !this.var_130.disposed)
         {
            if(this.var_171 is Stage)
            {
               this.var_130.width = Stage(this.var_171).stageWidth;
               this.var_130.height = Stage(this.var_171).stageHeight;
            }
            else
            {
               this.var_130.width = this.var_171.width;
               this.var_130.height = this.var_171.height;
            }
         }
      }
   }
}
