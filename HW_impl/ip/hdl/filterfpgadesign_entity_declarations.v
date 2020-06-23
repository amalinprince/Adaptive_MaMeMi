//-----------------------------------------------------------------
// System Generator version 2016.4 Verilog source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------

`include "conv_pkg.v"
`timescale 1 ns / 10 ps
module sysgen_abs_5f7df86158 (
  input [(16 - 1):0] a,
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] a_16_25;
  localparam signed [(16 - 1):0] const_value = 16'sb0000000000000000;
  reg signed [(16 - 1):0] op_mem_48_20[0:(1 - 1)];
  initial
    begin
      op_mem_48_20[0] = 16'b0000000000000000;
    end
  wire signed [(16 - 1):0] op_mem_48_20_front_din;
  wire signed [(16 - 1):0] op_mem_48_20_back;
  wire op_mem_48_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  wire signed [(17 - 1):0] cast_34_28;
  wire signed [(17 - 1):0] internal_ip_34_13_neg;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b0;
  wire signed [(17 - 1):0] cast_31_8;
  localparam signed [(17 - 1):0] const_value_x_000003 = 17'sb00000000000000000;
  wire rel_31_8;
  reg signed [(17 - 1):0] internal_ip_join_31_5;
  reg signed [(17 - 1):0] internal_ip_join_28_1;
  localparam signed [(17 - 1):0] const_value_x_000004 = 17'sb00000000000000000;
  wire signed [(16 - 1):0] internal_ip_40_3_convert;
  assign a_16_25 = a;
  assign op_mem_48_20_back = op_mem_48_20[0];
  always @(posedge clk)
    begin:proc_op_mem_48_20
      integer i;
      if (((ce == 1'b1) && (op_mem_48_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_48_20[0] <= op_mem_48_20_front_din;
        end
    end
  assign cast_34_28 = {{1{a_16_25[15]}}, a_16_25[15:0]};
  assign internal_ip_34_13_neg = -cast_34_28;
  assign cast_31_8 = {{1{a_16_25[15]}}, a_16_25[15:0]};
  assign rel_31_8 = cast_31_8 >= const_value_x_000003;
  always @(a_16_25 or internal_ip_34_13_neg or rel_31_8)
    begin:proc_if_31_5
      if (rel_31_8)
        begin
          internal_ip_join_31_5 = {{1{a_16_25[15]}}, a_16_25[15:0]};
        end
      else 
        begin
          internal_ip_join_31_5 = internal_ip_34_13_neg;
        end
    end
  always @(internal_ip_join_31_5)
    begin:proc_if_28_1
      if (1'b0)
        begin
          internal_ip_join_28_1 = const_value_x_000004;
        end
      else 
        begin
          internal_ip_join_28_1 = internal_ip_join_31_5;
        end
    end
  defparam convert_internal_ip_40_3_convert.new_arith = `xlSigned;
  defparam convert_internal_ip_40_3_convert.new_bin_pt = 15;
  defparam convert_internal_ip_40_3_convert.new_width = 16;
  defparam convert_internal_ip_40_3_convert.old_arith = `xlSigned;
  defparam convert_internal_ip_40_3_convert.old_bin_pt = 15;
  defparam convert_internal_ip_40_3_convert.old_width = 17;
  defparam convert_internal_ip_40_3_convert.overflow = `xlSaturate;
  defparam convert_internal_ip_40_3_convert.quantization = `xlRound;
  convert_type convert_internal_ip_40_3_convert(.inp(internal_ip_join_28_1), .res(internal_ip_40_3_convert));
  assign op_mem_48_20_push_front_pop_back_en = 1'b0;
  assign op = internal_ip_40_3_convert;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_b543ca861e (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b1;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_cc9f6ce9ad (
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 16'b0000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_6511bec112 (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b0;
endmodule
`timescale 1 ns / 10 ps


module filterfpgadesign_xlconvert (din, clk, ce, clr, en, dout);

//Parameter Definitions
   parameter din_width= 16;
   parameter din_bin_pt= 4;
   parameter din_arith= `xlUnsigned;
   parameter dout_width= 8;
   parameter dout_bin_pt= 2;
   parameter dout_arith= `xlUnsigned;
   parameter en_width = 1;
   parameter en_bin_pt = 0;
   parameter en_arith = `xlUnsigned;
   parameter bool_conversion = 0;
   parameter latency = 0;
   parameter quantization= `xlTruncate;
   parameter overflow= `xlWrap;

//Port Declartions
   input [din_width-1:0] din;
   input clk, ce, clr;
   input [en_width-1:0] en;
   output [dout_width-1:0] dout;

//Wire Declartions
   wire [dout_width-1:0]   result;
   wire internal_ce;
   assign internal_ce = ce & en[0];

generate
 if (bool_conversion == 1)
    begin:bool_converion_generate
       assign result = din;
    end
 else
    begin:std_conversion
       convert_type #(din_width,
                      din_bin_pt,
                      din_arith,
		              dout_width,
                      dout_bin_pt,
                      dout_arith,
                      quantization,
                      overflow)
        conv_udp (.inp(din), .res(result));
    end
endgenerate

generate
if (latency > 0)
     begin:latency_test
	synth_reg # (dout_width, latency)
	  reg1 (
	       .i(result),
	       .ce(internal_ce),
	       .clr(clr),
	       .clk(clk),
	       .o(dout));
     end
else
     begin:latency0
	assign dout = result;
     end
endgenerate

endmodule

`timescale 1 ns / 10 ps
module filterfpgadesign_xldelay #(parameter width = -1, latency = -1, reg_retiming = 0, reset = 0)
  (input [width-1:0] d,
   input ce, clk, en, rst,
   output [width-1:0] q);

generate
  if ((latency == 0) || ((reg_retiming == 0) && (reset == 0)))
  begin:srl_delay
    synth_reg # (width, latency)
      reg1 (
        .i(d),
        .ce(ce & en),
        .clr(1'b0),
        .clk(clk),
        .o(q));
  end

  if ((latency>=1) && ((reg_retiming) || (reset)))
  begin:reg_delay
    synth_reg_reg # (width, latency)
      reg2 (
        .i(d),
        .ce(ce & en),
        .clr(rst),
        .clk(clk),
        .o(q));
  end
endgenerate
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_bd89408ce7 (
  input [(1 - 1):0] sel,
  input [(29 - 1):0] d0,
  input [(29 - 1):0] d1,
  output [(29 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] sel_1_20;
  wire [(29 - 1):0] d0_1_24;
  wire [(29 - 1):0] d1_1_27;
  reg [(29 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  always @(d0_1_24 or d1_1_27 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_37834b213b (
  input [(1 - 1):0] sel,
  input [(16 - 1):0] d0,
  input [(29 - 1):0] d1,
  output [(29 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] sel_1_20;
  wire [(16 - 1):0] d0_1_24;
  wire [(29 - 1):0] d1_1_27;
  reg [(29 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  always @(d0_1_24 or d1_1_27 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        1'b0 :
          begin
            unregy_join_6_1 = {{1{d0_1_24[15]}}, d0_1_24[15:0], 12'b000000000000};
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_be3eb42026 (
  input [(1 - 1):0] sel,
  input [(16 - 1):0] d0,
  input [(16 - 1):0] d1,
  output [(16 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] sel_1_20;
  wire [(16 - 1):0] d0_1_24;
  wire [(16 - 1):0] d1_1_27;
  reg [(16 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  always @(d0_1_24 or d1_1_27 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign y = unregy_join_6_1;
endmodule
`timescale 1 ns / 10 ps
module filterfpgadesign_xlregister (d, rst, en, ce, clk, q);
   parameter d_width = 5;
   parameter init_value = 'b0;

   input [d_width-1:0] d;
   input rst, en, ce, clk;
   output [d_width-1:0] q;

   wire internal_clr, internal_ce;

   assign internal_clr = rst & ce;
   assign internal_ce  = ce & en;

   synth_reg_w_init #(.width(d_width),
                      .init_index(2),
                      .init_value(init_value),
                      .latency(1))
   synth_reg_inst(.i(d),
                  .ce(internal_ce),
                  .clr(internal_clr),
                  .clk(clk),
                  .o(q));
endmodule

`timescale 1 ns / 10 ps
module sysgen_reinterpret_71de213f50 (
  input [(16 - 1):0] input_port,
  output [(16 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_relational_a38da4fa40 (
  input [(16 - 1):0] a,
  input [(28 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] a_1_31;
  wire signed [(28 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire signed [(28 - 1):0] cast_18_12;
  wire result_18_3_rel;
  wire [(1 - 1):0] dout_28_3_convert;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign cast_18_12 = {a_1_31[15:0], 12'b000000000000};
  assign result_18_3_rel = cast_18_12 > b_1_34;
  assign dout_28_3_convert = {result_18_3_rel};
  assign op = dout_28_3_convert;
endmodule
`timescale 1 ns / 10 ps
module sysgen_relational_818805a389 (
  input [(16 - 1):0] a,
  input [(28 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] a_1_31;
  wire signed [(28 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire signed [(28 - 1):0] cast_16_12;
  wire result_16_3_rel;
  wire [(1 - 1):0] dout_28_3_convert;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign cast_16_12 = {a_1_31[15:0], 12'b000000000000};
  assign result_16_3_rel = cast_16_12 < b_1_34;
  assign dout_28_3_convert = {result_16_3_rel};
  assign op = dout_28_3_convert;
endmodule
`timescale 1 ns / 10 ps
module sysgen_relational_d1e866b6ec (
  input [(16 - 1):0] a,
  input [(16 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] a_1_31;
  wire signed [(16 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire result_16_3_rel;
  wire [(1 - 1):0] dout_28_3_convert;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign result_16_3_rel = a_1_31 < b_1_34;
  assign dout_28_3_convert = {result_16_3_rel};
  assign op = dout_28_3_convert;
endmodule
`timescale 1 ns / 10 ps
module sysgen_shift_448c53cb86 (
  input [(29 - 1):0] ip,
  output [(29 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(29 - 1):0] ip_1_23;
  localparam signed [(29 - 1):0] const_value = 29'sb00000000000000000000000000000;
  reg signed [(29 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 29'b00000000000000000000000000000;
    end
  wire signed [(29 - 1):0] op_mem_46_20_front_din;
  wire signed [(29 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire signed [(29 - 1):0] cast_internal_ip_36_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_36_3_convert = {{1{ip_1_23[28]}}, ip_1_23[28:1]};
  assign op_mem_46_20_push_front_pop_back_en = 1'b0;
  assign op = cast_internal_ip_36_3_convert;
endmodule
`timescale 1 ns / 10 ps
module sysgen_shift_1c1286f18e (
  input [(16 - 1):0] ip,
  output [(26 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] ip_1_23;
  localparam signed [(26 - 1):0] const_value = 26'sb00000000000000000000000000;
  reg signed [(26 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 26'b00000000000000000000000000;
    end
  wire signed [(26 - 1):0] op_mem_46_20_front_din;
  wire signed [(26 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire signed [(25 - 1):0] cast_internal_ip_27_3_rsh;
  wire signed [(26 - 1):0] internal_ip_33_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_27_3_rsh = {{9{ip_1_23[15]}}, ip_1_23[15:0]};
  defparam convert_internal_ip_33_3_convert.new_arith = `xlSigned;
  defparam convert_internal_ip_33_3_convert.new_bin_pt = 25;
  defparam convert_internal_ip_33_3_convert.new_width = 26;
  defparam convert_internal_ip_33_3_convert.old_arith = `xlSigned;
  defparam convert_internal_ip_33_3_convert.old_bin_pt = 25;
  defparam convert_internal_ip_33_3_convert.old_width = 25;
  defparam convert_internal_ip_33_3_convert.overflow = `xlSaturate;
  defparam convert_internal_ip_33_3_convert.quantization = `xlRound;
  convert_type convert_internal_ip_33_3_convert(.inp(cast_internal_ip_27_3_rsh), .res(internal_ip_33_3_convert));
  assign op_mem_46_20_push_front_pop_back_en = 1'b0;
  assign op = internal_ip_33_3_convert;
endmodule
`timescale 1 ns / 10 ps
module sysgen_shift_884598f79e (
  input [(26 - 1):0] ip,
  output [(28 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(26 - 1):0] ip_1_23;
  localparam signed [(28 - 1):0] const_value = 28'sb0000000000000000000000000000;
  reg signed [(28 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 28'b0000000000000000000000000000;
    end
  wire signed [(28 - 1):0] op_mem_46_20_front_din;
  wire signed [(28 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire signed [(27 - 1):0] cast_internal_ip_27_3_rsh;
  wire signed [(28 - 1):0] internal_ip_33_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_27_3_rsh = {{1{ip_1_23[25]}}, ip_1_23[25:0]};
  defparam convert_internal_ip_33_3_convert.new_arith = `xlSigned;
  defparam convert_internal_ip_33_3_convert.new_bin_pt = 27;
  defparam convert_internal_ip_33_3_convert.new_width = 28;
  defparam convert_internal_ip_33_3_convert.old_arith = `xlSigned;
  defparam convert_internal_ip_33_3_convert.old_bin_pt = 27;
  defparam convert_internal_ip_33_3_convert.old_width = 27;
  defparam convert_internal_ip_33_3_convert.overflow = `xlSaturate;
  defparam convert_internal_ip_33_3_convert.quantization = `xlRound;
  convert_type convert_internal_ip_33_3_convert(.inp(cast_internal_ip_27_3_rsh), .res(internal_ip_33_3_convert));
  assign op_mem_46_20_push_front_pop_back_en = 1'b0;
  assign op = internal_ip_33_3_convert;
endmodule
`timescale 1 ns / 10 ps
module memmap_clk_ctrl (
    input clk,
    input rst,
    input [23:0] n_pulses,
    input start_clk,
    output burst_clk,
    output clk_busy
);
    reg [22:0] n;
    reg free_running;
    reg active_reg;
    reg busy_reg;
    wire [22:0] n_dec;
    wire active;
    wire busy;

    assign busy   = (n != 23'h000000) ?      1'b1 : 1'b0;
    assign active = (busy || free_running) ? 1'b1 : 1'b0;
    assign n_dec  = (busy & ~free_running) ? (n - 23'h000001) : 23'h000000;
    assign clk_busy = busy_reg;

    always@(posedge clk)
    begin
        if (~rst) begin
            n <= 23'h000000;
            active_reg <= 1'b0;
            busy_reg     <= 1'b0;
            free_running <= 1'b0;
        end
        else begin
            active_reg <= active;
            busy_reg   <= busy;
            if (start_clk) begin
                n            <= n_pulses[22:0];
                free_running <= n_pulses[23];
            end
            else
                n <= n_dec;
        end
    end

    BUFGCTRL #(
        .INIT_OUT(0), // Initial value of BUFGCTRL output ($VALUES;)
        .PRESELECT_I0("TRUE"), // BUFGCTRL output uses I0 input ($VALUES;)
        .PRESELECT_I1("FALSE") // BUFGCTRL output uses I1 input ($VALUES;)
    )
    xhwcbufgmux_inst
    (
        .I0(clk),
        .I1(),
        .S0(1'b1),
        .S1(1'b0),
        .CE0(active_reg),
        .CE1(1'b0),
        .IGNORE0(1'b0),
        .IGNORE1(1'b1),
        .O(burst_clk)
    );
endmodule                                          
`timescale 1 ns / 10 ps
module filterfpgadesign_axi_lite_interface#(parameter C_S_AXI_DATA_WIDTH = 32, C_S_AXI_ADDR_WIDTH = 3, C_S_NUM_OFFSETS = 2)(
  input wire[15:0] gateway_out,
  output wire clk,
  input wire filterfpgadesign_aclk,
  input wire filterfpgadesign_aresetn,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] filterfpgadesign_s_axi_awaddr,
  input  wire filterfpgadesign_s_axi_awvalid,
  output wire filterfpgadesign_s_axi_awready,
  input  wire [C_S_AXI_DATA_WIDTH-1:0] filterfpgadesign_s_axi_wdata,
  input  wire [C_S_AXI_DATA_WIDTH/8-1:0] filterfpgadesign_s_axi_wstrb,
  input  wire filterfpgadesign_s_axi_wvalid,
  output wire filterfpgadesign_s_axi_wready,
  output wire [1:0] filterfpgadesign_s_axi_bresp,
  output wire filterfpgadesign_s_axi_bvalid,
  input  wire filterfpgadesign_s_axi_bready,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] filterfpgadesign_s_axi_araddr,
  input  wire filterfpgadesign_s_axi_arvalid,
  output wire filterfpgadesign_s_axi_arready,
  output wire [C_S_AXI_DATA_WIDTH-1:0] filterfpgadesign_s_axi_rdata,
  output wire [1:0] filterfpgadesign_s_axi_rresp,
  output wire filterfpgadesign_s_axi_rvalid,
  input  wire filterfpgadesign_s_axi_rready
);
function integer clogb2 (input integer bit_depth);
begin
  for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
    bit_depth = bit_depth >> 1;
  end
endfunction
localparam integer ADDR_LSB = clogb2(C_S_AXI_DATA_WIDTH/8);
localparam integer ADDR_MSB = C_S_AXI_ADDR_WIDTH;
localparam integer DEC_SIZE = clogb2(C_S_NUM_OFFSETS);
reg [1 :0] axi_rresp;
reg [1 :0] axi_bresp;
reg axi_awready;
reg axi_wready;
reg axi_bvalid;
reg axi_rvalid;
reg [ADDR_MSB-1:0] axi_awaddr;
reg [ADDR_MSB-1:0] axi_araddr;
reg [C_S_AXI_DATA_WIDTH-1:0] axi_rdata;
reg axi_arready;
wire [C_S_AXI_DATA_WIDTH-1:0] slv_wire_array [0:C_S_NUM_OFFSETS-1];
reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg_array [0:C_S_NUM_OFFSETS-1];
wire slv_reg_rden;
wire slv_reg_wren;
reg [DEC_SIZE-1:0] dec_w;
reg [DEC_SIZE-1:0] dec_r;
reg  start_clk;
wire start_clk_wire;
wire blk_next_write;
wire [23:0] clk_n_steps;	// initial count for clock bursts. MSB (bit 23) is free-running clock flag
reg [C_S_AXI_DATA_WIDTH-1:0] reg_data_out;
integer byte_index;
integer offset_index;
assign filterfpgadesign_s_axi_awready = axi_awready;
assign filterfpgadesign_s_axi_wready  = axi_wready;
assign filterfpgadesign_s_axi_bresp  = axi_bresp;
assign filterfpgadesign_s_axi_bvalid = axi_bvalid;
assign filterfpgadesign_s_axi_arready = axi_arready;
assign filterfpgadesign_s_axi_rdata  = axi_rdata;
assign filterfpgadesign_s_axi_rvalid = axi_rvalid;
assign filterfpgadesign_s_axi_rresp  = axi_rresp;
// map output 0
assign slv_wire_array[0] = {16'h0, gateway_out[15:0]};
// detect write to memory-mapped clock control
assign start_clk_wire = slv_reg_wren & (dec_w == 1);
assign clk_n_steps = slv_wire_array[1][23:0];
assign slv_wire_array[1] = slv_reg_array[1];
  initial
  begin
  end
  always @(axi_awaddr)
  begin
    case(axi_awaddr)
      3'd0 : dec_w = 0;
      3'd4 : dec_w = 1;
      default : dec_w = 0;
    endcase
  end
  always @(axi_araddr)
  begin
    case(axi_araddr)
      3'd0 : dec_r = 0;
      3'd4 : dec_r = 1;
      default : dec_r = 0;
    endcase
  end
  always @( posedge filterfpgadesign_aclk )
  begin
    if ( filterfpgadesign_aresetn == 1'b0 )
      begin
        axi_awready <= 1'b0;
        axi_awaddr <= 0;
      end
    else
      begin
        if (~axi_awready && filterfpgadesign_s_axi_awvalid && filterfpgadesign_s_axi_wvalid && ~blk_next_write)
          begin
            axi_awready <= 1'b1;
            axi_awaddr <= filterfpgadesign_s_axi_awaddr;
          end
        else
          begin
            axi_awready <= 1'b0;
          end
      end
  end
  always @( posedge filterfpgadesign_aclk )
  begin
    if ( filterfpgadesign_aresetn == 1'b0 )
      begin
        axi_wready <= 1'b0;
      end
    else
      begin
        if (~axi_wready && filterfpgadesign_s_axi_wvalid && filterfpgadesign_s_axi_awvalid && ~blk_next_write)
          begin
            axi_wready <= 1'b1;
          end
        else
          begin
            axi_wready <= 1'b0;
          end
      end
  end
  assign slv_reg_wren = axi_wready && filterfpgadesign_s_axi_wvalid && axi_awready && filterfpgadesign_s_axi_awvalid;
  always @( posedge filterfpgadesign_aclk )
  begin
    if ( filterfpgadesign_aresetn == 1'b0 )
      begin
      end
    else begin
      if (slv_reg_wren)
        begin
          for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
            if ( filterfpgadesign_s_axi_wstrb[byte_index] == 1 ) begin
              slv_reg_array[dec_w][(byte_index*8) +: 8] <= filterfpgadesign_s_axi_wdata[(byte_index*8) +: 8];
            end
        end
    end
  end
  always @( posedge filterfpgadesign_aclk )
  begin
    if ( filterfpgadesign_aresetn == 1'b0 )
      begin
        axi_bvalid  <= 0;
        axi_bresp   <= 2'b0;
      end
    else
      begin
        if (axi_awready && filterfpgadesign_s_axi_awvalid && ~axi_bvalid && axi_wready && filterfpgadesign_s_axi_wvalid)
          begin
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; 
          end
        else
          begin
            if (filterfpgadesign_s_axi_bready && axi_bvalid)
              begin
                axi_bvalid <= 1'b0;
              end
          end
      end
  end
  always @( posedge filterfpgadesign_aclk )
  begin
    if ( filterfpgadesign_aresetn == 1'b0 )
      begin
        axi_arready <= 1'b0;
        axi_araddr  <= {ADDR_MSB{1'b0}};
      end
    else
      begin
        if (~axi_arready && filterfpgadesign_s_axi_arvalid && ~blk_next_write)
          begin
            axi_arready <= 1'b1;
            axi_araddr  <= filterfpgadesign_s_axi_araddr;
          end
        else
          begin
            axi_arready <= 1'b0;
          end
      end
  end

  // AXI read response (inferred flops)
  always @( posedge filterfpgadesign_aclk )
  begin
    if ( filterfpgadesign_aresetn == 1'b0 )
      begin
        axi_rvalid <= 1'b0;
        axi_rresp  <= 2'b0;
      end
    else
      begin
        if (slv_reg_rden)
          begin
            axi_rvalid <= 1'b1;
            axi_rresp  <= 2'b0; 
          end
        else if (axi_rvalid && filterfpgadesign_s_axi_rready)
          begin
            axi_rvalid <= 1'b0;
            axi_rresp  <= 2'b0; 
          end
      end
  end
  assign slv_reg_rden = axi_arready & filterfpgadesign_s_axi_arvalid & ~axi_rvalid;
  always @(filterfpgadesign_aresetn, slv_reg_rden, axi_araddr, slv_wire_array, dec_r)
  begin
    if ( filterfpgadesign_aresetn == 1'b0 )
      begin
        reg_data_out <= {C_S_AXI_DATA_WIDTH{1'b0}};
      end
    else
      begin
     reg_data_out <= slv_wire_array[dec_r];
      end
  end
  // flop for AXI read data
  always @( posedge filterfpgadesign_aclk )
  begin
    if ( filterfpgadesign_aresetn == 1'b0 )
      begin
        axi_rdata  <= 0;
      end
    else
      begin
        if (slv_reg_rden)
          begin
            axi_rdata <= reg_data_out;
          end
      end
  end

  always @( posedge filterfpgadesign_aclk)
  begin
    if ( filterfpgadesign_aresetn == 1'b0 )
      begin
        start_clk <= 1'b0;
      end
    else
      begin
        start_clk <= start_clk_wire;
      end
  end

  memmap_clk_ctrl   xhwcmmcc (
    .clk(filterfpgadesign_aclk),
    .rst(filterfpgadesign_aresetn),
    .n_pulses(clk_n_steps),
    .start_clk(start_clk),
    .burst_clk(clk),
    .clk_busy(blk_next_write));


endmodule

module filterfpgadesign_xladdsub (a, b, c_in, ce, clr, clk, rst, en, c_out, s);
 
 parameter core_name0= "";
 parameter a_width= 16;
 parameter signed a_bin_pt= 4;
 parameter a_arith= `xlUnsigned;
 parameter c_in_width= 16;
 parameter c_in_bin_pt= 4;
 parameter c_in_arith= `xlUnsigned;
 parameter c_out_width= 16;
 parameter c_out_bin_pt= 4;
 parameter c_out_arith= `xlUnsigned;
 parameter b_width= 8;
 parameter signed b_bin_pt= 2;
 parameter b_arith= `xlUnsigned;
 parameter s_width= 17;
 parameter s_bin_pt= 4;
 parameter s_arith= `xlUnsigned;
 parameter rst_width= 1;
 parameter rst_bin_pt= 0;
 parameter rst_arith= `xlUnsigned;
 parameter en_width= 1;
 parameter en_bin_pt= 0;
 parameter en_arith= `xlUnsigned;
 parameter full_s_width= 17;
 parameter full_s_arith= `xlUnsigned;
 parameter mode= `xlAddMode;
 parameter extra_registers= 0;
 parameter latency= 0;
 parameter quantization= `xlTruncate;
 parameter overflow= `xlWrap;
 parameter c_a_width= 16;
 parameter c_b_width= 8;
 parameter c_a_type= 1;
 parameter c_b_type= 1;
 parameter c_has_sclr= 0;
 parameter c_has_ce= 0;
 parameter c_latency= 0;
 parameter c_output_width= 17;
 parameter c_enable_rlocs= 1;
 parameter c_has_c_in= 0;
 parameter c_has_c_out= 0;
 
 input [a_width-1:0] a;
 input [b_width-1:0] b;
 input c_in, ce, clr, clk, rst, en;
 output c_out;
 output [s_width-1:0] s;
 
 parameter full_a_width = full_s_width;
 parameter full_b_width = full_s_width;
 parameter full_s_bin_pt = (a_bin_pt > b_bin_pt) ? a_bin_pt : b_bin_pt;
 
 wire [full_a_width-1:0] full_a;
 wire [full_b_width-1:0] full_b;
 wire [full_s_width-1:0] full_s;
 wire [full_s_width-1:0] core_s;
 wire [s_width-1:0] conv_s;
 wire  temp_cout;
 wire  real_a,real_b,real_s;
 wire  internal_clr;
 wire  internal_ce;
 wire  extra_reg_ce;
 wire  override;
 wire  logic1;
 wire  temp_cin;
 
 assign internal_clr = (clr | rst) & ce;
 assign internal_ce = ce & en;
 assign logic1 = 1'b1;
 assign temp_cin = (c_has_c_in) ? c_in : 1'b0;
 
 align_input # (a_width, b_bin_pt - a_bin_pt, a_arith, full_a_width)
 align_inp_a(.inp(a),.res(full_a));
 align_input # (b_width, a_bin_pt - b_bin_pt, b_arith, full_b_width)
 align_inp_b(.inp(b),.res(full_b));
 convert_type # (full_s_width, full_s_bin_pt, full_s_arith, s_width,
                 s_bin_pt, s_arith, quantization, overflow)
 conv_typ_s(.inp(core_s),.res(conv_s));
 
 generate


if (core_name0 == "filterfpgadesign_c_addsub_v12_0_i0") 
     begin:comp0
filterfpgadesign_c_addsub_v12_0_i0 core_instance0 ( 
         .A(full_a),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "filterfpgadesign_c_addsub_v12_0_i1") 
     begin:comp1
filterfpgadesign_c_addsub_v12_0_i1 core_instance1 ( 
         .A(full_a),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "filterfpgadesign_c_addsub_v12_0_i2") 
     begin:comp2
filterfpgadesign_c_addsub_v12_0_i2 core_instance2 ( 
         .A(full_a),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

endgenerate 
 
 
 generate
   if (extra_registers > 0)
   begin:latency_test
     
     if (c_latency > 1)
     begin:override_test
       synth_reg # (1, c_latency)
         override_pipe (
           .i(logic1),
           .ce(internal_ce),
           .clr(internal_clr),
           .clk(clk),
           .o(override));
       assign extra_reg_ce = ce & en & override;
     end // override_test
 
     if ((c_latency == 0) || (c_latency == 1))
     begin:no_override
       assign extra_reg_ce = ce & en;
     end // no_override
 
     synth_reg # (s_width, extra_registers)
       extra_reg (
         .i(conv_s),
         .ce(extra_reg_ce),
         .clr(internal_clr),
         .clk(clk),
         .o(s));
 
     if (c_has_c_out == 1)
     begin:cout_test
       synth_reg # (1, extra_registers)
         c_out_extra_reg (
           .i(temp_cout),
           .ce(extra_reg_ce),
           .clr(internal_clr),
           .clk(clk),
           .o(c_out));
     end // cout_test
     
   end // latency_test
 endgenerate
 
 generate
   if ((latency == 0) || (extra_registers == 0))
   begin:latency_s
     assign s = conv_s;
   end // latency_s
 endgenerate
 
 generate
   if (((latency == 0) || (extra_registers == 0)) &&
       (c_has_c_out == 1))
   begin:latency0
     assign c_out = temp_cout;
   end // latency0
 endgenerate
 
 generate
   if (c_has_c_out == 0)
   begin:tie_dangling_cout
     assign c_out = 0;
   end // tie_dangling_cout
 endgenerate
 
 endmodule

module filterfpgadesign_xlcounter_limit (ce, clr, clk, op, up, en, rst);
 
 parameter core_name0= "";
 parameter op_width= 5;
 parameter op_arith= `xlSigned;
 parameter cnt_63_48 = 0;
 parameter cnt_47_32 = 0;
 parameter cnt_31_16 = 0;
 parameter cnt_15_0  = 0;
 parameter count_limited= 0;
 
    input  ce, clr, clk;
    input rst, en;  
    input up;
    output [op_width-1:0] op;
 
 parameter [63:0] cnt_to = { cnt_63_48[15:0], cnt_47_32[15:0], cnt_31_16[15:0], cnt_15_0[15:0]};
 parameter [(8*op_width)-1:0] oneStr = { op_width{"1"}}; 
    
 reg op_thresh0;
 wire core_sinit, core_ce;
 wire rst_overrides_en;
 wire [op_width-1:0] op_net;
 
    assign op = op_net;
    assign core_ce = ce & en;
    assign rst_overrides_en = rst | en;
    
 generate
 
    if (count_limited == 1)
      begin :limit
 	always @(op_net)
 	  begin:eq_cnt_to
 	     op_thresh0 = (op_net == cnt_to[op_width-1:0])? 1'b1 : 1'b0;
 	  end
         assign core_sinit = (op_thresh0 | clr | rst) & ce & rst_overrides_en;
      end
    if (count_limited == 0)
      begin :no_limit
 	assign core_sinit = (clr | rst) & ce & rst_overrides_en;
      end



if (core_name0 == "filterfpgadesign_c_counter_binary_v12_0_i0") 
     begin:comp0
filterfpgadesign_c_counter_binary_v12_0_i0 core_instance0 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

endgenerate
 
 endmodule

module filterfpgadesign_xlspram (data_in, addr, we, en, rst, ce, clk, data_out);
 parameter core_name0= "";
 parameter c_width= 12;
 parameter c_address_width= 4;
 parameter latency= 1;
 input [c_width-1:0] data_in;
 input [c_address_width-1:0] addr;
 input we, en, rst, ce, clk;
 output [c_width-1:0] data_out;
 wire [c_width-1:0] core_data_out,dly_data_out;
 wire  core_we,core_ce,sinit;
    assign data_out = dly_data_out;
    assign core_we = we;
    assign core_ce = ce & en;
    assign sinit = rst & ce;
 generate
 


if (core_name0 == "filterfpgadesign_blk_mem_gen_v8_3_i0") 
     begin:comp0
filterfpgadesign_blk_mem_gen_v8_3_i0 core_instance0 ( 
       .addra(addr),
       .clka(clk),
       .dina(data_in),
       .wea(core_we),
       .ena(core_ce),
       .douta(core_data_out) 
       ); 
     end 

if (core_name0 == "filterfpgadesign_blk_mem_gen_v8_3_i1") 
     begin:comp1
filterfpgadesign_blk_mem_gen_v8_3_i1 core_instance1 ( 
       .addra(addr),
       .clka(clk),
       .dina(data_in),
       .wea(core_we),
       .ena(core_ce),
       .douta(core_data_out) 
       ); 
     end 

 if (latency > 1)
      begin:latency_test
         synth_reg # (c_width, latency-1)
           reg1 (
                .i(core_data_out),
                .ce(core_ce),
                .clr(1'b0),
                .clk(clk),
                .o(dly_data_out));
      end
    if (latency <= 1)
      begin:latency_1
         assign dly_data_out = core_data_out;
      end
  endgenerate
  endmodule
 
