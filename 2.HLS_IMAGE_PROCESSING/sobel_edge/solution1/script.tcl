############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sobel_edge
set_top sobel_accel
add_files sobel_edge/src/sobel.cpp
add_files -tb sobel_edge/src/tb_sobel.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xczu3eg-sbva484-1-e} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./sobel_edge/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
