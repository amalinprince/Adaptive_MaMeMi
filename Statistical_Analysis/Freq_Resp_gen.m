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
% This program generates the frequency response for different valus of
% delta and sigma which changes according to iterations over the variables 
% xfactor and yfactor.
%--------------------------------------------------------------------------

hold on;
%Define Variables
inputamp = 1;
freqgap = 0.1;
maxfreq = 100; 
ts=1e-4; %sampling interval
t = 0:ts:100; %length of the signal
len = length(t);
freqscale = freqgap:freqgap:maxfreq;
out = matfile('D:\Rakshit\freqresp.mat','Writable',true);

%Code Begins
delta = 0;
sigmadelta = 0;
freqlen = length(freqscale);
freqresp = zeros(1,freqlen);
column = 1;

for xfactor = 10:10
    for yfactor = 2:2

for freqindex = 1:freqlen    
    freq = freqindex*freqgap;
    data = inputamp*sin(2*pi*freq*t);
    
    %Row 1 of calcstrip represent max*, Row 2 represents min*
    calcstrip = zeros(2,len);
    result = zeros(1,len);
    lpf = zeros(1,len);
    amp = zeros(1,len);

    for index = 1:len
            %Recursive change in signal max amplitude
            if index > 1
                if (abs(data(index)) > amp(1,(index - 1)))
                    amp(1,index) = abs(data(index));
                    delta = amp(1,index)/(2^(xfactor));
                    sigmadelta = delta/(2^(yfactor));
                else
                    amp(1,index) = amp(1, (index - 1));
                end
            end

            %Recursive change in max*
            if index == 1
                calcstrip(1,index) = data(1,index);
            elseif data(1,index) > calcstrip(1,(index - 1))
                calcstrip(1,index) = calcstrip(1,(index-1)) + sigmadelta;
            else
                calcstrip(1,index) = calcstrip(1,(index-1)) - delta;
            end

            %Recursive change in min*
            if index == 1
                calcstrip(2,index) = data(1,index);
            elseif data(1,index) < calcstrip(2,(index - 1))
                calcstrip(2,index) = calcstrip(2,(index-1)) - sigmadelta;
            else
                calcstrip(2,index) = calcstrip(2,(index-1)) + delta;
            end

            %Continuous updation of Low-Pass filter values
            lpf(index) = (calcstrip(1,index) + calcstrip(2,index))/2;
            %Continuous output generation
            result(index) = data(index) - lpf(index);
    end      
            %Continuous Updation of Freq Resp values
            freqresp(freqindex) = (max(result(9*(10)^5:(10)^6+1)))/inputamp;
            freqrespdb = mag2db(abs(freqresp))*0.5;
            
end
            plot(freqrespdb);
    end
end          
