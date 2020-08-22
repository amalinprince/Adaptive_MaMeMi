# Adaptive_MaMeMi (AMaMeMi) Filter
### This repository contains the MATLAB code and XILINX VIVADO files used in the design of the work described in the publication, "Low-Power Hardware Accelerator for Detrending Measured Biopotential Data".

Copyright (C) Rakshit Mittal, Amalin Prince, Birla Institute of Tehnology & Science-Pilani, Goa, India.
correspondence: amalinprince@gmail.com

This work is used in the publication of "Low-Power Hardware Accelerator for Detrending Measured 
Biopotential Data", IEEE Transactions on Instrumentation & Measurement, 2020.
available on : https://ieeexplore.ieee.org/document/9171901

Cite this as:
```
R. Mittal, A. A. Prince, S. Nalband, F. Robert and A. R. J. Fredo, "Low-Power Hardware Accelerator for Detrending Measured Biopotential Data," in IEEE Transactions on Instrumentation and Measurement, doi: 10.1109/TIM.2020.3018235.
```
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except 
in compliance with the License. You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License 
is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or 
implied. See the License for the specific language governing permissions and limitations under the 
License.

#### MATLAB is used for the theoretical simulation study, Xilinx Vivado 2016.4 system edition is used for the hardware-software implementation.

##### The code and infrastructure can be used by developers and researchers to test many other methods as well.

## Guide to files in the repository

1. **AMaMeMi.m** --> This program simulates the AMaMeMi filter to process data in all the matfiles in the specified input directory. This program only returns the final result, in a 'result' folder within the input directory. If you wish to track the intermediate variables, please refer to the program titled 'AMaMeMi_expanded.m'
2. **AMaMeMi_expanded.m** --> This program simulates the AMaMeMi filter to process data in a single file. The user can load the value from a matfile or from a variable directly in the workspace.
3. **Single_file_AMaMeMi.m** --> % This program simulates the AMaMeMi filter to process data in a single file. The user can load the value from a matfile or from a variable directly in the workspace. This program only returns the final result, in a 'result' variable. If you wish to track the intermediate variables, please refer to the program titled 'AMaMeMi_expanded.m'
4. **SysGenRun.m** --> This program simulates the system generator file titled 'Filter_Basic' The input data for the hardware simulation comes from the folder Database. The output is stored in the matfile 'hwout.mat' and the 2-clock cycle delay is accounted for. PLEASE NOTE that you need to execute this code in Xilinx System Generator and not MATLAB.
5. **HW_impl/** --> This folder contains the files associated with the hardware implementation architecture.
     1. **hwcosim/** --> This folder contains the file **filterfpgadesign.xpr** which is the Xilinx Vivado project file for the hardware implementation.
     2. **ip/** --> This folder contains the *Intellectual Property (IP)* design of the accelerator which can be imported into a Xilinx project using the IP Configuration Wizard
     3. **System_Generator/** --> This folder contains the Simulink files for the architecture to be accessed and simulated using Xilinx System Generator.
          1. **Filter_Basic.slx** --> The basic hardware accelerator architecture that was implemented in the FPGA.
          2. **FilterFPGADesign.slx** --> The architecture used for simulation and verification of the design.
6. **Statiscal_Analysis/**
     1. **Freq_resp_gen.m** --> This program generates the frequency response for different valus of delta and sigma which changes according to iterations over the variables xfactor and yfactor.
     2. **RMSE_gen.m** --> This program generates the RMSE for the datasets used in the paper.
     3. **SNR_analysis.m** --> This program generates the SNR for the datasets used in this paper.
     4. **XCorr_gen.m** --> This program generates the cross correlation for the datasets used in the paper.
