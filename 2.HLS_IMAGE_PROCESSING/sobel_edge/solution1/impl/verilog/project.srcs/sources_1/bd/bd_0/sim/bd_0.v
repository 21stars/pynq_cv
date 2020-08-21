//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Jun  3 20:21:46 2020
//Host        : Automation-PC running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (INPUT_STREAM_tdata,
    INPUT_STREAM_tdest,
    INPUT_STREAM_tid,
    INPUT_STREAM_tkeep,
    INPUT_STREAM_tlast,
    INPUT_STREAM_tready,
    INPUT_STREAM_tstrb,
    INPUT_STREAM_tuser,
    INPUT_STREAM_tvalid,
    OUTPUT_STREAM_tdata,
    OUTPUT_STREAM_tdest,
    OUTPUT_STREAM_tid,
    OUTPUT_STREAM_tkeep,
    OUTPUT_STREAM_tlast,
    OUTPUT_STREAM_tready,
    OUTPUT_STREAM_tstrb,
    OUTPUT_STREAM_tuser,
    OUTPUT_STREAM_tvalid,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axi_CONTROL_BUS_araddr,
    s_axi_CONTROL_BUS_arready,
    s_axi_CONTROL_BUS_arvalid,
    s_axi_CONTROL_BUS_awaddr,
    s_axi_CONTROL_BUS_awready,
    s_axi_CONTROL_BUS_awvalid,
    s_axi_CONTROL_BUS_bready,
    s_axi_CONTROL_BUS_bresp,
    s_axi_CONTROL_BUS_bvalid,
    s_axi_CONTROL_BUS_rdata,
    s_axi_CONTROL_BUS_rready,
    s_axi_CONTROL_BUS_rresp,
    s_axi_CONTROL_BUS_rvalid,
    s_axi_CONTROL_BUS_wdata,
    s_axi_CONTROL_BUS_wready,
    s_axi_CONTROL_BUS_wstrb,
    s_axi_CONTROL_BUS_wvalid);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INPUT_STREAM, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) input [23:0]INPUT_STREAM_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) input [0:0]INPUT_STREAM_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) input [0:0]INPUT_STREAM_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) input [2:0]INPUT_STREAM_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) input [0:0]INPUT_STREAM_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) output INPUT_STREAM_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) input [2:0]INPUT_STREAM_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) input [0:0]INPUT_STREAM_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) input INPUT_STREAM_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME OUTPUT_STREAM, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) output [23:0]OUTPUT_STREAM_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) output [0:0]OUTPUT_STREAM_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) output [0:0]OUTPUT_STREAM_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) output [2:0]OUTPUT_STREAM_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) output [0:0]OUTPUT_STREAM_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) input OUTPUT_STREAM_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) output [2:0]OUTPUT_STREAM_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) output [0:0]OUTPUT_STREAM_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) output OUTPUT_STREAM_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF INPUT_STREAM:OUTPUT_STREAM:s_axi_CONTROL_BUS, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, INSERT_VIP 0, PHASE 0.000" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CONTROL_BUS, ADDR_WIDTH 12, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [3:0]s_axi_CONTROL_BUS_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) output s_axi_CONTROL_BUS_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) input s_axi_CONTROL_BUS_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) input [3:0]s_axi_CONTROL_BUS_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) output s_axi_CONTROL_BUS_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) input s_axi_CONTROL_BUS_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) input s_axi_CONTROL_BUS_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) output [1:0]s_axi_CONTROL_BUS_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) output s_axi_CONTROL_BUS_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) output [31:0]s_axi_CONTROL_BUS_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) input s_axi_CONTROL_BUS_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) output [1:0]s_axi_CONTROL_BUS_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) output s_axi_CONTROL_BUS_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) input [31:0]s_axi_CONTROL_BUS_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) output s_axi_CONTROL_BUS_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) input [3:0]s_axi_CONTROL_BUS_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS " *) input s_axi_CONTROL_BUS_wvalid;

  wire [23:0]INPUT_STREAM_0_1_TDATA;
  wire [0:0]INPUT_STREAM_0_1_TDEST;
  wire [0:0]INPUT_STREAM_0_1_TID;
  wire [2:0]INPUT_STREAM_0_1_TKEEP;
  wire [0:0]INPUT_STREAM_0_1_TLAST;
  wire INPUT_STREAM_0_1_TREADY;
  wire [2:0]INPUT_STREAM_0_1_TSTRB;
  wire [0:0]INPUT_STREAM_0_1_TUSER;
  wire INPUT_STREAM_0_1_TVALID;
  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire [23:0]hls_inst_OUTPUT_STREAM_TDATA;
  wire [0:0]hls_inst_OUTPUT_STREAM_TDEST;
  wire [0:0]hls_inst_OUTPUT_STREAM_TID;
  wire [2:0]hls_inst_OUTPUT_STREAM_TKEEP;
  wire [0:0]hls_inst_OUTPUT_STREAM_TLAST;
  wire hls_inst_OUTPUT_STREAM_TREADY;
  wire [2:0]hls_inst_OUTPUT_STREAM_TSTRB;
  wire [0:0]hls_inst_OUTPUT_STREAM_TUSER;
  wire hls_inst_OUTPUT_STREAM_TVALID;
  wire hls_inst_interrupt;
  wire [3:0]s_axi_CONTROL_BUS_0_1_ARADDR;
  wire s_axi_CONTROL_BUS_0_1_ARREADY;
  wire s_axi_CONTROL_BUS_0_1_ARVALID;
  wire [3:0]s_axi_CONTROL_BUS_0_1_AWADDR;
  wire s_axi_CONTROL_BUS_0_1_AWREADY;
  wire s_axi_CONTROL_BUS_0_1_AWVALID;
  wire s_axi_CONTROL_BUS_0_1_BREADY;
  wire [1:0]s_axi_CONTROL_BUS_0_1_BRESP;
  wire s_axi_CONTROL_BUS_0_1_BVALID;
  wire [31:0]s_axi_CONTROL_BUS_0_1_RDATA;
  wire s_axi_CONTROL_BUS_0_1_RREADY;
  wire [1:0]s_axi_CONTROL_BUS_0_1_RRESP;
  wire s_axi_CONTROL_BUS_0_1_RVALID;
  wire [31:0]s_axi_CONTROL_BUS_0_1_WDATA;
  wire s_axi_CONTROL_BUS_0_1_WREADY;
  wire [3:0]s_axi_CONTROL_BUS_0_1_WSTRB;
  wire s_axi_CONTROL_BUS_0_1_WVALID;

  assign INPUT_STREAM_0_1_TDATA = INPUT_STREAM_tdata[23:0];
  assign INPUT_STREAM_0_1_TDEST = INPUT_STREAM_tdest[0];
  assign INPUT_STREAM_0_1_TID = INPUT_STREAM_tid[0];
  assign INPUT_STREAM_0_1_TKEEP = INPUT_STREAM_tkeep[2:0];
  assign INPUT_STREAM_0_1_TLAST = INPUT_STREAM_tlast[0];
  assign INPUT_STREAM_0_1_TSTRB = INPUT_STREAM_tstrb[2:0];
  assign INPUT_STREAM_0_1_TUSER = INPUT_STREAM_tuser[0];
  assign INPUT_STREAM_0_1_TVALID = INPUT_STREAM_tvalid;
  assign INPUT_STREAM_tready = INPUT_STREAM_0_1_TREADY;
  assign OUTPUT_STREAM_tdata[23:0] = hls_inst_OUTPUT_STREAM_TDATA;
  assign OUTPUT_STREAM_tdest[0] = hls_inst_OUTPUT_STREAM_TDEST;
  assign OUTPUT_STREAM_tid[0] = hls_inst_OUTPUT_STREAM_TID;
  assign OUTPUT_STREAM_tkeep[2:0] = hls_inst_OUTPUT_STREAM_TKEEP;
  assign OUTPUT_STREAM_tlast[0] = hls_inst_OUTPUT_STREAM_TLAST;
  assign OUTPUT_STREAM_tstrb[2:0] = hls_inst_OUTPUT_STREAM_TSTRB;
  assign OUTPUT_STREAM_tuser[0] = hls_inst_OUTPUT_STREAM_TUSER;
  assign OUTPUT_STREAM_tvalid = hls_inst_OUTPUT_STREAM_TVALID;
  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign hls_inst_OUTPUT_STREAM_TREADY = OUTPUT_STREAM_tready;
  assign interrupt = hls_inst_interrupt;
  assign s_axi_CONTROL_BUS_0_1_ARADDR = s_axi_CONTROL_BUS_araddr[3:0];
  assign s_axi_CONTROL_BUS_0_1_ARVALID = s_axi_CONTROL_BUS_arvalid;
  assign s_axi_CONTROL_BUS_0_1_AWADDR = s_axi_CONTROL_BUS_awaddr[3:0];
  assign s_axi_CONTROL_BUS_0_1_AWVALID = s_axi_CONTROL_BUS_awvalid;
  assign s_axi_CONTROL_BUS_0_1_BREADY = s_axi_CONTROL_BUS_bready;
  assign s_axi_CONTROL_BUS_0_1_RREADY = s_axi_CONTROL_BUS_rready;
  assign s_axi_CONTROL_BUS_0_1_WDATA = s_axi_CONTROL_BUS_wdata[31:0];
  assign s_axi_CONTROL_BUS_0_1_WSTRB = s_axi_CONTROL_BUS_wstrb[3:0];
  assign s_axi_CONTROL_BUS_0_1_WVALID = s_axi_CONTROL_BUS_wvalid;
  assign s_axi_CONTROL_BUS_arready = s_axi_CONTROL_BUS_0_1_ARREADY;
  assign s_axi_CONTROL_BUS_awready = s_axi_CONTROL_BUS_0_1_AWREADY;
  assign s_axi_CONTROL_BUS_bresp[1:0] = s_axi_CONTROL_BUS_0_1_BRESP;
  assign s_axi_CONTROL_BUS_bvalid = s_axi_CONTROL_BUS_0_1_BVALID;
  assign s_axi_CONTROL_BUS_rdata[31:0] = s_axi_CONTROL_BUS_0_1_RDATA;
  assign s_axi_CONTROL_BUS_rresp[1:0] = s_axi_CONTROL_BUS_0_1_RRESP;
  assign s_axi_CONTROL_BUS_rvalid = s_axi_CONTROL_BUS_0_1_RVALID;
  assign s_axi_CONTROL_BUS_wready = s_axi_CONTROL_BUS_0_1_WREADY;
  bd_0_hls_inst_0 hls_inst
       (.INPUT_STREAM_TDATA(INPUT_STREAM_0_1_TDATA),
        .INPUT_STREAM_TDEST(INPUT_STREAM_0_1_TDEST),
        .INPUT_STREAM_TID(INPUT_STREAM_0_1_TID),
        .INPUT_STREAM_TKEEP(INPUT_STREAM_0_1_TKEEP),
        .INPUT_STREAM_TLAST(INPUT_STREAM_0_1_TLAST),
        .INPUT_STREAM_TREADY(INPUT_STREAM_0_1_TREADY),
        .INPUT_STREAM_TSTRB(INPUT_STREAM_0_1_TSTRB),
        .INPUT_STREAM_TUSER(INPUT_STREAM_0_1_TUSER),
        .INPUT_STREAM_TVALID(INPUT_STREAM_0_1_TVALID),
        .OUTPUT_STREAM_TDATA(hls_inst_OUTPUT_STREAM_TDATA),
        .OUTPUT_STREAM_TDEST(hls_inst_OUTPUT_STREAM_TDEST),
        .OUTPUT_STREAM_TID(hls_inst_OUTPUT_STREAM_TID),
        .OUTPUT_STREAM_TKEEP(hls_inst_OUTPUT_STREAM_TKEEP),
        .OUTPUT_STREAM_TLAST(hls_inst_OUTPUT_STREAM_TLAST),
        .OUTPUT_STREAM_TREADY(hls_inst_OUTPUT_STREAM_TREADY),
        .OUTPUT_STREAM_TSTRB(hls_inst_OUTPUT_STREAM_TSTRB),
        .OUTPUT_STREAM_TUSER(hls_inst_OUTPUT_STREAM_TUSER),
        .OUTPUT_STREAM_TVALID(hls_inst_OUTPUT_STREAM_TVALID),
        .ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .interrupt(hls_inst_interrupt),
        .s_axi_CONTROL_BUS_ARADDR(s_axi_CONTROL_BUS_0_1_ARADDR),
        .s_axi_CONTROL_BUS_ARREADY(s_axi_CONTROL_BUS_0_1_ARREADY),
        .s_axi_CONTROL_BUS_ARVALID(s_axi_CONTROL_BUS_0_1_ARVALID),
        .s_axi_CONTROL_BUS_AWADDR(s_axi_CONTROL_BUS_0_1_AWADDR),
        .s_axi_CONTROL_BUS_AWREADY(s_axi_CONTROL_BUS_0_1_AWREADY),
        .s_axi_CONTROL_BUS_AWVALID(s_axi_CONTROL_BUS_0_1_AWVALID),
        .s_axi_CONTROL_BUS_BREADY(s_axi_CONTROL_BUS_0_1_BREADY),
        .s_axi_CONTROL_BUS_BRESP(s_axi_CONTROL_BUS_0_1_BRESP),
        .s_axi_CONTROL_BUS_BVALID(s_axi_CONTROL_BUS_0_1_BVALID),
        .s_axi_CONTROL_BUS_RDATA(s_axi_CONTROL_BUS_0_1_RDATA),
        .s_axi_CONTROL_BUS_RREADY(s_axi_CONTROL_BUS_0_1_RREADY),
        .s_axi_CONTROL_BUS_RRESP(s_axi_CONTROL_BUS_0_1_RRESP),
        .s_axi_CONTROL_BUS_RVALID(s_axi_CONTROL_BUS_0_1_RVALID),
        .s_axi_CONTROL_BUS_WDATA(s_axi_CONTROL_BUS_0_1_WDATA),
        .s_axi_CONTROL_BUS_WREADY(s_axi_CONTROL_BUS_0_1_WREADY),
        .s_axi_CONTROL_BUS_WSTRB(s_axi_CONTROL_BUS_0_1_WSTRB),
        .s_axi_CONTROL_BUS_WVALID(s_axi_CONTROL_BUS_0_1_WVALID));
endmodule
