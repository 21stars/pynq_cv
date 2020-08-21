
`timescale 1 ns / 1 ps

  module sobel_accel_mul_mjbC_DSP48_4(a, b, p);
input [14 - 1 : 0] a;
input [8 - 1 : 0] b;
output [21 - 1 : 0] p;

assign p = $unsigned (a) * $unsigned (b);

endmodule
`timescale 1 ns / 1 ps
module sobel_accel_mul_mjbC(
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



sobel_accel_mul_mjbC_DSP48_4 sobel_accel_mul_mjbC_DSP48_4_U(
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

