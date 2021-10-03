package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_188;
         param1["bound_to_parent_rect"] = const_87;
         param1["child_window"] = const_1094;
         param1["embedded_controller"] = const_964;
         param1["resize_to_accommodate_children"] = const_62;
         param1["input_event_processor"] = const_28;
         param1["internal_event_handling"] = const_743;
         param1["mouse_dragging_target"] = const_199;
         param1["mouse_dragging_trigger"] = const_345;
         param1["mouse_scaling_target"] = const_293;
         param1["mouse_scaling_trigger"] = const_425;
         param1["horizontal_mouse_scaling_trigger"] = const_255;
         param1["vertical_mouse_scaling_trigger"] = const_228;
         param1["observe_parent_input_events"] = const_1069;
         param1["optimize_region_to_layout_size"] = const_445;
         param1["parent_window"] = const_902;
         param1["relative_horizontal_scale_center"] = const_173;
         param1["relative_horizontal_scale_fixed"] = const_126;
         param1["relative_horizontal_scale_move"] = const_317;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_1062;
         param1["relative_scale_fixed"] = const_646;
         param1["relative_scale_move"] = const_1099;
         param1["relative_scale_strech"] = const_1017;
         param1["relative_vertical_scale_center"] = const_163;
         param1["relative_vertical_scale_fixed"] = const_127;
         param1["relative_vertical_scale_move"] = const_324;
         param1["relative_vertical_scale_strech"] = const_369;
         param1["on_resize_align_left"] = const_591;
         param1["on_resize_align_right"] = const_443;
         param1["on_resize_align_center"] = const_426;
         param1["on_resize_align_top"] = const_578;
         param1["on_resize_align_bottom"] = const_533;
         param1["on_resize_align_middle"] = const_460;
         param1["on_accommodate_align_left"] = const_1064;
         param1["on_accommodate_align_right"] = const_452;
         param1["on_accommodate_align_center"] = const_589;
         param1["on_accommodate_align_top"] = const_903;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_742;
         param1["route_input_events_to_parent"] = const_510;
         param1["use_parent_graphic_context"] = const_31;
         param1["draggable_with_mouse"] = const_993;
         param1["scalable_with_mouse"] = const_1055;
         param1["reflect_horizontal_resize_to_parent"] = const_401;
         param1["reflect_vertical_resize_to_parent"] = const_434;
         param1["reflect_resize_to_parent"] = const_307;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
