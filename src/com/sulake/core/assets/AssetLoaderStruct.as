package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_850:IAssetLoader;
      
      private var var_1644:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1644 = param1;
         this.var_850 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1644;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_850;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_850 != null)
            {
               if(!this.var_850.disposed)
               {
                  this.var_850.dispose();
                  this.var_850 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
