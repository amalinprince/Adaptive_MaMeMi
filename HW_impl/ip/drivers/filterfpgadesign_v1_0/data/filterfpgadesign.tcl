proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "filterfpgadesign" "NUM_INSTANCES" "DEVICE_ID" "C_FILTERFPGADESIGN_S_AXI_BASEADDR" "C_FILTERFPGADESIGN_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "filterfpgadesign_g.c" "filterfpgadesign" "DEVICE_ID" "C_FILTERFPGADESIGN_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "filterfpgadesign" "DEVICE_ID" "C_FILTERFPGADESIGN_S_AXI_BASEADDR" "C_FILTERFPGADESIGN_S_AXI_HIGHADDR" 

}