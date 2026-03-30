%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Use this template to deisgn and implement the FF control on the TClab.
% Models for the plant and for the disturbance are needed (you can 
% use FF_iden_template.m to abotain these models).  
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Close all open figures and clear all variables
clear all
close all

T_sam = ; % Sampling time in seconds

%% Loading identified models
load('model_g1.mat');%Load first transfer function data
load('model_gd.mat');%Load second transfer function data

% Discretization using zoh
sysg1d=c2d(g1,T);
sysgdd = ;

%% Obtaining the expresion of the FF action: Gff(z)=-Gd(z)/G1(z)
Gff = ;


%% Define PI controller parameters
T1r = ;  % Desired temperature in °C
Kp = ;  % Proportional gain
Ki = ;  % Integral gain 
t_end = ; % Experiment end time 
H2d = ;  % disturbance value

%% Loop definition for iterations

% TCLab connection 
tclabULL;   %Execute the setup file for the TClab

% Disturbance appears at sample time k=kdon and 
% and dissapears at sample time kdoff
kdon= ;
kdoff= ;
H2=0;

% main control loop
for k = 1:t_end
    tini_period = tic;
    if k==kdon
        H2=H2d;
    end
    if k==kdoff
        H2=0;
    end
    h2(H2);    
    % Read current temperature
    T1(k) = T1C();
    
    % Calculate error (setpoint - current temperature)
    e = ;
    
    % Calculate control input H1 = Upi + Uff
    
    H1(k)= ;
    
    % Apply control signal (heat) to the system
    h1(H1(k));
   

    % Update variables and plots 
   
   
    % Wait until next sampling interval
    tlapsed_period = toc(tini_period);
    pause(T_sam - tlapsed_period);
end

% Reset the heaters inputs
h1(0);
h2(0);

save FF T1 e H1 H2