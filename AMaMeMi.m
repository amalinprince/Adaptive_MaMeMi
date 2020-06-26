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
% This program simulates the AMaMeMi filter to process data in all the
% matfiles in the specified input directory. This program only returns the
% final result, in a 'result' folder within the input directory. If you 
% wish to track the intermediate variables, please refer to the program  
% titled 'AMaMeMi_expanded.m'
%--------------------------------------------------------------------------

input_directory = 'E:\Documents\R&D\INSTRF266 SoP\Work\Final_github';
mode = 1; %mode=0 -> user-defined | mode=1 -> adaptive
%Specify the following if mode = 0;
delta = 2;
sigmadelta = 4;

rootdir = pwd;
cd input_directory;
mkdir result;
list = deblank(string(ls('*.mat')));

for filenumber = 1:length(list)
    filename = list(filenumber);
    amp = 0;
    maxt = 0;
    mint = 0;
    %Preparing data
    m = matfile(filename);
    rawdata = m.val;
        %Removing unnecessary signals
    data = rawdata(1,:);
    result = zeros(1,:,'like',data);
    %AMaMeMi code begins
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
        if data(1,index) > maxt
            maxt = maxt + sigmadelta;
        else
            maxt = maxt - delta;
        end
        
        %Recursive change in min*
        if data(1,index) < mint
            mint = mint - sigmadelta;
        else
            mint = mint + delta;
        end
        
        %Continuous output generation
        result(index) = data(index) - ((maxt + mint)/2);
    end
    save(strcat(input_directory,'\result\',filename),result);
end
cd rootdir;
