// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xsobel_accel.h"

extern XSobel_accel_Config XSobel_accel_ConfigTable[];

XSobel_accel_Config *XSobel_accel_LookupConfig(u16 DeviceId) {
	XSobel_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSOBEL_ACCEL_NUM_INSTANCES; Index++) {
		if (XSobel_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSobel_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSobel_accel_Initialize(XSobel_accel *InstancePtr, u16 DeviceId) {
	XSobel_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSobel_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSobel_accel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

