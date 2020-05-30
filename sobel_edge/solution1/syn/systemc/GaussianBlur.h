// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _GaussianBlur_HH_
#define _GaussianBlur_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Filter2D_1.h"

namespace ap_rtl {

struct GaussianBlur : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<8> > p_src_data_stream_V_dout;
    sc_in< sc_logic > p_src_data_stream_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_V_read;
    sc_out< sc_lv<8> > p_dst_data_stream_V_din;
    sc_in< sc_logic > p_dst_data_stream_V_full_n;
    sc_out< sc_logic > p_dst_data_stream_V_write;


    // Module declarations
    GaussianBlur(sc_module_name name);
    SC_HAS_PROCESS(GaussianBlur);

    ~GaussianBlur();

    sc_trace_file* mVcdFile;

    Filter2D_1* grp_Filter2D_1_fu_40;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > grp_Filter2D_1_fu_40_ap_start;
    sc_signal< sc_logic > grp_Filter2D_1_fu_40_ap_done;
    sc_signal< sc_logic > grp_Filter2D_1_fu_40_ap_idle;
    sc_signal< sc_logic > grp_Filter2D_1_fu_40_ap_ready;
    sc_signal< sc_logic > grp_Filter2D_1_fu_40_p_src_data_stream_V_read;
    sc_signal< sc_lv<8> > grp_Filter2D_1_fu_40_p_dst_data_stream_V_din;
    sc_signal< sc_logic > grp_Filter2D_1_fu_40_p_dst_data_stream_V_write;
    sc_signal< sc_logic > grp_Filter2D_1_fu_40_ap_start_reg;
    sc_signal< bool > ap_block_state1_ignore_call2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    sc_signal< bool > ap_block_state1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_block_state1();
    void thread_ap_block_state1_ignore_call2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_Filter2D_1_fu_40_ap_start();
    void thread_internal_ap_ready();
    void thread_p_dst_data_stream_V_din();
    void thread_p_dst_data_stream_V_write();
    void thread_p_src_data_stream_V_read();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
