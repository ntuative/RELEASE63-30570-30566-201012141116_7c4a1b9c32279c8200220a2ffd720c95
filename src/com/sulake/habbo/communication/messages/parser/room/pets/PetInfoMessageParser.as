package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1488:int;
      
      private var _name:String;
      
      private var var_1267:int;
      
      private var var_2015:int;
      
      private var var_1983:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_614:String;
      
      private var var_2013:int;
      
      private var var_2018:int;
      
      private var var_2016:int;
      
      private var var_2017:int;
      
      private var var_2012:int;
      
      private var _ownerName:String;
      
      private var var_2014:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1488;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1267;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2015;
      }
      
      public function get experience() : int
      {
         return this.var_1983;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_614;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2013;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2018;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2016;
      }
      
      public function get respect() : int
      {
         return this.var_2017;
      }
      
      public function get ownerId() : int
      {
         return this.var_2012;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_2014;
      }
      
      public function flush() : Boolean
      {
         this.var_1488 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1488 = param1.readInteger();
         this._name = param1.readString();
         this.var_1267 = param1.readInteger();
         this.var_2015 = param1.readInteger();
         this.var_1983 = param1.readInteger();
         this.var_2013 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2018 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2016 = param1.readInteger();
         this.var_614 = param1.readString();
         this.var_2017 = param1.readInteger();
         this.var_2012 = param1.readInteger();
         this.var_2014 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
