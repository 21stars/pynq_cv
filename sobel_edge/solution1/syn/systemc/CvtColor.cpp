// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "CvtColor.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic CvtColor::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic CvtColor::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> CvtColor::ap_ST_fsm_state1 = "1";
const sc_lv<4> CvtColor::ap_ST_fsm_state2 = "10";
const sc_lv<4> CvtColor::ap_ST_fsm_pp0_stage0 = "100";
const sc_lv<4> CvtColor::ap_ST_fsm_state5 = "1000";
const bool CvtColor::ap_const_boolean_1 = true;
const sc_lv<32> CvtColor::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> CvtColor::ap_const_lv32_2 = "10";
const bool CvtColor::ap_const_boolean_0 = false;
const sc_lv<1> CvtColor::ap_const_lv1_1 = "1";
const sc_lv<32> CvtColor::ap_const_lv32_1 = "1";
const sc_lv<1> CvtColor::ap_const_lv1_0 = "0";
const sc_lv<11> CvtColor::ap_const_lv11_0 = "00000000000";
const sc_lv<32> CvtColor::ap_const_lv32_3 = "11";
const sc_lv<11> CvtColor::ap_const_lv11_1 = "1";

CvtColor::CvtColor(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_01001);
    sensitive << ( p_src_data_stream_V_empty_n );
    sensitive << ( p_dst_data_stream_0_V_full_n );
    sensitive << ( p_dst_data_stream_1_V_full_n );
    sensitive << ( p_dst_data_stream_2_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln1968_reg_247 );

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( p_src_data_stream_V_empty_n );
    sensitive << ( p_dst_data_stream_0_V_full_n );
    sensitive << ( p_dst_data_stream_1_V_full_n );
    sensitive << ( p_dst_data_stream_2_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln1968_reg_247 );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( p_src_data_stream_V_empty_n );
    sensitive << ( p_dst_data_stream_0_V_full_n );
    sensitive << ( p_dst_data_stream_1_V_full_n );
    sensitive << ( p_dst_data_stream_2_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln1968_reg_247 );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( p_src_rows_V_empty_n );
    sensitive << ( p_src_cols_V_empty_n );

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter1);
    sensitive << ( p_src_data_stream_V_empty_n );
    sensitive << ( p_dst_data_stream_0_V_full_n );
    sensitive << ( p_dst_data_stream_1_V_full_n );
    sensitive << ( p_dst_data_stream_2_V_full_n );
    sensitive << ( icmp_ln1968_reg_247 );

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state3);
    sensitive << ( icmp_ln1968_fu_217_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( icmp_ln1967_fu_202_p2 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( real_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( internal_ap_ready );

    SC_METHOD(thread_i_fu_207_p2);
    sensitive << ( i_0_i_reg_176 );

    SC_METHOD(thread_icmp_ln1967_fu_202_p2);
    sensitive << ( p_src_rows_V_read_reg_233 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln1967_fu_198_p1 );

    SC_METHOD(thread_icmp_ln1968_fu_217_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( p_src_cols_V_read_reg_228 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( zext_ln1968_fu_213_p1 );

    SC_METHOD(thread_internal_ap_ready);
    sensitive << ( icmp_ln1967_fu_202_p2 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_j_fu_222_p2);
    sensitive << ( j_0_i_reg_187 );

    SC_METHOD(thread_p_dst_data_stream_0_V_blk_n);
    sensitive << ( p_dst_data_stream_0_V_full_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln1968_reg_247 );

    SC_METHOD(thread_p_dst_data_stream_0_V_din);
    sensitive << ( p_src_data_stream_V_dout );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln1968_reg_247 );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_p_dst_data_stream_0_V_write);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln1968_reg_247 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_p_dst_data_stream_1_V_blk_n);
    sensitive << ( p_dst_data_stream_1_V_full_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln1968_reg_247 );

    SC_METHOD(thread_p_dst_data_stream_1_V_din);
    sensitive << ( p_src_data_stream_V_dout );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln1968_reg_247 );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_p_dst_data_stream_1_V_write);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln1968_reg_247 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_p_dst_data_stream_2_V_blk_n);
    sensitive << ( p_dst_data_stream_2_V_full_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln1968_reg_247 );

    SC_METHOD(thread_p_dst_data_stream_2_V_din);
    sensitive << ( p_src_data_stream_V_dout );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln1968_reg_247 );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_p_dst_data_stream_2_V_write);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln1968_reg_247 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_p_src_cols_V_blk_n);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( p_src_cols_V_empty_n );

    SC_METHOD(thread_p_src_cols_V_read);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( p_src_rows_V_empty_n );
    sensitive << ( p_src_cols_V_empty_n );

    SC_METHOD(thread_p_src_data_stream_V_blk_n);
    sensitive << ( p_src_data_stream_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln1968_reg_247 );

    SC_METHOD(thread_p_src_data_stream_V_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln1968_reg_247 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_p_src_rows_V_blk_n);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( p_src_rows_V_empty_n );

    SC_METHOD(thread_p_src_rows_V_read);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( p_src_rows_V_empty_n );
    sensitive << ( p_src_cols_V_empty_n );

    SC_METHOD(thread_real_start);
    sensitive << ( ap_start );
    sensitive << ( start_full_n );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_start_out);
    sensitive << ( real_start );

    SC_METHOD(thread_start_write);
    sensitive << ( real_start );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_zext_ln1967_fu_198_p1);
    sensitive << ( i_0_i_reg_176 );

    SC_METHOD(thread_zext_ln1968_fu_213_p1);
    sensitive << ( j_0_i_reg_187 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( p_src_rows_V_empty_n );
    sensitive << ( p_src_cols_V_empty_n );
    sensitive << ( icmp_ln1967_fu_202_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln1968_fu_217_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );

    start_once_reg = SC_LOGIC_0;
    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "0001";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "CvtColor_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, start_full_n, "(port)start_full_n");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, start_out, "(port)start_out");
    sc_trace(mVcdFile, start_write, "(port)start_write");
    sc_trace(mVcdFile, p_src_rows_V_dout, "(port)p_src_rows_V_dout");
    sc_trace(mVcdFile, p_src_rows_V_empty_n, "(port)p_src_rows_V_empty_n");
    sc_trace(mVcdFile, p_src_rows_V_read, "(port)p_src_rows_V_read");
    sc_trace(mVcdFile, p_src_cols_V_dout, "(port)p_src_cols_V_dout");
    sc_trace(mVcdFile, p_src_cols_V_empty_n, "(port)p_src_cols_V_empty_n");
    sc_trace(mVcdFile, p_src_cols_V_read, "(port)p_src_cols_V_read");
    sc_trace(mVcdFile, p_src_data_stream_V_dout, "(port)p_src_data_stream_V_dout");
    sc_trace(mVcdFile, p_src_data_stream_V_empty_n, "(port)p_src_data_stream_V_empty_n");
    sc_trace(mVcdFile, p_src_data_stream_V_read, "(port)p_src_data_stream_V_read");
    sc_trace(mVcdFile, p_dst_data_stream_0_V_din, "(port)p_dst_data_stream_0_V_din");
    sc_trace(mVcdFile, p_dst_data_stream_0_V_full_n, "(port)p_dst_data_stream_0_V_full_n");
    sc_trace(mVcdFile, p_dst_data_stream_0_V_write, "(port)p_dst_data_stream_0_V_write");
    sc_trace(mVcdFile, p_dst_data_stream_1_V_din, "(port)p_dst_data_stream_1_V_din");
    sc_trace(mVcdFile, p_dst_data_stream_1_V_full_n, "(port)p_dst_data_stream_1_V_full_n");
    sc_trace(mVcdFile, p_dst_data_stream_1_V_write, "(port)p_dst_data_stream_1_V_write");
    sc_trace(mVcdFile, p_dst_data_stream_2_V_din, "(port)p_dst_data_stream_2_V_din");
    sc_trace(mVcdFile, p_dst_data_stream_2_V_full_n, "(port)p_dst_data_stream_2_V_full_n");
    sc_trace(mVcdFile, p_dst_data_stream_2_V_write, "(port)p_dst_data_stream_2_V_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, real_start, "real_start");
    sc_trace(mVcdFile, start_once_reg, "start_once_reg");
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, internal_ap_ready, "internal_ap_ready");
    sc_trace(mVcdFile, p_src_rows_V_blk_n, "p_src_rows_V_blk_n");
    sc_trace(mVcdFile, p_src_cols_V_blk_n, "p_src_cols_V_blk_n");
    sc_trace(mVcdFile, p_src_data_stream_V_blk_n, "p_src_data_stream_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, icmp_ln1968_reg_247, "icmp_ln1968_reg_247");
    sc_trace(mVcdFile, p_dst_data_stream_0_V_blk_n, "p_dst_data_stream_0_V_blk_n");
    sc_trace(mVcdFile, p_dst_data_stream_1_V_blk_n, "p_dst_data_stream_1_V_blk_n");
    sc_trace(mVcdFile, p_dst_data_stream_2_V_blk_n, "p_dst_data_stream_2_V_blk_n");
    sc_trace(mVcdFile, j_0_i_reg_187, "j_0_i_reg_187");
    sc_trace(mVcdFile, p_src_cols_V_read_reg_228, "p_src_cols_V_read_reg_228");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, p_src_rows_V_read_reg_233, "p_src_rows_V_read_reg_233");
    sc_trace(mVcdFile, icmp_ln1967_fu_202_p2, "icmp_ln1967_fu_202_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, i_fu_207_p2, "i_fu_207_p2");
    sc_trace(mVcdFile, i_reg_242, "i_reg_242");
    sc_trace(mVcdFile, icmp_ln1968_fu_217_p2, "icmp_ln1968_fu_217_p2");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter0, "ap_block_state3_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter1, "ap_block_state4_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, j_fu_222_p2, "j_fu_222_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state3, "ap_condition_pp0_exit_iter0_state3");
    sc_trace(mVcdFile, i_0_i_reg_176, "i_0_i_reg_176");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, ap_block_pp0_stage0_01001, "ap_block_pp0_stage0_01001");
    sc_trace(mVcdFile, zext_ln1967_fu_198_p1, "zext_ln1967_fu_198_p1");
    sc_trace(mVcdFile, zext_ln1968_fu_213_p1, "zext_ln1968_fu_213_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

CvtColor::~CvtColor() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void CvtColor::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(icmp_ln1967_fu_202_p2.read(), ap_const_lv1_0))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state3.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln1967_fu_202_p2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state3.read()))) {
            ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state3.read() ^ ap_const_logic_1);
        } else if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln1967_fu_202_p2.read()))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        i_0_i_reg_176 = i_reg_242.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, p_src_cols_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_src_rows_V_empty_n.read())))) {
        i_0_i_reg_176 = ap_const_lv11_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln1968_fu_217_p2.read()))) {
        j_0_i_reg_187 = j_fu_222_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln1967_fu_202_p2.read()))) {
        j_0_i_reg_187 = ap_const_lv11_0;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        start_once_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, real_start.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_0, internal_ap_ready.read()))) {
            start_once_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, internal_ap_ready.read())) {
            start_once_reg = ap_const_logic_0;
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_242 = i_fu_207_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        icmp_ln1968_reg_247 = icmp_ln1968_fu_217_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, p_src_cols_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_src_rows_V_empty_n.read())))) {
        p_src_cols_V_read_reg_228 = p_src_cols_V_dout.read();
        p_src_rows_V_read_reg_233 = p_src_rows_V_dout.read();
    }
}

