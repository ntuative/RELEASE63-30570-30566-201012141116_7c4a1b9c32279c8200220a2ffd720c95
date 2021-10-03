package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1997:int = 0;
      
      private var var_1190:String = "";
      
      private var var_1441:String = "";
      
      private var var_1956:String = "";
      
      private var var_2083:String = "";
      
      private var var_1513:int = 0;
      
      private var var_2082:int = 0;
      
      private var var_2080:int = 0;
      
      private var var_1192:int = 0;
      
      private var var_2081:int = 0;
      
      private var var_1189:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_1997 = param1;
         this.var_1190 = param2;
         this.var_1441 = param3;
         this.var_1956 = param4;
         this.var_2083 = param5;
         if(param6)
         {
            this.var_1513 = 1;
         }
         else
         {
            this.var_1513 = 0;
         }
         this.var_2082 = param7;
         this.var_2080 = param8;
         this.var_1192 = param9;
         this.var_2081 = param10;
         this.var_1189 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1997,this.var_1190,this.var_1441,this.var_1956,this.var_2083,this.var_1513,this.var_2082,this.var_2080,this.var_1192,this.var_2081,this.var_1189];
      }
   }
}
