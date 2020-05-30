set moduleName AddWeighted
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {AddWeighted}
set C_modelType { void 0 }
set C_modelArgList {
	{ src1_data_stream_V int 8 regular {fifo 0 volatile }  }
	{ src2_data_stream_V int 8 regular {fifo 0 volatile }  }
	{ dst_rows_V int 12 regular {fifo 0}  }
	{ dst_cols_V int 12 regular {fifo 0}  }
	{ dst_data_stream_V int 8 regular {fifo 1 volatile }  }
	{ dst_rows_V_out int 12 regular {fifo 1}  }
	{ dst_cols_V_out int 12 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src1_data_stream_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src2_data_stream_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dst_rows_V", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "dst_cols_V", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "dst_data_stream_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_rows_V_out", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_cols_V_out", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ src1_data_stream_V_dout sc_in sc_lv 8 signal 0 } 
	{ src1_data_stream_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ src1_data_stream_V_read sc_out sc_logic 1 signal 0 } 
	{ src2_data_stream_V_dout sc_in sc_lv 8 signal 1 } 
	{ src2_data_stream_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ src2_data_stream_V_read sc_out sc_logic 1 signal 1 } 
	{ dst_rows_V_dout sc_in sc_lv 12 signal 2 } 
	{ dst_rows_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ dst_rows_V_read sc_out sc_logic 1 signal 2 } 
	{ dst_cols_V_dout sc_in sc_lv 12 signal 3 } 
	{ dst_cols_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ dst_cols_V_read sc_out sc_logic 1 signal 3 } 
	{ dst_data_stream_V_din sc_out sc_lv 8 signal 4 } 
	{ dst_data_stream_V_full_n sc_in sc_logic 1 signal 4 } 
	{ dst_data_stream_V_write sc_out sc_logic 1 signal 4 } 
	{ dst_rows_V_out_din sc_out sc_lv 12 signal 5 } 
	{ dst_rows_V_out_full_n sc_in sc_logic 1 signal 5 } 
	{ dst_rows_V_out_write sc_out sc_logic 1 signal 5 } 
	{ dst_cols_V_out_din sc_out sc_lv 12 signal 6 } 
	{ dst_cols_V_out_full_n sc_in sc_logic 1 signal 6 } 
	{ dst_cols_V_out_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "src1_data_stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src1_data_stream_V", "role": "dout" }} , 
 	{ "name": "src1_data_stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src1_data_stream_V", "role": "empty_n" }} , 
 	{ "name": "src1_data_stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src1_data_stream_V", "role": "read" }} , 
 	{ "name": "src2_data_stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src2_data_stream_V", "role": "dout" }} , 
 	{ "name": "src2_data_stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src2_data_stream_V", "role": "empty_n" }} , 
 	{ "name": "src2_data_stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src2_data_stream_V", "role": "read" }} , 
 	{ "name": "dst_rows_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_rows_V", "role": "dout" }} , 
 	{ "name": "dst_rows_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_rows_V", "role": "empty_n" }} , 
 	{ "name": "dst_rows_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_rows_V", "role": "read" }} , 
 	{ "name": "dst_cols_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_cols_V", "role": "dout" }} , 
 	{ "name": "dst_cols_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_cols_V", "role": "empty_n" }} , 
 	{ "name": "dst_cols_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_cols_V", "role": "read" }} , 
 	{ "name": "dst_data_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst_data_stream_V", "role": "din" }} , 
 	{ "name": "dst_data_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_data_stream_V", "role": "full_n" }} , 
 	{ "name": "dst_data_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_data_stream_V", "role": "write" }} , 
 	{ "name": "dst_rows_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_rows_V_out", "role": "din" }} , 
 	{ "name": "dst_rows_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_rows_V_out", "role": "full_n" }} , 
 	{ "name": "dst_rows_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_rows_V_out", "role": "write" }} , 
 	{ "name": "dst_cols_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst_cols_V_out", "role": "din" }} , 
 	{ "name": "dst_cols_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_cols_V_out", "role": "full_n" }} , 
 	{ "name": "dst_cols_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_cols_V_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "AddWeighted",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "2099521",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "src1_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src1_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src2_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src2_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_rows_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dst_rows_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_cols_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dst_cols_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_rows_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dst_rows_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_cols_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dst_cols_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_accel_dadd_sc4_U91", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_accel_dadd_sc4_U92", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_accel_dmul_tde_U93", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_accel_dmul_tde_U94", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_accel_uitodudo_U95", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_accel_uitodudo_U96", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	AddWeighted {
		src1_data_stream_V {Type I LastRead 3 FirstWrite -1}
		src2_data_stream_V {Type I LastRead 3 FirstWrite -1}
		dst_rows_V {Type I LastRead 0 FirstWrite -1}
		dst_cols_V {Type I LastRead 0 FirstWrite -1}
		dst_data_stream_V {Type O LastRead -1 FirstWrite 24}
		dst_rows_V_out {Type O LastRead -1 FirstWrite 0}
		dst_cols_V_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "2099521"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "2099521"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	src1_data_stream_V { ap_fifo {  { src1_data_stream_V_dout fifo_data 0 8 }  { src1_data_stream_V_empty_n fifo_status 0 1 }  { src1_data_stream_V_read fifo_update 1 1 } } }
	src2_data_stream_V { ap_fifo {  { src2_data_stream_V_dout fifo_data 0 8 }  { src2_data_stream_V_empty_n fifo_status 0 1 }  { src2_data_stream_V_read fifo_update 1 1 } } }
	dst_rows_V { ap_fifo {  { dst_rows_V_dout fifo_data 0 12 }  { dst_rows_V_empty_n fifo_status 0 1 }  { dst_rows_V_read fifo_update 1 1 } } }
	dst_cols_V { ap_fifo {  { dst_cols_V_dout fifo_data 0 12 }  { dst_cols_V_empty_n fifo_status 0 1 }  { dst_cols_V_read fifo_update 1 1 } } }
	dst_data_stream_V { ap_fifo {  { dst_data_stream_V_din fifo_data 1 8 }  { dst_data_stream_V_full_n fifo_status 0 1 }  { dst_data_stream_V_write fifo_update 1 1 } } }
	dst_rows_V_out { ap_fifo {  { dst_rows_V_out_din fifo_data 1 12 }  { dst_rows_V_out_full_n fifo_status 0 1 }  { dst_rows_V_out_write fifo_update 1 1 } } }
	dst_cols_V_out { ap_fifo {  { dst_cols_V_out_din fifo_data 1 12 }  { dst_cols_V_out_full_n fifo_status 0 1 }  { dst_cols_V_out_write fifo_update 1 1 } } }
}
