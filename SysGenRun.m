% Copyright (C) Rakshit Mittal, Amalin Prince, Birla Institute of Tehnology
% & Science, Goa, India.
% amalinprince@gmail.com
%
% This work is used in the publication of "Low-Power Hardware Accelerator
% for Detrending Measured Biopotential Data" in IEEE Transactions on
% Instrumentation & Measurement
% available on : <website>
%
% Cite this as: 
% Mittal,Rakshit, et al. "Low-Power Hardware Accelerator for Detrending
% Measured Biopotential Data." IEEE Transactions on Instrumentation and
% Measurement
% Licensed under the Apache License, Version 2.0 (the "License");
% you may not use this file except in compliance with the License.
% You may obtain a copy of the License at
%
%     http://www.apache.org/licenses/LICENSE-2.0
%
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an "AS IS" BASIS,
% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
% See the License for the specific language governing permissions and
% limitations under the License.

%--------------------------------------------------------------------------
% This program simulates the system generator file titled 'Filter_Basic'
% The input data for the hardware simulation comes from the folder Database
% The output is stored in the matfile 'hwout.mat' and the 2-clock cycle 
% delay is accounted for. PLEASE NOTE that you need to execute this code
% in Xilinx System Generator and not MATLAB.
%--------------------------------------------------------------------------

%Code Begins
data_type='EMG';
disp(data_type)
fnameid=fopen(strcat('D:\Rakshit\Database\',data_type,'\filenames.txt'));
for column = 1:10
    filen = fgetl(fnameid);
    if ~ischar(filen) , break, end
    disp(filen)

    filename = strcat('D:\Rakshit\Database\',data_type,'\',filen,'.mat');
    m = matfile(filename);
    datafull = m.val;
    data = datafull(1,1:4096);
    
    txtfileID = fopen('D:\Rakshit\MaMeMi_Filter\SystemGenerator\sramdata.txt','wt');
    fprintf(txtfileID,'%i\n',data);
    fclose(txtfileID);

    a = sim('Filter_Basic','SimulationMode','normal');
    b = a.get('simout');
    assignin('caller','result',b);
    
    outfile = matfile(strcat('D:\Rakshit\Database\',data_type,'\hwout.mat'),'Writable',true);
    for index = 3:4098 %index begins from 3 to account for the delay of 2 clock cycles.
        outfile.val(index-2,column) = double(result(index,1))*(2^15);
    end
    
end
fclose(fnameid);
