%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% The main objective of this script is to define a Pole Assignment
% controller to the TCLab. The adaptive controller is a discrete PI
% controller defined by:
%
%   u(k) = u(k-1) + p0 * e(k) + p1 * e(k-1)
%
% where p0 and p1 must be computed assigning to the closed loop system
% a pole twice faster,at least, than the open loop temperature system,
% avoiding inputs greater than 40%.
%
% Name:
% Date:
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all
clear all

%% Load TCLab file
tclabULL;

%% Definitions of the variables to be used by the controller
% Initialization of arrays (empty)
temperature = []; 
heat = [];
time = [];

% Computed PI parameters
p0 = ;
p1 = ;


% Fixed variables
time_end = ;
Ts = 2; % Sampling time in s

nk = time_end/Ts;


%% Definition of the loop for the iterations
figure()

for k = 1:nk
    t_ini = tic();
    
    % Read the value of the output. Update 'temperature' array


    % Set the value of the input using the PI controller. Update 'heat' array


    % Update 'time' array by adding current value of 't


    % Plot the results
    subplot(2,1,1)
    stairs( , );
    xlabel('Time [s]');
    ylabel('Temperature [ºC]')
    grid on

    subplot(2,1,2)
    stairs( , );
    xlabel('Time [s]');
    ylabel('Input [%]')
    grid on

    
    elapsed_time = toc(t_ini);
    pause(Ts - elapsed_time); % Sleep for T s


end

%% Turn-off the input of the system
h1(0);


%% Save the response of the system in StepRespone.mat
save PoleAssignment temperature heat time p0 p1