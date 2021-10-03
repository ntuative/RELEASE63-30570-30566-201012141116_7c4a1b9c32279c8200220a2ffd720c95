package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_164:String = "hex";
      
      public static const const_50:String = "int";
      
      public static const const_288:String = "uint";
      
      public static const const_219:String = "Number";
      
      public static const const_53:String = "Boolean";
      
      public static const const_90:String = "String";
      
      public static const const_210:String = "Point";
      
      public static const const_232:String = "Rectangle";
      
      public static const const_155:String = "Array";
      
      public static const const_244:String = "Map";
       
      
      private var var_552:String;
      
      private var var_159:Object;
      
      private var _type:String;
      
      private var var_2305:Boolean;
      
      private var var_2641:Boolean;
      
      private var var_2306:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_552 = param1;
         this.var_159 = param2;
         this._type = param3;
         this.var_2305 = param4;
         this.var_2641 = param3 == const_244 || param3 == const_155 || param3 == const_210 || param3 == const_232;
         this.var_2306 = param5;
      }
      
      public function get key() : String
      {
         return this.var_552;
      }
      
      public function get value() : Object
      {
         return this.var_159;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_2305;
      }
      
      public function get range() : Array
      {
         return this.var_2306;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_164:
               return "0x" + uint(this.var_159).toString(16);
            case const_53:
               return Boolean(this.var_159) == true ? "true" : "false";
            case const_210:
               return "Point(" + Point(this.var_159).x + ", " + Point(this.var_159).y + ")";
            case const_232:
               return "Rectangle(" + Rectangle(this.var_159).x + ", " + Rectangle(this.var_159).y + ", " + Rectangle(this.var_159).width + ", " + Rectangle(this.var_159).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_244:
               _loc3_ = this.var_159 as Map;
               _loc1_ = "<var key=\"" + this.var_552 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_155:
               _loc4_ = this.var_159 as Array;
               _loc1_ = "<var key=\"" + this.var_552 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_210:
               _loc5_ = this.var_159 as Point;
               _loc1_ = "<var key=\"" + this.var_552 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_50 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_50 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_232:
               _loc6_ = this.var_159 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_552 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_50 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_50 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_50 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_50 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_164:
               _loc1_ = "<var key=\"" + this.var_552 + "\" value=\"" + "0x" + uint(this.var_159).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_552 + "\" value=\"" + this.var_159 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
