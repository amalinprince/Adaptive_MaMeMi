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
% This program simulates the AMaMeMi filter to process data in a single 
% file. The user can load the value from a matfile or from a variable
% directly in the workspace. This program only returns the final result, 
% in a 'result' variable. If you wish to track the intermediate variables, 
% please refer to the program titled 'AMaMeMi_expanded.m'
%--------------------------------------------------------------------------

    mode = 1; %mode=0 -> user-defined | mode=1 -> adaptive
%   filename = strcat('D:\Rakshit\SC4011E0-PSG_edfm.mat'); %Find and Replace All the new filename.
%   delta = 2;
%   sigmadelta = 4;
    amp = 0;
    maxt = 0;
    mint = 0;
    %Code Begins
%    m = val;
    rawdata = val;
    %Removing unnecessary signals
    data = rawdata(1,1:4096);
    result = zeros(1,length(data),'like',data);

    for index = 1:4096
            %Recursive change in signal max amplitude
            if (abs(data(index)) > amp)
                amp = abs(data(index));
                if (mode == 1)
                delta = amp/1024;
                sigmadelta = delta/4;
                end
            end

            %Recursive change in max*
            if index == 1
                maxt = data(1,index);
            elseif data(1,index) > maxt
                maxt = maxt + sigmadelta;
            else
                maxt = maxt - delta;
            end

            %Recursive change in min*
            if index == 1
                mint = data(1,index);
            elseif data(1,index) < mint
                mint = mint - sigmadelta;
            else
                mint = mint + delta;
            end

            %Continuous output generation
            result(index) = data(index) - ((maxt + mint)/2);
    end