void CvtColor::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[2];
}

void CvtColor::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void CvtColor::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void CvtColor::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[3];
}

void CvtColor::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void CvtColor::thread_ap_block_pp0_stage0_01001() {
    ap_block_pp0_stage0_01001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && ((esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
   esl_seteq<1,1,1>(ap_const_logic_0, p_src_data_stream_V_empty_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
   esl_seteq<1,1,1>(ap_const_logic_0, p_dst_data_stream_0_V_full_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
   esl_seteq<1,1,1>(ap_const_logic_0, p_dst_data_stream_1_V_full_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
   esl_seteq<1,1,1>(ap_const_logic_0, p_dst_data_stream_2_V_full_n.read()))));
}

void CvtColor::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && ((esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
   esl_seteq<1,1,1>(ap_const_logic_0, p_src_data_stream_V_empty_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
   esl_seteq<1,1,1>(ap_const_logic_0, p_dst_data_stream_0_V_full_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
   esl_seteq<1,1,1>(ap_const_logic_0, p_dst_data_stream_1_V_full_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
   esl_seteq<1,1,1>(ap_const_logic_0, p_dst_data_stream_2_V_full_n.read()))));
}

void CvtColor::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && ((esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
   esl_seteq<1,1,1>(ap_const_logic_0, p_src_data_stream_V_empty_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
   esl_seteq<1,1,1>(ap_const_logic_0, p_dst_data_stream_0_V_full_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
   esl_seteq<1,1,1>(ap_const_logic_0, p_dst_data_stream_1_V_full_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
   esl_seteq<1,1,1>(ap_const_logic_0, p_dst_data_stream_2_V_full_n.read()))));
}

void CvtColor::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, p_src_cols_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_src_rows_V_empty_n.read()));
}

void CvtColor::thread_ap_block_state3_pp0_stage0_iter0() {
    ap_block_state3_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void CvtColor::thread_ap_block_state4_pp0_stage0_iter1() {
    ap_block_state4_pp0_stage0_iter1 = ((esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, p_src_data_stream_V_empty_n.read())) || (esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, p_dst_data_stream_0_V_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, p_dst_data_stream_1_V_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, p_dst_data_stream_2_V_full_n.read())));
}

