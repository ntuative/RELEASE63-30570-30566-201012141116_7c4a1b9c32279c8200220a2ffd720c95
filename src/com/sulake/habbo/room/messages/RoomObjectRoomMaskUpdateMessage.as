package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectRoomMaskUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_474:String = "RORMUM_ADD_MASK";
      
      public static const const_667:String = "RORMUM_ADD_MASK";
      
      public static const const_1362:String = "door";
      
      public static const const_475:String = "window";
      
      public static const const_221:String = "hole";
       
      
      private var _type:String = "";
      
      private var var_2570:String = "";
      
      private var var_2569:String = "";
      
      private var var_2568:Vector3d = null;
      
      private var var_2567:String = "window";
      
      public function RoomObjectRoomMaskUpdateMessage(param1:String, param2:String, param3:String = null, param4:IVector3d = null, param5:String = "window")
      {
         super(null,null);
         this._type = param1;
         this.var_2570 = param2;
         this.var_2569 = param3;
         if(param4 != null)
         {
            this.var_2568 = new Vector3d(param4.x,param4.y,param4.z);
         }
         this.var_2567 = param5;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get maskId() : String
      {
         return this.var_2570;
      }
      
      public function get maskType() : String
      {
         return this.var_2569;
      }
      
      public function get maskLocation() : IVector3d
      {
         return this.var_2568;
      }
      
      public function get maskCategory() : String
      {
         return this.var_2567;
      }
   }
}
