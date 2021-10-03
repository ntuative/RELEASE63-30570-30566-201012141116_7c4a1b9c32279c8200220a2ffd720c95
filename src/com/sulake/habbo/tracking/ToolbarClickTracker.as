package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1173:IHabboTracking;
      
      private var var_1578:Boolean = false;
      
      private var var_2385:int = 0;
      
      private var var_1699:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1173 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1173 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1578 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2385 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1578)
         {
            return;
         }
         ++this.var_1699;
         if(this.var_1699 <= this.var_2385)
         {
            this.var_1173.track("toolbar",param1);
         }
      }
   }
}
