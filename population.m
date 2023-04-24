clc;                      % clear the output below before running
format long;              % print out in long format
format compact;           % suppress line feeds

                     %%%%%%%%% population data, for reference 
%%% 1960 -- 179323, 
%%% 1970 -- 203302, 
%%% 1980 -- 226542, 
%%% 1990 -- 249633, 
%%% 2000 -- 281422, 
%%% 2010 -- 308746


                     %%%%%%%%% define each Lagrange basis function 

x_2020 = 60;  % point of evaluation for each basis function 

%%%%  L0 
L0_string = ' ((x-10)*(x-20)*(x-30)*(x-40)*(x-50))/((0-10)*(0-20)*(0-30)*(0-40)*(0-50))' ; 
eval(['x = x_2020;',L0_string,';']);     % evaluate L0 function at x = 60, i.e. the year 2020 
val_0 = 179323 * ans;                     % store L0 * f(x_0) in val_0 

%       now define L1, ..., L5 and val_1, ..., val_5 similarly below 
L1_string = ' ((x-0)*(x-20)*(x-30)*(x-40)*(x-50))/((10-0)*(10-20)*(10-30)*(10-40)*(10-50))' ; 
eval(['x = x_2020;',L1_string,';']);     % evaluate L1 function at x = 60, i.e. the year 2020 
val_1 = 203302 * ans;                     % store L1 * f(x_1) in val_1

L2_string = ' ((x-0)*(x-10)*(x-30)*(x-40)*(x-50))/((20-0)*(20-10)*(20-30)*(20-40)*(20-50))' ; 
eval(['x = x_2020;',L2_string,';']);     % evaluate L2 function at x = 60, i.e. the year 2020 
val_2 = 226542 * ans;                     % store L2 * f(x_2) in val_2 

L3_string = ' ((x-0)*(x-10)*(x-20)*(x-40)*(x-50))/((30-0)*(30-10)*(30-20)*(30-40)*(30-50))' ; 
eval(['x = x_2020;',L3_string,';']);     % evaluate L3 function at x = 60, i.e. the year 2020 
val_3 = 249633 * ans;                     % store L3 * f(x_3) in val_3 

L4_string = ' ((x-0)*(x-10)*(x-20)*(x-30)*(x-50))/((40-0)*(40-10)*(40-20)*(40-30)*(40-50))' ; 
eval(['x = x_2020;',L4_string,';']);     % evaluate L4 function at x = 60, i.e. the year 2020 
val_4 = 281422 * ans;        

L5_string = ' ((x-0)*(x-10)*(x-20)*(x-30)*(x-40))/((50-0)*(50-10)*(50-20)*(50-30)*(50-40))' ; 
eval(['x = x_2020;',L5_string,';']);     % evaluate L0 function at x = 60, i.e. the year 2020 
val_5 = 308746 * ans;        

                     %%%%%%%%% compute final answer as superposition of all values computed above
P_2020 = val_0 + val_1 + val_2 + val_3 + val_4 + val_5; 



                     %%%%%%%%% output answer to console
disp(sprintf(['Predicted population in 2020 is   : %-15.16f '],P_2020))

