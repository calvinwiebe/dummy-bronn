module hello_world ;

bit[31:0] lotsOfBits;

covergroup c_lotsOfBits;
  cov_lotsOfBits: coverpoint lotsOfBits;
endgroup // c_lotsOfBits

c_lotsOfBits cg = new;

initial begin
  $display ("Hello World by Calvin");

  #10;
  void'(std::randomize(lotsOfBits));
  cg.sample();
  $display ("UVM_ERROR :    0");
  $display ("UVM_FATAL :    0");
  $finish;
end

endmodule // End of Module hello_world
