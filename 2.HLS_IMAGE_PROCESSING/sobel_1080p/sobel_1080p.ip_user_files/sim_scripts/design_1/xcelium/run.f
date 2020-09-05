-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_5 -sv \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/zynq_ultra_ps_e_vip_v1_0_5 -sv \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/cac7/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_19 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_18 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_20 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_13 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_3 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/lib_bmg_v1_0_12 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/7268/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_21 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e644/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_vdma_v6_3_7 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/ec9e/hdl/axi_vdma_v6_3_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vdma_v6_3_7 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/ec9e/hdl/axi_vdma_v6_3_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_vdma_0_2/sim/design_1_axi_vdma_0_2.vhd" \
  "../../../bd/design_1/ip/design_1_axi_vdma_1_0/sim/design_1_axi_vdma_1_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/sim/bd_48ac.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_6 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_48ac_one_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_48ac_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_48ac_arsw_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_48ac_rsw_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_48ac_awsw_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_48ac_wsw_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_48ac_bsw_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_48ac_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_48ac_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_48ac_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_48ac_s00a2s_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_48ac_sarn_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_48ac_srn_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_48ac_s01mmu_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_48ac_s01tr_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_48ac_s01sic_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_48ac_s01a2s_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_48ac_sawn_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_48ac_swn_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_48ac_sbn_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_48ac_s02mmu_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_48ac_s02tr_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_48ac_s02sic_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_48ac_s02a2s_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_48ac_sawn_1.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_48ac_swn_1.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_48ac_sbn_1.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_48ac_s03mmu_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_48ac_s03tr_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_48ac_s03sic_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_48ac_s03a2s_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_48ac_sarn_1.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_48ac_srn_1.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_48ac_m00s2a_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_48ac_m00arn_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_48ac_m00rn_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_48ac_m00awn_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_37/sim/bd_48ac_m00wn_0.sv" \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_38/sim/bd_48ac_m00bn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_39/sim/bd_48ac_m00e_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_smartconnect_0_0/sim/design_1_smartconnect_0_0.v" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_3 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps8_0_100M_0/sim/design_1_rst_ps8_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_intc_v4_1_13 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/c0fe/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_intc_0_0/sim/design_1_axi_intc_0_0.vhd" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/1123/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_6 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_6 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_multadd_v3_0_6 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_6 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_15 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/d4d2/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_1_8 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/83a3/hdl/floating_point_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/AddWeighted.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/AXIvideo2Mat.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/Block_Mat_exit423_pr.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/ConvertScaleAbs.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/ConvertScaleAbs273.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/CvtColor.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/CvtColor_1.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/Duplicate.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/fifo_w8_d2_A.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/fifo_w16_d2_A.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/fifo_w32_d2_A.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/fifo_w32_d4_A.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/fifo_w32_d5_A.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/fifo_w32_d6_A.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/fifo_w32_d7_A.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/fifo_w32_d8_A.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/fifo_w32_d10_A.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/Filter2D.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/Filter2D_1.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/Filter2D_1_k_buf_eOg.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/GaussianBlur.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/Mat2AXIvideo.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/Sobel.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/Sobel_1.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel_ama_aibs.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel_CONTROL_BUS_s_axi.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel_dadd_udo.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel_dmul_vdy.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel_mac_mbkb.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel_mac_mdEe.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel_mac_mkbM.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel_mac_mlbW.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel_mac_mpcA.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel_mac_mqcK.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel_mac_mrcU.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel_mac_msc4.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel_mul_mcud.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel_mul_mjbC.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel_mux_3hbi.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel_sitodtde.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel_uitodwdI.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/start_for_AddWeigCeG.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/start_for_ConvertAem.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/start_for_ConvertBew.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/start_for_CvtColoEe0.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/start_for_CvtColoFfa.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/start_for_Duplicayd2.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/start_for_GaussiaxdS.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/start_for_Mat2AXIDeQ.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/start_for_Sobel_1zec.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/start_for_Sobel_U0.v" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/verilog/sobel_accel.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/ip/sobel_accel_ap_dadd_3_full_dsp_64.vhd" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/ip/sobel_accel_ap_dmul_3_max_dsp_64.vhd" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/ip/sobel_accel_ap_sitodp_2_no_dsp_32.vhd" \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e1d0/hdl/ip/sobel_accel_ap_uitodp_2_no_dsp_32.vhd" \
  "../../../bd/design_1/ip/design_1_sobel_accel_0_2/sim/design_1_sobel_accel_0_2.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_19 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_18 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/ac9d/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_dwidth_converter_v2_1_19 \
  "../../../../sobel_base.srcs/sources_1/bd/design_1/ipshared/e578/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

