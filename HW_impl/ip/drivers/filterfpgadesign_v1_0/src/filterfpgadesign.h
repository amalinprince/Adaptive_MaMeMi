#ifndef FILTERFPGADESIGN__H
#define FILTERFPGADESIGN__H
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
#include "filterfpgadesign_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 filterfpgadesign_BaseAddress;
} filterfpgadesign_Config;
#endif
/**
* The filterfpgadesign driver instance data. The user is required to
* allocate a variable of this type for every filterfpgadesign device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 filterfpgadesign_BaseAddress;
    u32 IsReady;
} filterfpgadesign;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define filterfpgadesign_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define filterfpgadesign_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define filterfpgadesign_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define filterfpgadesign_ReadReg(BaseAddress, RegOffset) \
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
int filterfpgadesign_Initialize(filterfpgadesign *InstancePtr, u16 DeviceId);
filterfpgadesign_Config* filterfpgadesign_LookupConfig(u16 DeviceId);
int filterfpgadesign_CfgInitialize(filterfpgadesign *InstancePtr, filterfpgadesign_Config *ConfigPtr);
#else
int filterfpgadesign_Initialize(filterfpgadesign *InstancePtr, const char* InstanceName);
int filterfpgadesign_Release(filterfpgadesign *InstancePtr);
#endif
/**
* Read from gateway_out gateway of filterfpgadesign. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int filterfpgadesign_gateway_out_read(filterfpgadesign *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif
