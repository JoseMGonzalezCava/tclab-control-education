%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% This template includes the steps you must follow to 
% obtain the step response of the plant with the aim of 
% a later identification.
% The output of the script is a data file that will be used
% to obtain the transfer function of the plant
% 
% The system wil first try to take the plant from the initial conditions
% to the operating point using a PI controller. Once in this point, the
% step input will be applied to capture the T1 response.
% You can use the same structure for obtaining both the T1 response to 
% a H1 step input and also to obtain the T1 response to a H2 input. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Close all open figures and clear all variables
clear all
close all

%% TCLab connection 
tclabULL;

%% PI controller parameters

Kp = ;  % Proportional gain
Ti = ; % Integral time

%% Define the operating point
T10 = 30;  % Desired temperature in °C

%% Loop definition for iterations
k_end = 600;    % Number of samples   
T_sam=1;        % Sample time
PI=1;           % PI will be active from the start
op_point=0;     % This variable will change to 1 when operating point is reached.
H2=0;           % Heater 2 is OFF.
DH1=5;          % Step input in heater1 (deviation variable)
DH2=10;         % Step input in heater2 (deviation variable) 

%% Apply PI control until operating point reached
while PI==1 
    tini_period = tic;
    % Read current temperature
    T1 = T1C();
    % Calculate PI output
    error = ;
    H1_pi= ;  
    % Limit control signal between 0 and 100 (actuator constraints)
    H1_pi = max(0, min(100, H1_pi)); 
    % Apply control signal (heat) to the system
    h1(H1_pi);
    % update op_point (check if the system is in stationary state and T1=T10) 
    op_point= ;
    if op_point==1     % Operating point reached
        PI==0;
        H10=H1_pi;      % Nominal input correponding to operating point.
    end
    % Wait until next sample time
    tlapsed_period = toc(tini_period);
    pause(T_muestreo - tlapsed_period);
end    

h2(H2);     % Heater 2 is OFF.

%% Open-loop to obtain the step response in T1
for k = 1:k_end
 
    tini_period = tic;

    % Read current temperature
    T1(k) = T1C();
    % H1 step input to be applied 
    H1(k) = H10 + DH1;  % Step input applied to heater 1 from operating point
                        % When obtaining the T1 reponse to H2, use Q1=Q10
                        % and Q2= DQ2.
    h1(H1(k)); 

    % Update plots 
    ...

    % Wait until next sample time
    tlapsed_period = toc(tini_period);
    pause(T_sam - tlapsed_period);
end
% Reset the input to the actuator
h1(0);
t=0:t_sam:(k_end-1)*t_sam:

% Store data 
save('ident_g1.mat', 't', 'T1','H1');

%% Computation of transfer function

% First step is to use deviation variables: 

T1d= ;
H1d= ;

% Stationary values
T1s= ;

% We will consider a First order system with time delay. 

% Computation of DC gain
kdc = ;

% Computation of Time constant and deviation and time delay
% First we have to define the values at 28% and 63% of the steady-state value
T1_28=T1s*0.28;
T1_63=T1s*0.63;

% Find the times corresponding to 28% and 63% of the steady-state value
[~, index28]=min(abs(T1d-T1_28));
t28=t(index28);

[~, index63]=min(abs(T1d-T1_63));
t63=t(index63);

% Calculate time constant (tau) and delay (tm)
tau= ;
tm=  ;

% Define the transfer function model
s=tf('s');
sysg1= ;

save model_g1 sysg1
