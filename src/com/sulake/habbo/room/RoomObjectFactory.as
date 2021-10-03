package com.sulake.habbo.room
{
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.habbo.room.object.RoomObjectLogicEnum;
   import com.sulake.habbo.room.object.logic.AvatarLogic;
   import com.sulake.habbo.room.object.logic.PetLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureClothingChangeLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureCounterClockLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureCreditLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureDiceLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureEcotronBoxLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureFireworksLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureHabboWheelLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureHockeyScoreLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureIceStormLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureJukeboxLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureMultiStateLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureOneWayDoorLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurniturePlaceholderLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurniturePlanetSystemLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurniturePresentLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurniturePushableLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureQuestVendingWallItemLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureRandomStateLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureRoomDimmerLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureScoreBoardLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureShadowLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureSoundMachineLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureStickieLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureTeaserLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureTrophyLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureWindowLogic;
   import com.sulake.habbo.room.object.logic.room.RoomLogic;
   import com.sulake.habbo.room.object.logic.room.RoomTileCursorLogic;
   import com.sulake.habbo.room.object.logic.room.SelectionArrowLogic;
   import com.sulake.habbo.room.object.logic.room.publicroom.PublicRoomLogic;
   import com.sulake.habbo.room.object.logic.room.publicroom.PublicRoomParkLogic;
   import com.sulake.room.IRoomObjectFactory;
   import com.sulake.room.IRoomObjectManager;
   import com.sulake.room.RoomObjectManager;
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   
   public class RoomObjectFactory extends Component implements IRoomObjectFactory
   {
       
      
      public function RoomObjectFactory(param1:IContext, param2:uint = 0)
      {
         super(param1,param2);
      }
      
      public function createRoomObjectLogic(param1:String) : IRoomObjectEventHandler
      {
         var _loc4_:* = null;
         Logger.log("Creating room object logic instance of type: " + param1);
         var _loc2_:* = null;
         switch(param1)
         {
            case RoomObjectLogicEnum.const_205:
               _loc2_ = RoomLogic;
               break;
            case RoomObjectLogicEnum.const_275:
               _loc2_ = PublicRoomLogic;
               break;
            case RoomObjectLogicEnum.const_295:
               _loc2_ = PublicRoomParkLogic;
               break;
            case RoomObjectLogicEnum.const_160:
            case RoomObjectLogicEnum.BOT:
               _loc2_ = AvatarLogic;
               break;
            case RoomObjectLogicEnum.const_64:
               _loc2_ = PetLogic;
               break;
            case RoomObjectLogicEnum.const_1410:
               _loc2_ = FurnitureLogic;
               break;
            case RoomObjectLogicEnum.const_1432:
               _loc2_ = FurnitureMultiStateLogic;
               break;
            case RoomObjectLogicEnum.const_1422:
               _loc2_ = FurnitureRandomStateLogic;
               break;
            case RoomObjectLogicEnum.const_1050:
               _loc2_ = FurnitureShadowLogic;
               break;
            case RoomObjectLogicEnum.const_1510:
               _loc2_ = FurniturePlaceholderLogic;
               break;
            case RoomObjectLogicEnum.const_1454:
               _loc2_ = FurnitureCreditLogic;
               break;
            case RoomObjectLogicEnum.const_1301:
               _loc2_ = FurnitureStickieLogic;
               break;
            case RoomObjectLogicEnum.const_1294:
               _loc2_ = FurniturePresentLogic;
               break;
            case RoomObjectLogicEnum.const_1327:
               _loc2_ = FurnitureTrophyLogic;
               break;
            case RoomObjectLogicEnum.const_1293:
               _loc2_ = FurnitureTeaserLogic;
               break;
            case RoomObjectLogicEnum.const_1361:
               _loc2_ = FurnitureEcotronBoxLogic;
               break;
            case RoomObjectLogicEnum.const_1414:
               _loc2_ = FurnitureDiceLogic;
               break;
            case RoomObjectLogicEnum.const_1486:
               _loc2_ = FurnitureHockeyScoreLogic;
               break;
            case RoomObjectLogicEnum.const_304:
               _loc2_ = FurnitureHabboWheelLogic;
               break;
            case RoomObjectLogicEnum.const_1290:
               _loc2_ = FurnitureQuestVendingWallItemLogic;
               break;
            case RoomObjectLogicEnum.const_1445:
               _loc2_ = FurnitureOneWayDoorLogic;
               break;
            case RoomObjectLogicEnum.const_296:
               _loc2_ = FurniturePlanetSystemLogic;
               break;
            case RoomObjectLogicEnum.const_1282:
               _loc2_ = FurnitureWindowLogic;
               break;
            case RoomObjectLogicEnum.const_1413:
               _loc2_ = FurnitureRoomDimmerLogic;
               break;
            case RoomObjectLogicEnum.const_1507:
               _loc2_ = RoomTileCursorLogic;
               break;
            case RoomObjectLogicEnum.const_1325:
               _loc2_ = SelectionArrowLogic;
               break;
            case RoomObjectLogicEnum.const_1398:
               _loc2_ = FurnitureSoundMachineLogic;
               break;
            case RoomObjectLogicEnum.const_1399:
               _loc2_ = FurnitureJukeboxLogic;
               break;
            case RoomObjectLogicEnum.const_1469:
               _loc2_ = FurniturePushableLogic;
               break;
            case RoomObjectLogicEnum.const_1326:
               _loc2_ = FurnitureClothingChangeLogic;
               break;
            case RoomObjectLogicEnum.const_300:
               _loc2_ = FurnitureCounterClockLogic;
               break;
            case RoomObjectLogicEnum.const_309:
               _loc2_ = FurnitureScoreBoardLogic;
               break;
            case RoomObjectLogicEnum.const_1348:
               _loc2_ = FurnitureIceStormLogic;
               break;
            case RoomObjectLogicEnum.const_298:
               _loc2_ = FurnitureFireworksLogic;
         }
         if(_loc2_ == null)
         {
            return null;
         }
         var _loc3_:Object = new _loc2_();
         if(_loc3_ is IRoomObjectEventHandler)
         {
            _loc4_ = _loc3_ as IRoomObjectEventHandler;
            _loc4_.eventDispatcher = this.events;
            return _loc4_;
         }
         return null;
      }
      
      public function createRoomObjectManager() : IRoomObjectManager
      {
         return new RoomObjectManager();
      }
   }
}
