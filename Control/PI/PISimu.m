%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% The main objective of this script is to tune a PI controller and simulate
% the response of the system.
%
% Name:
% Date:
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all

%% Initial temperature
Tamb = ; % Definition of the initial temperature

%% Setpoint
setpoint = ;

%% Controller parameters
% Note: consider standard PI and forward discretization
Kp = ;
Ti = ;
Ts = ; % Sampling Time

%% Implementation of the "for" loop to evaluate the temporal response of the system
% Initialization of the variables involved (empty array)
y = []; % Output of the model
yreal = []; % Output considering the initial temperature Tamb
e = []; % Error
u = []; % Output of the controller

time_end = ; % 
time = ; % Time vector

for k = 0:1:floor(time_end/Ts)

    % First, evaluate the output of the system at instant k.
    % Remark: consider the effects of the delay at initial samples!
    
    

    % Compute the real output considering the initial temperature, Tamb
    


    % Evaluate the error at instant k

    

    % Evaluate the control action to be applied at instant k
    


end

%% Plot the response of the system, the error evolution and the control action


