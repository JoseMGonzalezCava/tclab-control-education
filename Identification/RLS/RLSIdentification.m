%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% The main objective of this script is to apply the Recursive Least
% Square (RLS) algorithm to indentify the dynamics of the temperature 
% system. 
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

% Covariance matrix
Pk1(1) = ;
Pk2(1) = ;
P = diag([Pk1(1) Pk2(1)]); 

% Initial estimation of the RLS identification
th(:,1) = ;

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


    % RLS identification
    fik = ;
    
    Kk = ;
    th(:,k+1) = ;

    P = ;

    Pk1(k+1) = P(1,1);
    Pk2(k+1) = P(2,2);


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
    title('Recursive Least Square (RLS)')
    xlabel('Time [s]')
    ylabel('Parameter estimation')
    grid on
    legend('a1','b1')

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
save RLS temperature heat time th Pk1 Pk2