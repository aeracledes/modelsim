module Mux16to1(DataArray, Select, DataOut);
   input [15:0] DataArray;
   input [3:0]  Select;
   output       DataOut;

   function Mux16to1_f;
      input [15:0] DataArray;
      input        Select;

      begin
         case (Select)
               0:       Mux16to1_f = DataArray[0];
               1:       Mux16to1_f = DataArray[1];
               2:       Mux16to1_f = DataArray[2];
               3:       Mux16to1_f = DataArray[3];
               4:       Mux16to1_f = DataArray[4];
               5:       Mux16to1_f = DataArray[5];
               6:       Mux16to1_f = DataArray[6];
               7:       Mux16to1_f = DataArray[7];
               8:       Mux16to1_f = DataArray[8];
               9:       Mux16to1_f = DataArray[9];
               10:      Mux16to1_f = DataArray[10];        
               11:      Mux16to1_f = DataArray[11];
               12:      Mux16to1_f = DataArray[12];
               13:      Mux16to1_f = DataArray[13];
               14:      Mux16to1_f = DataArray[14];
               default: Mux16to1_f = DataArray[15];
         endcase
      end
   endfunction

   assign DataOut = Mux16to1_f(DataArray,Select);

endmodule 