void CvtColor::thread_ap_condition_pp0_exit_iter0_state3() {
    if (esl_seteq<1,1,1>(icmp_ln1968_fu_217_p2.read(), ap_const_lv1_0)) {
        ap_condition_pp0_exit_iter0_state3 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state3 = ap_const_logic_0;
    }
}

void CvtColor::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln1967_fu_202_p2.read(), ap_const_lv1_0))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void CvtColor::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void CvtColor::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void CvtColor::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void CvtColor::thread_ap_ready() {
    ap_ready = internal_ap_ready.read();
}

void CvtColor::thread_i_fu_207_p2() {
    i_fu_207_p2 = (!i_0_i_reg_176.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(i_0_i_reg_176.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void CvtColor::thread_icmp_ln1967_fu_202_p2() {
    icmp_ln1967_fu_202_p2 = (!zext_ln1967_fu_198_p1.read().is_01() || !p_src_rows_V_read_reg_233.read().is_01())? sc_lv<1>(): (sc_bigint<12>(zext_ln1967_fu_198_p1.read()) < sc_bigint<12>(p_src_rows_V_read_reg_233.read()));
}

void CvtColor::thread_icmp_ln1968_fu_217_p2() {
    icmp_ln1968_fu_217_p2 = (!zext_ln1968_fu_213_p1.read().is_01() || !p_src_cols_V_read_reg_228.read().is_01())? sc_lv<1>(): (sc_bigint<12>(zext_ln1968_fu_213_p1.read()) < sc_bigint<12>(p_src_cols_V_read_reg_228.read()));
}

void CvtColor::thread_internal_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln1967_fu_202_p2.read(), ap_const_lv1_0))) {
        internal_ap_ready = ap_const_logic_1;
    } else {
        internal_ap_ready = ap_const_logic_0;
    }
}

