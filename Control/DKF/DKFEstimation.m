%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% The main objective of this script is to use a Discrete Kalman Filter
% in order to estimate the temperature of the system avoiding the noise
% affecting the temperature system. 
%
% Name:
% Date:
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all
clear all

%% Load TCLab file
tclabULL;

%% Definitions of the variables to be used in the estimation
% Initialization of arrays (empty)
temperature = []; 
heat = [];
time = [];

% Noise parameters of the DKF.
R = ;
Q = ;

% Initial conditions of the DKF.
Tk(1) = ;
Pk(1) = ;

% Fixed variables
time_end = ;
Ts = 2; % Sampling time in s

nk = time_end/Ts;


%% Definition of the loop for the iterations
figure()

for k = 1:nk
    t_ini = tic();
    
    % Read the value of the output. Update 'temperature' array


    % Set the value of the input. Update 'heat' array


    % Update 'time' array by adding current value of 't'


    % DKF estimation
    Tkm(k+1) = ;
    Pk(k+1) = ;
    
    Kk = ;
    Tk(k+1) = ;
    Pk(k+1) = ;


    % Plot the results
    subplot(2,2,1)
    stairs( , );
    xlabel('Time [s]');
    ylabel('Temperature [ºC]')
    grid on

    subplot(2,2,3)
    stairs( , );
    xlabel('Time [s]');
    ylabel('Input [%]')
    grid on

    subplot(2,2,2)
    stairs( , );
    title('DKF estimation')
    xlabel('Time [s]')
    ylabel('Temperature [ºC]')
    grid on
    legend('Measured Temp','Estimated Temp')

    subplot(2,2,4)
    stairs( , );
    xlabel('Time [s]')
    ylabel('Covariance error')
    grid on
    legend('P1','P2')


    elapsed_time = toc(t_ini);
    pause(Ts - elapsed_time); % Sleep for T s


end

%% Turn-off the input of the system
h1(0);


%% Save the response of the system in StepRespone.mat
save DKF temperature heat time Tk Pk