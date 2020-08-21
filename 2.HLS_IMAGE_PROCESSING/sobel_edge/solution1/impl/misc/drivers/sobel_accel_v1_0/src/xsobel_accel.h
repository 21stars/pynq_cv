// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSOBEL_ACCEL_H
#define XSOBEL_ACCEL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xsobel_accel_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XSobel_accel_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XSobel_accel;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSobel_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSobel_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSobel_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSobel_accel_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XSobel_accel_Initialize(XSobel_accel *InstancePtr, u16 DeviceId);
XSobel_accel_Config* XSobel_accel_LookupConfig(u16 DeviceId);
int XSobel_accel_CfgInitialize(XSobel_accel *InstancePtr, XSobel_accel_Config *ConfigPtr);
#else
int XSobel_accel_Initialize(XSobel_accel *InstancePtr, const char* InstanceName);
int XSobel_accel_Release(XSobel_accel *InstancePtr);
#endif

void XSobel_accel_Start(XSobel_accel *InstancePtr);
u32 XSobel_accel_IsDone(XSobel_accel *InstancePtr);
u32 XSobel_accel_IsIdle(XSobel_accel *InstancePtr);
u32 XSobel_accel_IsReady(XSobel_accel *InstancePtr);
void XSobel_accel_EnableAutoRestart(XSobel_accel *InstancePtr);
void XSobel_accel_DisableAutoRestart(XSobel_accel *InstancePtr);


void XSobel_accel_InterruptGlobalEnable(XSobel_accel *InstancePtr);
void XSobel_accel_InterruptGlobalDisable(XSobel_accel *InstancePtr);
void XSobel_accel_InterruptEnable(XSobel_accel *InstancePtr, u32 Mask);
void XSobel_accel_InterruptDisable(XSobel_accel *InstancePtr, u32 Mask);
void XSobel_accel_InterruptClear(XSobel_accel *InstancePtr, u32 Mask);
u32 XSobel_accel_InterruptGetEnabled(XSobel_accel *InstancePtr);
u32 XSobel_accel_InterruptGetStatus(XSobel_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
