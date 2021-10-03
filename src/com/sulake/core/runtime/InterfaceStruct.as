package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1253:IID;
      
      private var var_1592:String;
      
      private var var_112:IUnknown;
      
      private var var_671:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1253 = param1;
         this.var_1592 = getQualifiedClassName(this.var_1253);
         this.var_112 = param2;
         this.var_671 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1253;
      }
      
      public function get iis() : String
      {
         return this.var_1592;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_112;
      }
      
      public function get references() : uint
      {
         return this.var_671;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_112 == null;
      }
      
      public function dispose() : void
      {
         this.var_1253 = null;
         this.var_1592 = null;
         this.var_112 = null;
         this.var_671 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_671;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_671) : uint(0);
      }
   }
}
