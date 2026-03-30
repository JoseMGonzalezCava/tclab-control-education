%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% The main objective of this script is to process the data recorded during
% the step response to identify a FOPDT on the form
%                             Kp
%                  G = --------------- exp(-tm ·s)
%                        tau · s + 1
% Remark: Note that transfer function starts from 0, but initial
% temperature starts from Tambient.
%
% Name:
% Date:
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all

%% Loading the response measured
load StepResponse

%% Plot the obtained response for the identification of the parameters



%% Definition of the FOPDT system in coninuous time domain
kp = ; % [ºC/%]
tau = ; % [s] 
delay = ; % [s]

sys = tf( , ,'OutputDelay',delay)

%% Compare the real response with the identified system proposed 
[ysim,tsim] = lsim(, , );

% Update the value of ysim to be consistent with the initial temperature.
y = ;

% Plot the measured response vs. the proposed response


%% Save the identified system
save IdentifiedSystem sys

