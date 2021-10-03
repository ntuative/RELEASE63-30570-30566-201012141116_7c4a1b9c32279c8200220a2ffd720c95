package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_694;
         param1["bitmap"] = const_606;
         param1["border"] = const_701;
         param1["border_notify"] = const_1470;
         param1["button"] = const_402;
         param1["button_thick"] = const_588;
         param1["button_icon"] = const_1264;
         param1["button_group_left"] = const_571;
         param1["button_group_center"] = const_705;
         param1["button_group_right"] = const_745;
         param1["canvas"] = const_757;
         param1["checkbox"] = const_577;
         param1["closebutton"] = const_1043;
         param1["container"] = const_378;
         param1["container_button"] = const_626;
         param1["display_object_wrapper"] = const_604;
         param1["dropmenu"] = const_408;
         param1["dropmenu_item"] = const_444;
         param1["frame"] = const_379;
         param1["frame_notify"] = const_1436;
         param1["header"] = const_733;
         param1["icon"] = const_905;
         param1["itemgrid"] = const_946;
         param1["itemgrid_horizontal"] = const_487;
         param1["itemgrid_vertical"] = const_769;
         param1["itemlist"] = const_1108;
         param1["itemlist_horizontal"] = const_362;
         param1["itemlist_vertical"] = const_322;
         param1["maximizebox"] = WINDOW_TYPE_MAXIMIZEBOX;
         param1["menu"] = const_1488;
         param1["menu_item"] = const_1382;
         param1["submenu"] = const_1029;
         param1["minimizebox"] = const_1499;
         param1["notify"] = const_1419;
         param1["null"] = const_700;
         param1["password"] = const_807;
         param1["radiobutton"] = const_687;
         param1["region"] = const_665;
         param1["restorebox"] = const_1485;
         param1["scaler"] = const_594;
         param1["scaler_horizontal"] = const_1330;
         param1["scaler_vertical"] = const_1490;
         param1["scrollbar_horizontal"] = const_494;
         param1["scrollbar_vertical"] = const_763;
         param1["scrollbar_slider_button_up"] = const_1109;
         param1["scrollbar_slider_button_down"] = const_1033;
         param1["scrollbar_slider_button_left"] = const_977;
         param1["scrollbar_slider_button_right"] = const_1060;
         param1["scrollbar_slider_bar_horizontal"] = const_920;
         param1["scrollbar_slider_bar_vertical"] = const_1045;
         param1["scrollbar_slider_track_horizontal"] = const_1013;
         param1["scrollbar_slider_track_vertical"] = const_954;
         param1["scrollable_itemlist"] = const_1426;
         param1["scrollable_itemlist_vertical"] = const_437;
         param1["scrollable_itemlist_horizontal"] = const_913;
         param1["selector"] = const_640;
         param1["selector_list"] = const_590;
         param1["submenu"] = const_1029;
         param1["tab_button"] = const_813;
         param1["tab_container_button"] = const_998;
         param1["tab_context"] = const_325;
         param1["tab_content"] = const_982;
         param1["tab_selector"] = const_723;
         param1["text"] = const_803;
         param1["input"] = const_695;
         param1["toolbar"] = const_1350;
         param1["tooltip"] = const_328;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
