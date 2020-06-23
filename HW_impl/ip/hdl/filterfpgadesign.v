`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block FilterFPGADesign_struct
module filterfpgadesign_struct (
  input clk_1,
  input ce_1,
  output [16-1:0] gateway_out
);
  wire [16-1:0] single_port_ram1_data_out_net;
  wire [16-1:0] mux2_y_net;
  wire [1-1:0] relational2_op_net;
  wire [16-1:0] register1_q_net;
  wire [16-1:0] constant6_op_net;
  wire [28-1:0] convert1_dout_net;
  wire [29-1:0] mux_y_net;
  wire [28-1:0] convert_dout_net;
  wire [12-1:0] counter1_op_net;
  wire [30-1:0] addsub7_s_net;
  wire [12-1:0] counter2_op_net;
  wire [29-1:0] mux1_y_net;
  wire [1-1:0] constant1_op_net;
  wire [16-1:0] convert2_dout_net;
  wire [29-1:0] shift1_op_net;
  wire [16-1:0] delay_q_net;
  wire [1-1:0] constant7_op_net;
  wire [1-1:0] relational_op_net;
  wire [16-1:0] delay1_q_net;
  wire [1-1:0] relational1_op_net;
  wire [29-1:0] addsub2_s_net;
  wire [29-1:0] addsub3_s_net;
  wire [16-1:0] addsub4_s_net;
  wire [26-1:0] shift2_op_net;
  wire [29-1:0] addsub6_s_net;
  wire [29-1:0] addsub5_s_net;
  wire [28-1:0] register2_q_net;
  wire [28-1:0] register3_q_net;
  wire [28-1:0] shift3_op_net;
  wire clk_net;
  wire [16-1:0] absolute_op_net;
  wire [16-1:0] reinterpret1_output_port_net;
  wire ce_net;
  wire [16-1:0] single_port_ram2_data_out_net;
  assign gateway_out = single_port_ram2_data_out_net;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_abs_5f7df86158 absolute (
    .clr(1'b0),
    .a(reinterpret1_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(absolute_op_net)
  );
  filterfpgadesign_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(27),
    .a_width(28),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(26),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(29),
    .core_name0("filterfpgadesign_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(29),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(27),
    .s_width(29)
  )
  addsub2 (
    .clr(1'b0),
    .en(1'b1),
    .a(register2_q_net),
    .b(shift2_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  filterfpgadesign_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(27),
    .a_width(28),
    .b_arith(`xlSigned),
    .b_bin_pt(27),
    .b_width(28),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(29),
    .core_name0("filterfpgadesign_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(29),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(27),
    .s_width(29)
  )
  addsub3 (
    .clr(1'b0),
    .en(1'b1),
    .a(register2_q_net),
    .b(shift3_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  filterfpgadesign_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(27),
    .a_width(28),
    .b_arith(`xlSigned),
    .b_bin_pt(25),
    .b_width(26),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(29),
    .core_name0("filterfpgadesign_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(29),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(15),
    .s_width(16)
  )
  addsub4 (
    .clr(1'b0),
    .en(1'b1),
    .a(register3_q_net),
    .b(shift2_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  filterfpgadesign_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(27),
    .a_width(28),
    .b_arith(`xlSigned),
    .b_bin_pt(27),
    .b_width(28),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(29),
    .core_name0("filterfpgadesign_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(29),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(27),
    .s_width(29)
  )
  addsub5 (
    .clr(1'b0),
    .en(1'b1),
    .a(register3_q_net),
    .b(shift3_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  filterfpgadesign_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(27),
    .a_width(28),
    .b_arith(`xlSigned),
    .b_bin_pt(27),
    .b_width(28),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(29),
    .core_name0("filterfpgadesign_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(29),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(27),
    .s_width(29)
  )
  addsub6 (
    .clr(1'b0),
    .en(1'b1),
    .a(register2_q_net),
    .b(register3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net)
  );
  filterfpgadesign_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(27),
    .b_width(29),
    .c_has_c_out(0),
    .c_latency(0),
    .c_output_width(30),
    .core_name0("filterfpgadesign_c_addsub_v12_0_i2"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(30),
    .latency(0),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(27),
    .s_width(30)
  )
  addsub7 (
    .clr(1'b0),
    .en(1'b1),
    .a(delay_q_net),
    .b(shift1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub7_s_net)
  );
  sysgen_constant_b543ca861e constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
  sysgen_constant_cc9f6ce9ad constant6 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant6_op_net)
  );
  sysgen_constant_6511bec112 constant7 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant7_op_net)
  );
  filterfpgadesign_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(27),
    .din_width(29),
    .dout_arith(2),
    .dout_bin_pt(27),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlRound)
  )
  convert (
    .clr(1'b0),
    .en(1'b1),
    .din(mux1_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert_dout_net)
  );
  filterfpgadesign_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(27),
    .din_width(29),
    .dout_arith(2),
    .dout_bin_pt(27),
    .dout_width(28),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlRound)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(mux_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert1_dout_net)
  );
  filterfpgadesign_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(27),
    .din_width(30),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(16),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlRound)
  )
  convert2 (
    .clr(1'b0),
    .en(1'b1),
    .din(addsub7_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert2_dout_net)
  );
  filterfpgadesign_xlcounter_limit #(
    .cnt_15_0(4095),
    .cnt_31_16(0),
    .cnt_47_32(0),
    .cnt_63_48(0),
    .core_name0("filterfpgadesign_c_counter_binary_v12_0_i0"),
    .count_limited(0),
    .op_arith(`xlUnsigned),
    .op_width(12)
  )
  counter1 (
    .en(1'b1),
    .rst(1'b0),
    .clr(1'b0),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter1_op_net)
  );
  filterfpgadesign_xlcounter_limit #(
    .cnt_15_0(4095),
    .cnt_31_16(0),
    .cnt_47_32(0),
    .cnt_63_48(0),
    .core_name0("filterfpgadesign_c_counter_binary_v12_0_i0"),
    .count_limited(0),
    .op_arith(`xlUnsigned),
    .op_width(12)
  )
  counter2 (
    .en(1'b1),
    .rst(1'b0),
    .clr(1'b0),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter2_op_net)
  );
  filterfpgadesign_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b1),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  filterfpgadesign_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b1),
    .d(reinterpret1_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  sysgen_mux_bd89408ce7 mux (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(relational_op_net),
    .d0(addsub2_s_net),
    .d1(addsub3_s_net),
    .y(mux_y_net)
  );
  sysgen_mux_37834b213b mux1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(relational1_op_net),
    .d0(addsub4_s_net),
    .d1(addsub5_s_net),
    .y(mux1_y_net)
  );
  sysgen_mux_be3eb42026 mux2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .sel(relational2_op_net),
    .d0(absolute_op_net),
    .d1(register1_q_net),
    .y(mux2_y_net)
  );
  filterfpgadesign_xlregister #(
    .d_width(16),
    .init_value(16'b0000000000000000)
  )
  register1 (
    .en(1'b1),
    .rst(1'b0),
    .d(mux2_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  filterfpgadesign_xlregister #(
    .d_width(28),
    .init_value(28'b0000000000000000000000000000)
  )
  register2 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register2_q_net)
  );
  filterfpgadesign_xlregister #(
    .d_width(28),
    .init_value(28'b0000000000000000000000000000)
  )
  register3 (
    .en(1'b1),
    .rst(1'b0),
    .d(convert_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register3_q_net)
  );
  sysgen_reinterpret_71de213f50 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(single_port_ram1_data_out_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_relational_a38da4fa40 relational (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(delay1_q_net),
    .b(register2_q_net),
    .op(relational_op_net)
  );
  sysgen_relational_818805a389 relational1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(delay1_q_net),
    .b(register3_q_net),
    .op(relational1_op_net)
  );
  sysgen_relational_d1e866b6ec relational2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(absolute_op_net),
    .b(register1_q_net),
    .op(relational2_op_net)
  );
  sysgen_shift_448c53cb86 shift1 (
    .clr(1'b0),
    .ip(addsub6_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(shift1_op_net)
  );
  sysgen_shift_1c1286f18e shift2 (
    .clr(1'b0),
    .ip(register1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(shift2_op_net)
  );
  sysgen_shift_884598f79e shift3 (
    .clr(1'b0),
    .ip(shift2_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(shift3_op_net)
  );
  filterfpgadesign_xlspram #(
    .c_address_width(12),
    .c_width(16),
    .core_name0("filterfpgadesign_blk_mem_gen_v8_3_i0"),
    .latency(1)
  )
  single_port_ram1 (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter1_op_net),
    .data_in(constant6_op_net),
    .we(constant7_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data_out(single_port_ram1_data_out_net)
  );
  filterfpgadesign_xlspram #(
    .c_address_width(12),
    .c_width(16),
    .core_name0("filterfpgadesign_blk_mem_gen_v8_3_i1"),
    .latency(1)
  )
  single_port_ram2 (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter2_op_net),
    .data_in(convert2_dout_net),
    .we(constant1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data_out(single_port_ram2_data_out_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module filterfpgadesign_default_clock_driver (
  input filterfpgadesign_sysclk,
  input filterfpgadesign_sysce,
  input filterfpgadesign_sysclr,
  output filterfpgadesign_clk1,
  output filterfpgadesign_ce1
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver (
    .sysclk(filterfpgadesign_sysclk),
    .sysce(filterfpgadesign_sysce),
    .sysclr(filterfpgadesign_sysclr),
    .clk(filterfpgadesign_clk1),
    .ce(filterfpgadesign_ce1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "filterfpgadesign,sysgen_core_2016_4,{,compilation=Hardware Co-Simulation (JTAG),block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg484,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1,waveform_viewer=0,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=4096,abs=1,addsub=6,constant=3,convert=3,counter=2,delay=2,mux=3,register=3,reinterpret=1,relational=3,shift=3,spram=2,}" *)
module filterfpgadesign (
  input clk,
  input filterfpgadesign_aresetn,
  input [3-1:0] filterfpgadesign_s_axi_awaddr,
  input filterfpgadesign_s_axi_awvalid,
  input [32-1:0] filterfpgadesign_s_axi_wdata,
  input [4-1:0] filterfpgadesign_s_axi_wstrb,
  input filterfpgadesign_s_axi_wvalid,
  input filterfpgadesign_s_axi_bready,
  input [3-1:0] filterfpgadesign_s_axi_araddr,
  input filterfpgadesign_s_axi_arvalid,
  input filterfpgadesign_s_axi_rready,
  output filterfpgadesign_s_axi_awready,
  output filterfpgadesign_s_axi_wready,
  output [2-1:0] filterfpgadesign_s_axi_bresp,
  output filterfpgadesign_s_axi_bvalid,
  output filterfpgadesign_s_axi_arready,
  output [32-1:0] filterfpgadesign_s_axi_rdata,
  output [2-1:0] filterfpgadesign_s_axi_rresp,
  output filterfpgadesign_s_axi_rvalid
);
  wire [16-1:0] gateway_out;
  wire ce_1_net;
  wire clk_1_net;
  wire clk_net;
  filterfpgadesign_axi_lite_interface filterfpgadesign_axi_lite_interface (
    .gateway_out(gateway_out),
    .filterfpgadesign_s_axi_awaddr(filterfpgadesign_s_axi_awaddr),
    .filterfpgadesign_s_axi_awvalid(filterfpgadesign_s_axi_awvalid),
    .filterfpgadesign_s_axi_wdata(filterfpgadesign_s_axi_wdata),
    .filterfpgadesign_s_axi_wstrb(filterfpgadesign_s_axi_wstrb),
    .filterfpgadesign_s_axi_wvalid(filterfpgadesign_s_axi_wvalid),
    .filterfpgadesign_s_axi_bready(filterfpgadesign_s_axi_bready),
    .filterfpgadesign_s_axi_araddr(filterfpgadesign_s_axi_araddr),
    .filterfpgadesign_s_axi_arvalid(filterfpgadesign_s_axi_arvalid),
    .filterfpgadesign_s_axi_rready(filterfpgadesign_s_axi_rready),
    .filterfpgadesign_aresetn(filterfpgadesign_aresetn),
    .filterfpgadesign_aclk(clk),
    .filterfpgadesign_s_axi_awready(filterfpgadesign_s_axi_awready),
    .filterfpgadesign_s_axi_wready(filterfpgadesign_s_axi_wready),
    .filterfpgadesign_s_axi_bresp(filterfpgadesign_s_axi_bresp),
    .filterfpgadesign_s_axi_bvalid(filterfpgadesign_s_axi_bvalid),
    .filterfpgadesign_s_axi_arready(filterfpgadesign_s_axi_arready),
    .filterfpgadesign_s_axi_rdata(filterfpgadesign_s_axi_rdata),
    .filterfpgadesign_s_axi_rresp(filterfpgadesign_s_axi_rresp),
    .filterfpgadesign_s_axi_rvalid(filterfpgadesign_s_axi_rvalid),
    .clk(clk_net)
  );
  filterfpgadesign_default_clock_driver filterfpgadesign_default_clock_driver (
    .filterfpgadesign_sysclk(clk_net),
    .filterfpgadesign_sysce(1'b1),
    .filterfpgadesign_sysclr(1'b0),
    .filterfpgadesign_clk1(clk_1_net),
    .filterfpgadesign_ce1(ce_1_net)
  );
  filterfpgadesign_struct filterfpgadesign_struct (
    .clk_1(clk_1_net),
    .ce_1(ce_1_net),
    .gateway_out(gateway_out)
  );
endmodule
