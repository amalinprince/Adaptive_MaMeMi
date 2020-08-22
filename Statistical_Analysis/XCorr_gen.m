% Copyright (C) Rakshit Mittal, Amalin Prince, Birla Institute of Tehnology
% & Science, Goa, India.
% amalinprince@gmail.com
%
% This work is used in the publication of "Low-Power Hardware Accelerator
% for Detrending Measured Biopotential Data", IEEE Transactions on
% Instrumentation & Measurement, 2020.
% available on : https://ieeexplore.ieee.org/document/9171901
%
% Cite this as: 
% R. Mittal, A. A. Prince, S. Nalband, F. Robert and A. R. J. Fredo, 
% "Low-Power Hardware Accelerator for Detrending Measured Biopotential Data," 
% in IEEE Transactions on Instrumentation and Measurement, 
% doi: 10.1109/TIM.2020.3018235.
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
% This program generates the cross correlation for the datasets used in the
% paper.
%--------------------------------------------------------------------------
datatype_array = ['ECG' 'EEG' 'EOG' 'EMG'];
for type = 1:4
data_type = datatype_array((3*type)-2:(3*type));
disp(data_type)

armout = matfile(strcat('D:\Rakshit\Database\',data_type,'\swoutput.mat'));
matlout = matfile(strcat('D:\Rakshit\Database\',data_type,'\simulatedoutputzeroinit.mat'));
archout = armout.val;
for column = 1:10
    x = archout(1:4096,column);
    y = matlout.val(1:4096,column);
    result = max(xcorr(x,y,'coeff'));
    disp(result);
end
end
    
