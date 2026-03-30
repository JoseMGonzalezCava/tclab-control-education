%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% The main objective of this script is to apply a step input to the TCLab
% in order to identify the dynamics  of the temperature system.
% You must apply an input of amplitude 10 after 20s, and then wait during
% 600s to see the dynamic response of the system.
%
% Name:
% Date:
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all
clear all

%% Load TCLab file
tclabULL;

%% Definitions of the variables to be used in the identification
% Initialization of arrays (empty)
temperature = []; 
heat = [];
time = [];


% Fixed variables
time_end = ;
Ts = 2; % Sampling time in s


%% Definition of the loop for the iterations
figure(100)

for t = 0:Ts:time_end
    t_ini = tic();
    
    % Read the value of the output. Update 'temperature' array


    % Set the value of the input. Update 'heat' array


    % Update 'time' array by adding current value of 't'



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

    elapsed_time = toc(t_ini)
    pause(Ts - elapsed_time); % Sleep for T s


end

%% Turn-off the input of the system
h1(0);


%% Save the response of the system in StepRespone.mat
save StepResponse temperature heat time
