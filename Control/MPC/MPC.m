%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This file implements the MPC controller on the real plant. 
% This file make calls to FC.m and simu.m 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Close all open figures and clear all variables
clear all
close all


%% Defining global variables used during optimization
global Hp Hc x0 nfin m Ts t a b c d y yref uant Q R

%% System definition
sys= ;               % Plant Model (T1(s)/H1(s))
Ts= ;                % Sampling time
sysd=c2d(sys,Ts);       % Discretization
[a,b,c,d]=ssdata(sysd); % State space matrices

yref= ;              % Reference signal

nfin= ;              % Simulation end time in numbers of samples

%% Optimization settings
% Cost function parameters
Q= ;                 % Weight on errors
R= ;                 % Weight on inputs
Hp= ;                % prediction horizon 
Hc= ;                % control horizon 

% Optimizer parameters
LB= ;           % Lower bounds
UB= ;           % Upper bounds
NONLCON=[];
OPTIONS=[];

%% Initialization
n=length(a);            % System Order 
m=1;                    % Input dimension 


x0=0*ones(n,1);     % Initial state of the plant at time k
[options]=[];

U0=zeros(m*Hc,1);   % Starting values for the optimization
uant=0*ones(m,1);   % Previous value of input


xk(:,1)=x0;       % for plotting purposes
yk(:,1)=0;


%% Implementation of the "for" loop to evaluate the temporal response of the system

for i=1:nfin
    disp(['Iteration: ',num2str(i),'/', num2str(nfin)])
    % read T1
    T1 = T1C();
    x0=T1;
    % Call to optimizar to get the input sequence 
    U=fmincon(@FC,U0,[],[],[],[],LB,UB,NONLCON,OPTIONS); 
    U1=reshape(U,m,Hc);   
    % Apply input 
    h1(U1(:,1));    
    
    uant=U1(:,1);
    % New initial solution is the previous one shifted one time instant.  
    % We consider U1 from time k+1 and complete a new column with the same values 
    % as the last column.
    U1=[U1(:,2:end) U1(:,end)];
    U0=U1(:);                   % This is the new initial solution
    
    U1k(:,i)=uant;               % for plotting purposses
    xk(:,i+1)=x0;
    T1k(:,i+1)=T1;
       
end

t=0:T_sam:T_sam*(length(uk));
yref=0*t+yref;

U1k(:,i+1)=uant;

% Plot results


