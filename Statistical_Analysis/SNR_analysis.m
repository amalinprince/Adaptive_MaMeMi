% Copyright (C) Rakshit Mittal, Amalin Prince, Birla Institute of Tehnology
% & Science, Goa, India.
% amalinprince@goa.bits-pilani.ac.in
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
% This program generates the SNR for the datasets used in this paper.
%--------------------------------------------------------------------------
factor = 1;

datain = matfile('D:\Rakshit\Database\ECG-SNR\232m.mat');
rawdata = datain.val;
noise = matfile('D:\Rakshit\Database\ECG-SNR\bwm.mat');
ndata = noise.val;
noisedata = ndata(1,1:4096);

Hd = designfilt('highpassfir','FilterOrder',40,'CutoffFrequency',2,'SampleRate',360);

filterdata = filter(Hd,rawdata);

noisepower = rms(noisedata.*factor);
inputpower = rms(filterdata);
inputsnr = inputpower/noisepower;
disp(inputsnr);

len = length(rawdata);

%Row 1 of calcstrip represents max*, Row 2 represents min*
amp = zeros(1,len,'like',filterdata);
calcstrip = zeros(2,len,'like',filterdata);
result = zeros(1,len,'like',filterdata);
lpf = zeros(1,len,'like',filterdata);

for index = 1:len
        %Recursive change in signal max amplitude
        if index > 1
            if (abs(filterdata(index)) > amp(1,(index - 1)))
            amp(1,index) = abs(filterdata(index));
            else
            amp(1,index) = amp(1, (index - 1));
            end
        end
        delta = amp(1,index)/1024;
        sigmadelta = delta/4;
        
        %Recursive change in max*
        if index == 1
            calcstrip(1,index) = filterdata(1,index);
        elseif filterdata(1,index) > calcstrip(1,(index - 1))
            calcstrip(1,index) = calcstrip(1,(index-1)) + sigmadelta;
        else
            calcstrip(1,index) = calcstrip(1,(index-1)) - delta;
        end
        
        %Recursive change in min*
        if index == 1
            calcstrip(2,index) = filterdata(1,index);
        elseif filterdata(1,index) < calcstrip(2,(index - 1))
            calcstrip(2,index) = calcstrip(2,(index-1)) - sigmadelta;
        else
            calcstrip(2,index) = calcstrip(2,(index-1)) + delta;
        end
        
        %Continuous updation of Low-Pass filter values
        lpf(index) = (calcstrip(1,index) + calcstrip(2,index))/2;
        %Continuous output generation
        result(index) = filterdata(index) - lpf(index);
end 

noiseout = result - filterdata;

outnoisepower = rms(noiseout);
outputsnr = inputpower/outnoisepower;
disp(outputsnr);



    