void CvtColor::thread_j_fu_222_p2() {
    j_fu_222_p2 = (!j_0_i_reg_187.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(j_0_i_reg_187.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void CvtColor::thread_p_dst_data_stream_0_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1))) {
        p_dst_data_stream_0_V_blk_n = p_dst_data_stream_0_V_full_n.read();
    } else {
        p_dst_data_stream_0_V_blk_n = ap_const_logic_1;
    }
}

void CvtColor::thread_p_dst_data_stream_0_V_din() {
    p_dst_data_stream_0_V_din = p_src_data_stream_V_dout.read();
}

void CvtColor::thread_p_dst_data_stream_0_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        p_dst_data_stream_0_V_write = ap_const_logic_1;
    } else {
        p_dst_data_stream_0_V_write = ap_const_logic_0;
    }
}

void CvtColor::thread_p_dst_data_stream_1_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1))) {
        p_dst_data_stream_1_V_blk_n = p_dst_data_stream_1_V_full_n.read();
    } else {
        p_dst_data_stream_1_V_blk_n = ap_const_logic_1;
    }
}

void CvtColor::thread_p_dst_data_stream_1_V_din() {
    p_dst_data_stream_1_V_din = p_src_data_stream_V_dout.read();
}

void CvtColor::thread_p_dst_data_stream_1_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        p_dst_data_stream_1_V_write = ap_const_logic_1;
    } else {
        p_dst_data_stream_1_V_write = ap_const_logic_0;
    }
}

