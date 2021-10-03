package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.communication.messages.outgoing.quest.ActivateQuestMessageComposer;
   import flash.utils.Dictionary;
   
   public class QuestController implements IDisposable
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_714:Dictionary;
      
      private var var_327:QuestCampaign;
      
      private var var_700:Boolean = false;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         this.var_714 = new Dictionary();
         super();
         this._questEngine = param1;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_714)
         {
            _loc1_.dispose();
         }
         this.var_714 = null;
         this.var_700 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_700;
      }
      
      private function reset() : void
      {
         if(this.var_327)
         {
            this.var_327.dispose();
            this.var_327 = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.var_327 != null && this.var_327.isVisible();
      }
      
      public function close() : void
      {
         if(this.var_327)
         {
            this.var_327.close();
         }
      }
      
      public function questAccepted(param1:String, param2:QuestMessageData) : void
      {
         var _loc3_:QuestCampaign = this.var_714[param1];
         if(_loc3_)
         {
            _loc3_.questAccepted(param2);
         }
      }
      
      public function questCompleted(param1:String, param2:QuestMessageData) : void
      {
         var _loc3_:QuestCampaign = this.var_714[param1];
         if(_loc3_)
         {
            _loc3_.questCompleted(param2);
         }
      }
      
      public function activateQuest(param1:Quest) : void
      {
         if(param1)
         {
            this._questEngine.communication.getHabboMainConnection(null).send(new ActivateQuestMessageComposer(param1.id));
         }
      }
      
      public function get questEngine() : HabboQuestEngine
      {
         return this._questEngine;
      }
      
      public function openCampaign(param1:String, param2:int, param3:Array) : void
      {
         var _loc4_:QuestCampaign = this.var_714[param1];
         if(!_loc4_)
         {
            _loc4_ = new QuestCampaign(this,param1,param2);
            this.var_714[param1] = _loc4_;
         }
         this.var_327 = _loc4_;
         this.var_327.openCampaign(param3);
      }
      
      public function updatePurse() : void
      {
         if(!this.var_327)
         {
            return;
         }
         this.var_327.updatePurse();
      }
   }
}
