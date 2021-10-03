package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_879:BigInteger;
      
      private var var_2144:BigInteger;
      
      private var var_1748:BigInteger;
      
      private var var_2469:BigInteger;
      
      private var var_1365:BigInteger;
      
      private var var_1747:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1365 = param1;
         this.var_1747 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1365.toString() + ",generator: " + this.var_1747.toString() + ",secret: " + param1);
         this.var_879 = new BigInteger();
         this.var_879.fromRadix(param1,param2);
         this.var_2144 = this.var_1747.modPow(this.var_879,this.var_1365);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1748 = new BigInteger();
         this.var_1748.fromRadix(param1,param2);
         this.var_2469 = this.var_1748.modPow(this.var_879,this.var_1365);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2144.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2469.toRadix(param1);
      }
   }
}
