%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% The main objective of this script is to discretize the identified FOPDT
% system.
%
% Name:
% Date:
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all

%% Load the measured response of the system


%% Load the identified system


%% Discretization of the system
% Using a ZoH
Ts = ;
sysd = ;

%% Comparison of the continuous-time domain system vs. discrete-time model
% Plot the continuous-time domain system
[ysim, tsim] = lsim( , ,);  
ysim = ; % Note: ysim starts from 0ºC. Update it to be consistent with measured response.
figure(1)
plot( , );
hold on


% Plot the discrete-time domain system
[ydsim, tdsim] = lsim( , ,);
ydsim = ; % Note: ydsim starts from 0ºC. Update it to be consistent with measured response.
stairs( , );


%% Obtain the discrete temporal expression from G(z)
% Be careful when implementing the delays!
% Temporal expression: y(k) = 

%% Evaluate the temporal response from discrete temporal equations
% Implementation of the "for" loop to compute the temporal evolution
tend = ; % End time of the simulation
y = ; % Initialization of the output as an empty array.


% NOTE: k represents the time instants at which the response is measured (t = k * Ts).
% It ranges from k = 0 (t = 0s) to k = 300 (t = 600s).
% Remember that array index in Matlab starts in 1. 
for k = 0:1:floor(tend/Ts)

    % Evaluate the output of the system at instant k from the discrete temporal equation.
    % Remark: consider the effects of the delay at initial samples!
    
      




end

%% Plot the obtained response and compare it with the previous plots.






%% Analyze the frequency response by means of Bode plot for both continuous
% and discrete models. Answer the questions proposed in the Instructions of this session.  
figure(2)





