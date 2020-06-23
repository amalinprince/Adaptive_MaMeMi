`timescale 1 ns / 10 ps
// Generated from Simulink block 
module filterfpgadesign_stub (
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
  filterfpgadesign_0 sysgen_dut (
    .clk(clk),
    .filterfpgadesign_aresetn(filterfpgadesign_aresetn),
    .filterfpgadesign_s_axi_awaddr(filterfpgadesign_s_axi_awaddr),
    .filterfpgadesign_s_axi_awvalid(filterfpgadesign_s_axi_awvalid),
    .filterfpgadesign_s_axi_wdata(filterfpgadesign_s_axi_wdata),
    .filterfpgadesign_s_axi_wstrb(filterfpgadesign_s_axi_wstrb),
    .filterfpgadesign_s_axi_wvalid(filterfpgadesign_s_axi_wvalid),
    .filterfpgadesign_s_axi_bready(filterfpgadesign_s_axi_bready),
    .filterfpgadesign_s_axi_araddr(filterfpgadesign_s_axi_araddr),
    .filterfpgadesign_s_axi_arvalid(filterfpgadesign_s_axi_arvalid),
    .filterfpgadesign_s_axi_rready(filterfpgadesign_s_axi_rready),
    .filterfpgadesign_s_axi_awready(filterfpgadesign_s_axi_awready),
    .filterfpgadesign_s_axi_wready(filterfpgadesign_s_axi_wready),
    .filterfpgadesign_s_axi_bresp(filterfpgadesign_s_axi_bresp),
    .filterfpgadesign_s_axi_bvalid(filterfpgadesign_s_axi_bvalid),
    .filterfpgadesign_s_axi_arready(filterfpgadesign_s_axi_arready),
    .filterfpgadesign_s_axi_rdata(filterfpgadesign_s_axi_rdata),
    .filterfpgadesign_s_axi_rresp(filterfpgadesign_s_axi_rresp),
    .filterfpgadesign_s_axi_rvalid(filterfpgadesign_s_axi_rvalid)
  );
endmodule
