module testbench;
  reg a,b;
  wire y;

  xor_gate uut(
    .a(a),
    .b(b),
    .y(y)
  );

  initial begin
    $dumpfile("xor_gate.vcd");
    $dumpvars(0,testbench);
  end

  initial begin
    a = 0; b = 0;
    #10;

    a = 1; b = 0;
    #10;

    a = 0; b = 1;
    #10;

    a = 1; b = 1;
    #10;

    $finish;
  end
endmodule
