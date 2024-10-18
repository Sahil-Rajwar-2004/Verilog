module testbench;
  reg a,b;
  wire sum,carry;

  half_adder uut(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );

  initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0,testbench);
  end

  initial begin
    a = 0; b = 0;
    #10;

    a = 0; b = 1;
    #10;

    a = 1; b = 0;
    #10;

    a = 1; b = 1;
    #10;

    $finish;
  end
endmodule
