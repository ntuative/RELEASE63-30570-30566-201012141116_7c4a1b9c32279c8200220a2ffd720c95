package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1583:int = 0;
      
      public static const const_1423:int = 1;
      
      public static const const_1519:int = 2;
      
      public static const const_1788:int = 3;
      
      public static const const_1657:int = 4;
      
      public static const const_1689:int = 5;
      
      public static const const_1471:int = 10;
      
      public static const const_1642:int = 11;
      
      public static const const_1714:int = 12;
      
      public static const const_1675:int = 13;
      
      public static const const_1698:int = 16;
      
      public static const const_1758:int = 17;
      
      public static const const_1677:int = 18;
      
      public static const const_1705:int = 19;
      
      public static const const_1808:int = 20;
      
      public static const const_1748:int = 22;
      
      public static const const_1609:int = 23;
      
      public static const const_1784:int = 24;
      
      public static const const_1757:int = 25;
      
      public static const const_1733:int = 26;
      
      public static const const_1809:int = 27;
      
      public static const const_1741:int = 28;
      
      public static const const_1740:int = 29;
      
      public static const const_1795:int = 100;
      
      public static const const_1786:int = 101;
      
      public static const const_1605:int = 102;
      
      public static const const_1743:int = 103;
      
      public static const const_1591:int = 104;
      
      public static const const_1792:int = 105;
      
      public static const const_1703:int = 106;
      
      public static const const_1775:int = 107;
      
      public static const const_1647:int = 108;
      
      public static const const_1778:int = 109;
      
      public static const const_1729:int = 110;
      
      public static const const_1687:int = 111;
      
      public static const const_1731:int = 112;
      
      public static const const_1802:int = 113;
      
      public static const const_1764:int = 114;
      
      public static const const_1661:int = 115;
      
      public static const const_1804:int = 116;
      
      public static const const_1616:int = 117;
      
      public static const const_1640:int = 118;
      
      public static const const_1620:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1423:
            case const_1471:
               return "banned";
            case const_1519:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
