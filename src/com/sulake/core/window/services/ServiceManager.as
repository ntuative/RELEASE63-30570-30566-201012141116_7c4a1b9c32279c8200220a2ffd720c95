package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2640:uint;
      
      private var var_132:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_239:IWindowContext;
      
      private var var_1047:IMouseDraggingService;
      
      private var var_1049:IMouseScalingService;
      
      private var var_1045:IMouseListenerService;
      
      private var var_1046:IFocusManagerService;
      
      private var var_1044:IToolTipAgentService;
      
      private var var_1048:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2640 = 0;
         this.var_132 = param2;
         this.var_239 = param1;
         this.var_1047 = new WindowMouseDragger(param2);
         this.var_1049 = new WindowMouseScaler(param2);
         this.var_1045 = new WindowMouseListener(param2);
         this.var_1046 = new FocusManager(param2);
         this.var_1044 = new WindowToolTipAgent(param2);
         this.var_1048 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1047 != null)
         {
            this.var_1047.dispose();
            this.var_1047 = null;
         }
         if(this.var_1049 != null)
         {
            this.var_1049.dispose();
            this.var_1049 = null;
         }
         if(this.var_1045 != null)
         {
            this.var_1045.dispose();
            this.var_1045 = null;
         }
         if(this.var_1046 != null)
         {
            this.var_1046.dispose();
            this.var_1046 = null;
         }
         if(this.var_1044 != null)
         {
            this.var_1044.dispose();
            this.var_1044 = null;
         }
         if(this.var_1048 != null)
         {
            this.var_1048.dispose();
            this.var_1048 = null;
         }
         this.var_132 = null;
         this.var_239 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1047;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1049;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1045;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1046;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1044;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1048;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
