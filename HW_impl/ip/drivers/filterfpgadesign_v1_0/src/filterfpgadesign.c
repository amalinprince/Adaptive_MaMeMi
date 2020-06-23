#include "filterfpgadesign.h"
#ifndef __linux__
int filterfpgadesign_CfgInitialize(filterfpgadesign *InstancePtr, filterfpgadesign_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->filterfpgadesign_BaseAddress = ConfigPtr->filterfpgadesign_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
int filterfpgadesign_gateway_out_read(filterfpgadesign *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = filterfpgadesign_ReadReg(InstancePtr->filterfpgadesign_BaseAddress, 0);
    return Data;
}
