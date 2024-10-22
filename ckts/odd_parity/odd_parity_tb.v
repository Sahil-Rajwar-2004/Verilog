module odd_parity_tb;
  reg [7:0] data_in;
  wire parity;
  
  odd_parity uut(
    .data_in(data_in),
    .parity(parity)
  );

  initial begin
    $monitor("Time=%0t, data_in=%b, parity=%b", $time, data_in, parity);

    data_in = 8'b00000000;
    #10;

    data_in = 8'b00000001;
    #10;

    data_in = 8'b00000011;
    #10;

    data_in = 8'b10101010;
    #10;

    data_in = 8'b11011001;
    #10;

    data_in = 8'b11111111;
    #10;

    $finish;
  end
endmodule
