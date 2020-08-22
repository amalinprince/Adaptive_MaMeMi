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
% This program simulates the AMaMeMi filter to process data in a single 
% file. The user can load the value from a matfile or from a variable
% directly in the workspace.
%--------------------------------------------------------------------------

    mode = 1; %mode=0 -> user-defined | mode=1 -> adaptive
    filename = strcat('D:\Rakshit\SC4011E0-PSG_edfm.mat'); %Find and Replace All the new filename.
    
    %Please assign specif values to delta and sigmadelta if mode = 0
    delta = 0;
    sigmadelta = 0;
    
    result = zeros(1,length(data));
    amp = zeros(1,length(data));
    maxt = zeros(1,length(data));
    mint = zeros(1,length(data));
    lpf = zeros(1,length(data));

    %Actual computation
    for index = 1:length(data)
        %Recursive change in signal max amplitude
        if index == 1
            amp(1,index)=abs(data(index));
        end

        if index > 1
            if (abs(data(index)) > amp(1,(index - 1)))
                amp(1,index) = abs(data(index));
            else
                amp(1,index) = amp(1, (index - 1));
            end
        end
        %Recusive change in sigma and sigmadelta
        if(mode == 1)
            delta = (amp(1,index))/1024;
            sigmadelta = delta/4;
        end 
        %Recursive change in max*
        if index == 1
            maxt(1,index) = 0;
        elseif data(1,index) > maxt(1,(index - 1))
            maxt(1,index) = maxt(1,(index-1)) + sigmadelta;
        else
            maxt(1,index) = maxt(1,(index-1)) - delta;
        end

        %Recursive change in min*
        if index == 1
            mint(1,index) = 0;
        elseif data(1,index) < mint(1,(index - 1))
            mint(1,index) = mint(1,(index-1)) - sigmadelta;
        else
            mint(1,index) = mint(1,(index-1)) + delta;
        end

        %Continuous updation of Low-Pass filter values
        lpf(index) = (maxt(1,index) + mint(1,index))/2;
        %Continuous output generation
        result(index) = data(index) - lpf(index);
    end

