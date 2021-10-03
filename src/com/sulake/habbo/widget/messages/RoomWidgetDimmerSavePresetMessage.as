package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_679:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_1907:int;
      
      private var var_1906:int;
      
      private var _color:uint;
      
      private var var_1039:int;
      
      private var var_2090:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_679);
         this.var_1907 = param1;
         this.var_1906 = param2;
         this._color = param3;
         this.var_1039 = param4;
         this.var_2090 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_1907;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_1906;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1039;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2090;
      }
   }
}
