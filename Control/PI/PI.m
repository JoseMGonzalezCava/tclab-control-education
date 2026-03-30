%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% The main objective of this script is to control the temperature in TCLab
% based on the PI controller tuned in simulation
%
% Name:
% Date:
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all
clear all


%% Load TCLab file
tclabULL;


%% Setpoint [ºC]
setpoint = ;

%% Controller parameters
% Note: consider parallel PI and forward discretization
Kp = ;
Ti = ;
Ts = ;

%% Implementation of the "for" loop to evaluate the temporal response of the system
% Initialization of the variables involved (empty array)
e = []; % Control error [ºC]
u = []; % Control action (Dutty Cycle, DC) [%]
y = []; % Temperature [ºC]
time = []; % Time array
time_end = 600; % Can be updated

for k = 0:1:floor(time_end/Ts)
    t_ini = tic();

    % Read the temperature from TCLab. Update 'y' array.


    % Compute the current control error. Update 'e' array


    % Compute the control action as the output of your controller. Update 'u' array 


    % Update 'time' array by considering the current instant, k
    

    % Plot the response of the system


    elapsed_time = toc(t_ini)
    pause(Ts - elapsed_time); % Sleep for T s

end

%% Turn-off the heater
h1(0);

%% Save the closed-loop response of your system
save PI e u y time