void CvtColor::thread_p_dst_data_stream_2_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1))) {
        p_dst_data_stream_2_V_blk_n = p_dst_data_stream_2_V_full_n.read();
    } else {
        p_dst_data_stream_2_V_blk_n = ap_const_logic_1;
    }
}

void CvtColor::thread_p_dst_data_stream_2_V_din() {
    p_dst_data_stream_2_V_din = p_src_data_stream_V_dout.read();
}

void CvtColor::thread_p_dst_data_stream_2_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        p_dst_data_stream_2_V_write = ap_const_logic_1;
    } else {
        p_dst_data_stream_2_V_write = ap_const_logic_0;
    }
}

void CvtColor::thread_p_src_cols_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        p_src_cols_V_blk_n = p_src_cols_V_empty_n.read();
    } else {
        p_src_cols_V_blk_n = ap_const_logic_1;
    }
}

void CvtColor::thread_p_src_cols_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, p_src_cols_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_src_rows_V_empty_n.read())))) {
        p_src_cols_V_read = ap_const_logic_1;
    } else {
        p_src_cols_V_read = ap_const_logic_0;
    }
}

void CvtColor::thread_p_src_data_stream_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1))) {
        p_src_data_stream_V_blk_n = p_src_data_stream_V_empty_n.read();
    } else {
        p_src_data_stream_V_blk_n = ap_const_logic_1;
    }
}

void CvtColor::thread_p_src_data_stream_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln1968_reg_247.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        p_src_data_stream_V_read = ap_const_logic_1;
    } else {
        p_src_data_stream_V_read = ap_const_logic_0;
    }
}

void CvtColor::thread_p_src_rows_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        p_src_rows_V_blk_n = p_src_rows_V_empty_n.read();
    } else {
        p_src_rows_V_blk_n = ap_const_logic_1;
    }
}

void CvtColor::thread_p_src_rows_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, p_src_cols_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_src_rows_V_empty_n.read())))) {
        p_src_rows_V_read = ap_const_logic_1;
    } else {
        p_src_rows_V_read = ap_const_logic_0;
    }
}

void CvtColor::thread_real_start() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, start_full_n.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()))) {
        real_start = ap_const_logic_0;
    } else {
        real_start = ap_start.read();
    }
}

void CvtColor::thread_start_out() {
    start_out = real_start.read();
}

void CvtColor::thread_start_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, real_start.read()))) {
        start_write = ap_const_logic_1;
    } else {
        start_write = ap_const_logic_0;
    }
}

void CvtColor::thread_zext_ln1967_fu_198_p1() {
    zext_ln1967_fu_198_p1 = esl_zext<12,11>(i_0_i_reg_176.read());
}

void CvtColor::thread_zext_ln1968_fu_213_p1() {
    zext_ln1968_fu_213_p1 = esl_zext<12,11>(j_0_i_reg_187.read());
}

void CvtColor::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, p_src_cols_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_src_rows_V_empty_n.read())))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln1967_fu_202_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln1968_fu_217_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln1968_fu_217_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

}

