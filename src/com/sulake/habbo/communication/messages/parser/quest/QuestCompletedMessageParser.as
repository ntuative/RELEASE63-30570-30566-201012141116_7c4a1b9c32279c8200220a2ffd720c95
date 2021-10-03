package com.sulake.habbo.communication.messages.parser.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestCompletedMessageParser implements IMessageParser
   {
       
      
      private var var_1532:String;
      
      private var var_980:QuestMessageData;
      
      public function QuestCompletedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1532 = "";
         if(this.var_980)
         {
            this.var_980.dispose();
         }
         this.var_980 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1532 = param1.readString();
         this.var_980 = new QuestMessageData(param1);
         return true;
      }
      
      public function get campaignId() : String
      {
         return this.var_1532;
      }
      
      public function get questData() : QuestMessageData
      {
         return this.var_980;
      }
   }
}
