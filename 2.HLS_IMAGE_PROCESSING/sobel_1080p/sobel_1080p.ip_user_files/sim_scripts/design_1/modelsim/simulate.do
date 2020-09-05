onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_5 -L zynq_ultra_ps_e_vip_v1_0_5 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_19 -L fifo_generator_v13_2_4 -L axi_data_fifo_v2_1_18 -L axi_crossbar_v2_1_20 -L lib_cdc_v1_0_2 -L lib_pkg_v1_0_2 -L lib_fifo_v1_0_13 -L blk_mem_gen_v8_4_3 -L lib_bmg_v1_0_12 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_21 -L axi_vdma_v6_3_7 -L xlconstant_v1_1_6 -L proc_sys_reset_v5_0_13 -L smartconnect_v1_0 -L xlconcat_v2_1_3 -L axi_lite_ipif_v3_0_4 -L axi_intc_v4_1_13 -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_15 -L floating_point_v7_1_8 -L axi_protocol_converter_v2_1_19 -L axi_clock_converter_v2_1_18 -L axi_dwidth_converter_v2_1_19 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run -all

quit -force
