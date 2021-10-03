package com.sulake.habbo.help.tutorial
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.ICoreWindowManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.avatar.ChangeUserNameResultMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.avatar.CheckUserNameResultMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.avatar.ChangeUserNameMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.avatar.CheckUserNameMessageComposer;
   import com.sulake.habbo.communication.messages.parser.avatar.ChangeUserNameResultMessageParser;
   import com.sulake.habbo.communication.messages.parser.avatar.CheckUserNameResultMessageParser;
   import com.sulake.habbo.help.HabboHelp;
   import com.sulake.habbo.help.INameChangeUI;
   import com.sulake.habbo.help.enum.HabboHelpTutorialEvent;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class TutorialUI implements INameChangeUI
   {
      
      public static const const_81:String = "TUI_MAIN_VIEW";
      
      public static const const_332:String = "TUI_NAME_VIEW";
      
      public static const const_314:String = "TUI_CLOTHES_VIEW";
      
      public static const const_450:String = "TUI_GUIDEBOT_VIEW";
       
      
      private var var_1706:int = 0;
      
      private var var_1705:int = 0;
      
      private var var_46:HabboHelp;
      
      private var _window:IFrameWindow;
      
      private var var_38:ITutorialUIView;
      
      private var var_319:NameChangeView;
      
      private var var_1317:Boolean = false;
      
      private var var_1081:Boolean = false;
      
      private var var_1318:Boolean = false;
      
      private var var_1690:Boolean = false;
      
      public function TutorialUI(param1:HabboHelp)
      {
         super();
         this.var_46 = param1;
         this.var_46.events.addEventListener(HabboHelpTutorialEvent.const_417,this.onTaskDoneEvent);
         this.var_46.events.addEventListener(HabboHelpTutorialEvent.const_471,this.onTaskDoneEvent);
         this.var_46.events.addEventListener(HabboHelpTutorialEvent.const_542,this.onTaskDoneEvent);
      }
      
      public function get help() : HabboHelp
      {
         return this.var_46;
      }
      
      public function get assets() : IAssetLibrary
      {
         return this.var_46.assets;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_46.localization;
      }
      
      public function get myName() : String
      {
         return this.var_46.ownUserName;
      }
      
      public function get hasTasksDone() : Boolean
      {
         return this.var_1317 && this.var_1081 && this.var_1318;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1317;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1081;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1318;
      }
      
      public function dispose() : void
      {
         this.disposeView();
         if(this.var_46)
         {
            this.var_46.events.removeEventListener(HabboHelpTutorialEvent.const_417,this.onTaskDoneEvent);
            this.var_46.events.removeEventListener(HabboHelpTutorialEvent.const_471,this.onTaskDoneEvent);
            this.var_46.events.removeEventListener(HabboHelpTutorialEvent.const_542,this.onTaskDoneEvent);
            this.var_46 = null;
         }
      }
      
      public function update(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         this.var_1317 = param1;
         this.var_1081 = param2;
         this.var_1318 = param3;
         if(this.var_38 == null || this.var_38.id == const_81)
         {
            this.prepareForTutorial();
            this.showView(const_81);
         }
      }
      
      public function onTaskDoneEvent(param1:HabboHelpTutorialEvent) : void
      {
         switch(param1.type)
         {
            case HabboHelpTutorialEvent.const_417:
               this.var_1318 = true;
               if(this.var_38 != null && this.var_38.id == const_450)
               {
                  this.showView(const_81);
               }
               break;
            case HabboHelpTutorialEvent.const_471:
               if(this.var_38 != null && this.var_38.id == const_314)
               {
                  this.var_1690 = true;
                  this.disposeWindow();
               }
               break;
            case HabboHelpTutorialEvent.const_542:
               if(this.var_1690)
               {
                  this.var_1690 = false;
                  this.showView(const_81);
               }
         }
      }
      
      public function showView(param1:String) : void
      {
         var _loc2_:* = null;
         if(this.hasTasksDone)
         {
            if(this.var_46)
            {
               this.var_46.removeTutorialUI();
            }
            return;
         }
         var _loc3_:Boolean = false;
         if(this._window == null)
         {
            this._window = this.buildXmlWindow("tutorial_frame") as IFrameWindow;
            if(this._window == null)
            {
               return;
            }
            this._window.procedure = this.windowProcedure;
            _loc2_ = this._window.findChildByName("content_list") as IItemListWindow;
            if(_loc2_ == null)
            {
               return;
            }
            this.var_1706 = this._window.width - _loc2_.width;
            this.var_1705 = this._window.height;
            _loc3_ = true;
         }
         _loc2_ = this._window.findChildByName("content_list") as IItemListWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.destroyListItems();
         _loc2_.height = 0;
         if(this.var_38 != null)
         {
            this.var_38.dispose();
         }
         this._window.visible = true;
         switch(param1)
         {
            case const_81:
               this.var_38 = new TutorialMainView(_loc2_,this);
               if(this.var_319 != null)
               {
                  this.var_319.dispose();
               }
               break;
            case const_332:
               this._window.visible = false;
               if(this.var_319 == null)
               {
                  this.var_319 = new NameChangeView(this);
               }
               this.var_319.showMainView();
               this.prepareForTutorial();
               break;
            case const_314:
               this.var_38 = new TutorialClothesChangeView(_loc2_,this);
               break;
            case const_450:
               this.var_38 = new TutorialCallGuideBotView(_loc2_,this);
         }
         this._window.height = _loc2_.height + this.var_1705;
         this._window.width = _loc2_.width + this.var_1706;
         if(_loc3_)
         {
            if(this._window == null)
            {
               return;
            }
            this._window.x = this._window.context.getDesktopWindow().width / 2 - this._window.width / 2;
            this._window.y = 0;
         }
      }
      
      public function buildXmlWindow(param1:String, param2:uint = 1) : IWindow
      {
         if(this.var_46 == null || this.var_46.assets == null)
         {
            return null;
         }
         var _loc3_:XmlAsset = XmlAsset(this.var_46.assets.getAssetByName(param1 + "_xml"));
         if(_loc3_ == null || this.var_46.windowManager == null)
         {
            return null;
         }
         var _loc4_:ICoreWindowManager = ICoreWindowManager(this.var_46.windowManager);
         return _loc4_.buildFromXML(XML(_loc3_.content),param2);
      }
      
      private function disposeWindow(param1:WindowEvent = null) : void
      {
         if(this._window != null)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      private function disposeView() : void
      {
         if(this.var_38 != null)
         {
            this.var_38.dispose();
            this.var_38 = null;
         }
         if(this.var_319 != null)
         {
            this.var_319.dispose();
            this.var_319 = null;
         }
         this.disposeWindow();
      }
      
      public function setRoomSessionStatus(param1:Boolean) : void
      {
         if(param1 == false)
         {
            this.disposeView();
         }
      }
      
      public function prepareForTutorial() : void
      {
         if(this.var_46 == null || this.var_46.events == null)
         {
            return;
         }
         this.var_46.hideUI();
         this.var_46.events.dispatchEvent(new HabboHelpTutorialEvent(HabboHelpTutorialEvent.const_113));
      }
      
      public function windowProcedure(param1:WindowEvent, param2:IWindow) : void
      {
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(param2.name == "header_button_close")
               {
                  this.disposeView();
               }
         }
      }
      
      public function changeName(param1:String) : void
      {
         this.disposeWindow();
         this.var_46.sendMessage(new ChangeUserNameMessageComposer(param1));
      }
      
      public function checkName(param1:String) : void
      {
         this.disposeWindow();
         this.var_46.sendMessage(new CheckUserNameMessageComposer(param1));
      }
      
      public function onUserNameChanged(param1:String) : void
      {
         var name:String = param1;
         if(!this.var_46 || !this.var_46.localization || !this.var_46.windowManager)
         {
            return;
         }
         this.var_1081 = true;
         this.var_46.localization.registerParameter("help.tutorial.name.changed","name",name);
         this.var_46.windowManager.alert("${generic.notice}","${help.tutorial.name.changed}",0,function(param1:IAlertDialog, param2:Event):void
         {
            param1.dispose();
         });
         if(this.var_38 != null && (this.var_38.id == const_332 || this.var_38.id == const_81))
         {
            this.showView(const_81);
         }
      }
      
      public function onUserChanged() : void
      {
         this.var_1317 = true;
         if(this.var_38 != null && (this.var_38.id == const_314 || this.var_38.id == const_81))
         {
            this.showView(const_81);
         }
      }
      
      public function onChangeUserNameResult(param1:ChangeUserNameResultMessageEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:ChangeUserNameResultMessageParser = param1.getParser();
         if(_loc2_.resultCode == ChangeUserNameResultMessageEvent.var_500)
         {
            this.var_1081 = true;
            this.showView(TutorialUI.const_81);
         }
         else
         {
            this.var_319.setNameNotAvailableView(_loc2_.resultCode,_loc2_.name,_loc2_.nameSuggestions);
         }
      }
      
      public function onCheckUserNameResult(param1:CheckUserNameResultMessageEvent) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:CheckUserNameResultMessageParser = param1.getParser();
         if(_loc2_.resultCode == ChangeUserNameResultMessageEvent.var_500)
         {
            this.var_319.checkedName = _loc2_.name;
         }
         else
         {
            this.var_319.setNameNotAvailableView(_loc2_.resultCode,_loc2_.name,_loc2_.nameSuggestions);
         }
      }
   }
}
