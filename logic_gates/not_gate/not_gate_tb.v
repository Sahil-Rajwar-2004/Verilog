module testbench;
  reg a;
  wire y;

  not_gate uut(
    .a(a),
    .y(y)
  );

  initial begin
    $dumpfile("not_gate.vcd");
    $dumpvars(0,testbench);
  end

  initial begin
    a = 0;
    #10;

    a = 1;
    #10;

    $finish;
  end
endmodule
