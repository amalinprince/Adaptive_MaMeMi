/**
* @file filterfpgadesign_sinit.c
*
* The implementation of the filterfpgadesign driver's static initialzation
* functionality.
*
* @note
*
* None
*
*/
#ifndef __linux__
#include "xstatus.h"
#include "xparameters.h"
#include "filterfpgadesign.h"
extern filterfpgadesign_Config filterfpgadesign_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type filterfpgadesign_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
filterfpgadesign_Config *filterfpgadesign_LookupConfig(u16 DeviceId) {
    filterfpgadesign_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_FILTERFPGADESIGN_NUM_INSTANCES; Index++) {
        if (filterfpgadesign_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &filterfpgadesign_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int filterfpgadesign_Initialize(filterfpgadesign *InstancePtr, u16 DeviceId) {
    filterfpgadesign_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = filterfpgadesign_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return filterfpgadesign_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif
