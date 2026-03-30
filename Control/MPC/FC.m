%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This function will evaluate the cost function associated to each
% solution.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function V = FC(X)
global Hp Hc x0 n m y yref uant Q R
 
 
%% Initialization
% First we fill the vector of inputs until the prediction horizon
% taking into account that the last value of the input will be kept constant until
% we reached the prediction horizon. X contains the estimation of the solution (input).
u=[X;X(end)*ones(Hp-Hc,1)]; 
du=diff([uant; X])';

%% Calculating the part of the  cost from inputs

Vdu=0;  % initialize cost
for i=1:Hc          % u=[u(k|k),u(k+1|k),...u(k+Hc-1|k)]  
                    % and diffu =[[u(k|k), u(k+1|k)-u(k|k),...,u(k+Hc-1|k)-u(k+Hc-2|k)
    Vdu=Vdu+du(:,i)'*R*du(:,i);
end

%%  Calculating the part of the cost from predicted errors
yr=[yref*ones(1,Hp+1)];     % reference signal
Vx=0;                       % initialize cost        
x(:,1)=x0;                  % initial value for the system

for i=1:Hp
    [y(:,i+1),x(:,i+1)]=simu(x(:,i),u(i));
   Vx = Vx+Q*(yr(:,i+1)-y(:,i+1))^2;
end

%% Total cost
V=Vdu+Vx;
